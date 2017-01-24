{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html

module Stratosphere.ResourceProperties.CodePipelinePipelineEncryptionKey where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodePipelinePipelineEncryptionKey. See
-- | 'codePipelinePipelineEncryptionKey' for a more convenient constructor.
data CodePipelinePipelineEncryptionKey =
  CodePipelinePipelineEncryptionKey
  { _codePipelinePipelineEncryptionKeyId :: Val Text
  , _codePipelinePipelineEncryptionKeyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineEncryptionKey where
  toJSON CodePipelinePipelineEncryptionKey{..} =
    object
    [ "Id" .= _codePipelinePipelineEncryptionKeyId
    , "Type" .= _codePipelinePipelineEncryptionKeyType
    ]

instance FromJSON CodePipelinePipelineEncryptionKey where
  parseJSON (Object obj) =
    CodePipelinePipelineEncryptionKey <$>
      obj .: "Id" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipelineEncryptionKey' containing required
-- | fields as arguments.
codePipelinePipelineEncryptionKey
  :: Val Text -- ^ 'cppekId'
  -> Val Text -- ^ 'cppekType'
  -> CodePipelinePipelineEncryptionKey
codePipelinePipelineEncryptionKey idarg typearg =
  CodePipelinePipelineEncryptionKey
  { _codePipelinePipelineEncryptionKeyId = idarg
  , _codePipelinePipelineEncryptionKeyType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-id
cppekId :: Lens' CodePipelinePipelineEncryptionKey (Val Text)
cppekId = lens _codePipelinePipelineEncryptionKeyId (\s a -> s { _codePipelinePipelineEncryptionKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore-encryptionkey.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey-type
cppekType :: Lens' CodePipelinePipelineEncryptionKey (Val Text)
cppekType = lens _codePipelinePipelineEncryptionKeyType (\s a -> s { _codePipelinePipelineEncryptionKeyType = a })
