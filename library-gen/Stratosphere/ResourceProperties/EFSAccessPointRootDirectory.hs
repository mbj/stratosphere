
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html

module Stratosphere.ResourceProperties.EFSAccessPointRootDirectory where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EFSAccessPointCreationInfo

-- | Full data type definition for EFSAccessPointRootDirectory. See
-- 'efsAccessPointRootDirectory' for a more convenient constructor.
data EFSAccessPointRootDirectory =
  EFSAccessPointRootDirectory
  { _eFSAccessPointRootDirectoryCreationInfo :: Maybe EFSAccessPointCreationInfo
  , _eFSAccessPointRootDirectoryPath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EFSAccessPointRootDirectory where
  toJSON EFSAccessPointRootDirectory{..} =
    object $
    catMaybes
    [ fmap (("CreationInfo",) . toJSON) _eFSAccessPointRootDirectoryCreationInfo
    , fmap (("Path",) . toJSON) _eFSAccessPointRootDirectoryPath
    ]

-- | Constructor for 'EFSAccessPointRootDirectory' containing required fields
-- as arguments.
efsAccessPointRootDirectory
  :: EFSAccessPointRootDirectory
efsAccessPointRootDirectory  =
  EFSAccessPointRootDirectory
  { _eFSAccessPointRootDirectoryCreationInfo = Nothing
  , _eFSAccessPointRootDirectoryPath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html#cfn-efs-accesspoint-rootdirectory-creationinfo
efsaprdCreationInfo :: Lens' EFSAccessPointRootDirectory (Maybe EFSAccessPointCreationInfo)
efsaprdCreationInfo = lens _eFSAccessPointRootDirectoryCreationInfo (\s a -> s { _eFSAccessPointRootDirectoryCreationInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-accesspoint-rootdirectory.html#cfn-efs-accesspoint-rootdirectory-path
efsaprdPath :: Lens' EFSAccessPointRootDirectory (Maybe (Val Text))
efsaprdPath = lens _eFSAccessPointRootDirectoryPath (\s a -> s { _eFSAccessPointRootDirectoryPath = a })
