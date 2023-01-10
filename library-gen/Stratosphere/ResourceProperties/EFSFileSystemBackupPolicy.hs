
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-backuppolicy.html

module Stratosphere.ResourceProperties.EFSFileSystemBackupPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for EFSFileSystemBackupPolicy. See
-- 'efsFileSystemBackupPolicy' for a more convenient constructor.
data EFSFileSystemBackupPolicy =
  EFSFileSystemBackupPolicy
  { _eFSFileSystemBackupPolicyStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSFileSystemBackupPolicy where
  toJSON EFSFileSystemBackupPolicy{..} =
    object $
    catMaybes
    [ (Just . ("Status",) . toJSON) _eFSFileSystemBackupPolicyStatus
    ]

-- | Constructor for 'EFSFileSystemBackupPolicy' containing required fields as
-- arguments.
efsFileSystemBackupPolicy
  :: Val Text -- ^ 'efsfsbpStatus'
  -> EFSFileSystemBackupPolicy
efsFileSystemBackupPolicy statusarg =
  EFSFileSystemBackupPolicy
  { _eFSFileSystemBackupPolicyStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-backuppolicy.html#cfn-efs-filesystem-backuppolicy-status
efsfsbpStatus :: Lens' EFSFileSystemBackupPolicy (Val Text)
efsfsbpStatus = lens _eFSFileSystemBackupPolicyStatus (\s a -> s { _eFSFileSystemBackupPolicyStatus = a })
