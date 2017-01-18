{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html

module Stratosphere.ResourceProperties.CodePipelinePipelineStageDeclaration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelinePipelineActionDeclaration
import Stratosphere.ResourceProperties.CodePipelinePipelineBlockerDeclaration

-- | Full data type definition for CodePipelinePipelineStageDeclaration. See
-- | 'codePipelinePipelineStageDeclaration' for a more convenient constructor.
data CodePipelinePipelineStageDeclaration =
  CodePipelinePipelineStageDeclaration
  { _codePipelinePipelineStageDeclarationActions :: [CodePipelinePipelineActionDeclaration]
  , _codePipelinePipelineStageDeclarationBlockers :: Maybe [CodePipelinePipelineBlockerDeclaration]
  , _codePipelinePipelineStageDeclarationName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CodePipelinePipelineStageDeclaration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

instance FromJSON CodePipelinePipelineStageDeclaration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineStageDeclaration' containing
-- | required fields as arguments.
codePipelinePipelineStageDeclaration
  :: [CodePipelinePipelineActionDeclaration] -- ^ 'cppsdActions'
  -> Val Text -- ^ 'cppsdName'
  -> CodePipelinePipelineStageDeclaration
codePipelinePipelineStageDeclaration actionsarg namearg =
  CodePipelinePipelineStageDeclaration
  { _codePipelinePipelineStageDeclarationActions = actionsarg
  , _codePipelinePipelineStageDeclarationBlockers = Nothing
  , _codePipelinePipelineStageDeclarationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-actions
cppsdActions :: Lens' CodePipelinePipelineStageDeclaration [CodePipelinePipelineActionDeclaration]
cppsdActions = lens _codePipelinePipelineStageDeclarationActions (\s a -> s { _codePipelinePipelineStageDeclarationActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-blockers
cppsdBlockers :: Lens' CodePipelinePipelineStageDeclaration (Maybe [CodePipelinePipelineBlockerDeclaration])
cppsdBlockers = lens _codePipelinePipelineStageDeclarationBlockers (\s a -> s { _codePipelinePipelineStageDeclarationBlockers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages.html#cfn-codepipeline-pipeline-stages-name
cppsdName :: Lens' CodePipelinePipelineStageDeclaration (Val Text)
cppsdName = lens _codePipelinePipelineStageDeclarationName (\s a -> s { _codePipelinePipelineStageDeclarationName = a })
