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
        self.assertIn(".setRequiredNetworkType(JobInfo.NETWORK_TYPE_ANY)", source)
        self.assertIn("CloudSyncClient.needsPersistentSync(context)", source)
        self.assertIn("ProgressSyncJobService.schedule(context)", client)
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
