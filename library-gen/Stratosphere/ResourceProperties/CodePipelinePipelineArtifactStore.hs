{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html

module Stratosphere.ResourceProperties.CodePipelinePipelineArtifactStore where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelinePipelineEncryptionKey

-- | Full data type definition for CodePipelinePipelineArtifactStore. See
-- | 'codePipelinePipelineArtifactStore' for a more convenient constructor.
data CodePipelinePipelineArtifactStore =
  CodePipelinePipelineArtifactStore
  { _codePipelinePipelineArtifactStoreEncryptionKey :: Maybe CodePipelinePipelineEncryptionKey
  , _codePipelinePipelineArtifactStoreLocation :: Val Text
  , _codePipelinePipelineArtifactStoreType :: Val Text
  } deriving (Show, Generic)

instance ToJSON CodePipelinePipelineArtifactStore where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON CodePipelinePipelineArtifactStore where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineArtifactStore' containing required
-- | fields as arguments.
codePipelinePipelineArtifactStore
  :: Val Text -- ^ 'cppasLocation'
  -> Val Text -- ^ 'cppasType'
  -> CodePipelinePipelineArtifactStore
codePipelinePipelineArtifactStore locationarg typearg =
  CodePipelinePipelineArtifactStore
  { _codePipelinePipelineArtifactStoreEncryptionKey = Nothing
  , _codePipelinePipelineArtifactStoreLocation = locationarg
  , _codePipelinePipelineArtifactStoreType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-encryptionkey
cppasEncryptionKey :: Lens' CodePipelinePipelineArtifactStore (Maybe CodePipelinePipelineEncryptionKey)
cppasEncryptionKey = lens _codePipelinePipelineArtifactStoreEncryptionKey (\s a -> s { _codePipelinePipelineArtifactStoreEncryptionKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-location
cppasLocation :: Lens' CodePipelinePipelineArtifactStore (Val Text)
cppasLocation = lens _codePipelinePipelineArtifactStoreLocation (\s a -> s { _codePipelinePipelineArtifactStoreLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-artifactstore.html#cfn-codepipeline-pipeline-artifactstore-type
cppasType :: Lens' CodePipelinePipelineArtifactStore (Val Text)
cppasType = lens _codePipelinePipelineArtifactStoreType (\s a -> s { _codePipelinePipelineArtifactStoreType = a })
