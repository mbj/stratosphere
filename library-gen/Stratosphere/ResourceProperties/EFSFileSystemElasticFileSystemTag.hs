
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html

module Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag where

import Stratosphere.ResourceImports


-- | Full data type definition for EFSFileSystemElasticFileSystemTag. See
-- 'efsFileSystemElasticFileSystemTag' for a more convenient constructor.
data EFSFileSystemElasticFileSystemTag =
  EFSFileSystemElasticFileSystemTag
  { _eFSFileSystemElasticFileSystemTagKey :: Val Text
  , _eFSFileSystemElasticFileSystemTagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EFSFileSystemElasticFileSystemTag where
  toJSON EFSFileSystemElasticFileSystemTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eFSFileSystemElasticFileSystemTagKey
    , (Just . ("Value",) . toJSON) _eFSFileSystemElasticFileSystemTagValue
    ]

-- | Constructor for 'EFSFileSystemElasticFileSystemTag' containing required
-- fields as arguments.
efsFileSystemElasticFileSystemTag
  :: Val Text -- ^ 'efsfsefstKey'
  -> Val Text -- ^ 'efsfsefstValue'
  -> EFSFileSystemElasticFileSystemTag
efsFileSystemElasticFileSystemTag keyarg valuearg =
  EFSFileSystemElasticFileSystemTag
  { _eFSFileSystemElasticFileSystemTagKey = keyarg
  , _eFSFileSystemElasticFileSystemTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html#cfn-efs-filesystem-elasticfilesystemtag-key
efsfsefstKey :: Lens' EFSFileSystemElasticFileSystemTag (Val Text)
efsfsefstKey = lens _eFSFileSystemElasticFileSystemTagKey (\s a -> s { _eFSFileSystemElasticFileSystemTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-elasticfilesystemtag.html#cfn-efs-filesystem-elasticfilesystemtag-value
efsfsefstValue :: Lens' EFSFileSystemElasticFileSystemTag (Val Text)
efsfsefstValue = lens _eFSFileSystemElasticFileSystemTagValue (\s a -> s { _eFSFileSystemElasticFileSystemTagValue = a })
