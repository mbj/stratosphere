{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-efs-filesystem-filesystemtags.html

module Stratosphere.ResourceProperties.EFSFileSystemElasticFileSystemTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EFSFileSystemElasticFileSystemTag. See
-- | 'efsFileSystemElasticFileSystemTag' for a more convenient constructor.
data EFSFileSystemElasticFileSystemTag =
  EFSFileSystemElasticFileSystemTag
  { _eFSFileSystemElasticFileSystemTagKey :: Val Text
  , _eFSFileSystemElasticFileSystemTagValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EFSFileSystemElasticFileSystemTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON EFSFileSystemElasticFileSystemTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'EFSFileSystemElasticFileSystemTag' containing required
-- | fields as arguments.
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
