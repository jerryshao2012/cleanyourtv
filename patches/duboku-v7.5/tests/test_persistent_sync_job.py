from pathlib import Path
import unittest

PATCH = Path(__file__).resolve().parents[1]


class PersistentSyncJobTest(unittest.TestCase):
    def test_job_is_persisted_network_constrained_and_dirty_gated(self):
        source = (PATCH / "ProgressSyncJobService.java").read_text()
        client = (PATCH / "CloudSyncClient.java").read_text()
        manifest = (PATCH / "AndroidManifest.xml").read_text()
        save = (PATCH / "smali_classes3/com/supertws/dubokutv/presentation/screens/videoPlayer/VideoPlayerScreenViewModel$saveRecord$2.smali").read_text()
        self.assertIn(".setPersisted(true)", source)
        self.assertIn('Log.i("R2Sync", "Persistent sync job started");', source)
        self.assertIn('Log.i("R2Sync", "Persistent sync job stopped");', source)
        self.assertIn(".setMinimumLatency(30_000L)", source)
        smali = (PATCH / "smali_classes3/com/supertws/dubokutv/ProgressSyncJobService.smali").read_text()
        self.assertIn("JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;", smali)
        self.assertIn('const-string v1, "Persistent sync job started"', smali)
        self.assertIn('const-string v1, "Persistent sync job stopped"', smali)
        schedule_method = smali.split(".method static schedule(Landroid/content/Context;)V", 1)[1].split(".end method", 1)[0]
        self.assertLess(schedule_method.index("->running:Z"), schedule_method.index('const-string v0, "R2Sync"'))
        self.assertIn("move-object v4, p1", smali)
        self.assertIn("invoke-static {v4}, Lcom/supertws/dubokutv/ProgressSyncJobService;->schedule", smali)
        self.assertIn("const-wide/16 v3, 0x7530", smali)
        self.assertIn(".setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY)", source)
        self.assertIn("CloudSyncClient.needsPersistentSync(context)", source)
        self.assertIn("reschedule = true;", source)
        self.assertIn("if (reschedule || retry)", source)
        self.assertIn("schedule(context);", source)
        self.assertIn("private static volatile boolean running;", source)
        self.assertIn("private static volatile boolean reschedule;", source)
        self.assertIn("if (running)", source)
        self.assertIn("running = true;", source)
        self.assertIn("running = false;", source)
        self.assertIn("jobFinished(params, false);", source)
        self.assertIn("ProgressSyncJobService.schedule(context)", client)
        dirty_source = client.split("public static void markCloudDirty(Context context)", 1)[1].split("public static void onNetworkAvailable(Context context)", 1)[0]
        self.assertIn("ProgressSyncJobService.schedule(context)", dirty_source)
        cloud_smali = (PATCH / "smali_classes4/com/supertws/dubokutv/CloudSyncClient.smali").read_text()
        dirty_method = cloud_smali.split(".method public static markCloudDirty(Landroid/content/Context;)V", 1)[1].split(".end method", 1)[0]
        self.assertIn("ProgressSyncJobService;->schedule(Landroid/content/Context;)V", dirty_method)
        save_method = cloud_smali.split(".method public static onCommittedSave(Z)V", 1)[1].split(".end method", 1)[0]
        self.assertIn("ProgressSyncJobService;->schedule(Landroid/content/Context;)V", save_method)
        self.assertIn(".method public static needsPersistentSync(Landroid/content/Context;)Z", cloud_smali)
        self.assertIn('getBoolean("cloudDirty", false)', client)
        self.assertIn('getBoolean("cloudAuthRejected", false)', client)
        self.assertIn("android.permission.RECEIVE_BOOT_COMPLETED", manifest)
        self.assertIn("com.supertws.dubokutv.ProgressSyncJobService", manifest)
        lan = (PATCH / "smali_classes3/com/supertws/dubokutv/LanSyncManager.smali").read_text()
        self.assertIn("kotlinx/coroutines/flow/j;->b(Ljava/lang/Object;)Lkotlinx/coroutines/flow/r2;", lan)
        self.assertLess(save.index("CloudSyncClient;->markCloudDirty"), save.index("androidx/room/util/a;->m"))
        self.assertLess(save.index("LanSyncManager;->onPlaybackSaveCommitted"), save.index("data/local/b;->c"))


if __name__ == "__main__":
    unittest.main()
