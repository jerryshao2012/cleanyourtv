import re
import sqlite3
import unittest
from pathlib import Path


class PlaybackWriteOrderTest(unittest.TestCase):
    def test_queued_older_playback_cannot_replace_newer_remote(self):
        smali = (Path(__file__).resolve().parents[1] / 'smali/androidx/work/impl/model/b.smali').read_text()
        sql = re.search(r'const-string v0, "(INSERT OR REPLACE INTO `records`[^\"]+)"', smali).group(1)
        db = sqlite3.connect(':memory:')
        db.execute('CREATE TABLE records (id TEXT PRIMARY KEY, name TEXT, episode TEXT, progressInMillis INTEGER, durationInMillis INTEGER, createdAt INTEGER, modifiedAt INTEGER, videoPageUrl TEXT, detailPageUrl TEXT, posterUrl TEXT)')
        row = ('id', 'show', '28', 2000, 10000, 1, 200, '', 'detail', '')
        db.execute(sql, row)
        db.execute(sql, ('id', 'show', '47', 1000, 10000, 1, 100, '', 'detail', ''))
        self.assertEqual(db.execute('SELECT episode, modifiedAt FROM records').fetchone(), ('28', 200))
        db.execute(sql, ('other-id', 'show', '47', 1000, 10000, 1, 100, '', 'detail', ''))
        self.assertEqual(db.execute('SELECT count(*) FROM records').fetchone(), (1,))
        db.execute(sql, ('id', 'show', '47', 1000, 10000, 1, 300, '', 'detail', ''))
        self.assertEqual(db.execute('SELECT episode, modifiedAt FROM records').fetchone(), ('47', 300))


if __name__ == '__main__':
    unittest.main()
