{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html

module Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance FromJSON EFSFileSystemElasticFileSystemTag where
  parseJSON (Object obj) =
    EFSFileSystemElasticFileSystemTag <$>
      (obj .: "Key") <*>
      (obj .: "Value")
  parseJSON _ = mempty

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-key
efsfsefstKey :: Lens' EFSFileSystemElasticFileSystemTag (Val Text)
efsfsefstKey = lens _eFSFileSystemElasticFileSystemTagKey (\s a -> s { _eFSFileSystemElasticFileSystemTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html#cfn-efs-filesystem-filesystemtags-value
efsfsefstValue :: Lens' EFSFileSystemElasticFileSystemTag (Val Text)
efsfsefstValue = lens _eFSFileSystemElasticFileSystemTagValue (\s a -> s { _eFSFileSystemElasticFileSystemTagValue = a })
