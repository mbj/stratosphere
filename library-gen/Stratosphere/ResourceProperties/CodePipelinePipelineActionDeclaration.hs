{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html

module Stratosphere.ResourceProperties.CodePipelinePipelineActionDeclaration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId
import Stratosphere.ResourceProperties.CodePipelinePipelineInputArtifact
import Stratosphere.ResourceProperties.CodePipelinePipelineOutputArtifact

-- | Full data type definition for CodePipelinePipelineActionDeclaration. See
-- | 'codePipelinePipelineActionDeclaration' for a more convenient
-- | constructor.
data CodePipelinePipelineActionDeclaration =
  CodePipelinePipelineActionDeclaration
  { _codePipelinePipelineActionDeclarationActionTypeId :: CodePipelinePipelineActionTypeId
  , _codePipelinePipelineActionDeclarationConfiguration :: Maybe Object
  , _codePipelinePipelineActionDeclarationInputArtifacts :: Maybe [CodePipelinePipelineInputArtifact]
  , _codePipelinePipelineActionDeclarationName :: Val Text
  , _codePipelinePipelineActionDeclarationOutputArtifacts :: Maybe [CodePipelinePipelineOutputArtifact]
  , _codePipelinePipelineActionDeclarationRoleArn :: Maybe (Val Text)
  , _codePipelinePipelineActionDeclarationRunOrder :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON CodePipelinePipelineActionDeclaration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

instance FromJSON CodePipelinePipelineActionDeclaration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 38, omitNothingFields = True }

-- | Constructor for 'CodePipelinePipelineActionDeclaration' containing
-- | required fields as arguments.
codePipelinePipelineActionDeclaration
  :: CodePipelinePipelineActionTypeId -- ^ 'cppadActionTypeId'
  -> Val Text -- ^ 'cppadName'
  -> CodePipelinePipelineActionDeclaration
codePipelinePipelineActionDeclaration actionTypeIdarg namearg =
  CodePipelinePipelineActionDeclaration
  { _codePipelinePipelineActionDeclarationActionTypeId = actionTypeIdarg
  , _codePipelinePipelineActionDeclarationConfiguration = Nothing
  , _codePipelinePipelineActionDeclarationInputArtifacts = Nothing
  , _codePipelinePipelineActionDeclarationName = namearg
  , _codePipelinePipelineActionDeclarationOutputArtifacts = Nothing
  , _codePipelinePipelineActionDeclarationRoleArn = Nothing
  , _codePipelinePipelineActionDeclarationRunOrder = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-actiontypeid
cppadActionTypeId :: Lens' CodePipelinePipelineActionDeclaration CodePipelinePipelineActionTypeId
cppadActionTypeId = lens _codePipelinePipelineActionDeclarationActionTypeId (\s a -> s { _codePipelinePipelineActionDeclarationActionTypeId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-configuration
cppadConfiguration :: Lens' CodePipelinePipelineActionDeclaration (Maybe Object)
cppadConfiguration = lens _codePipelinePipelineActionDeclarationConfiguration (\s a -> s { _codePipelinePipelineActionDeclarationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-inputartifacts
cppadInputArtifacts :: Lens' CodePipelinePipelineActionDeclaration (Maybe [CodePipelinePipelineInputArtifact])
cppadInputArtifacts = lens _codePipelinePipelineActionDeclarationInputArtifacts (\s a -> s { _codePipelinePipelineActionDeclarationInputArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-name
cppadName :: Lens' CodePipelinePipelineActionDeclaration (Val Text)
cppadName = lens _codePipelinePipelineActionDeclarationName (\s a -> s { _codePipelinePipelineActionDeclarationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts
cppadOutputArtifacts :: Lens' CodePipelinePipelineActionDeclaration (Maybe [CodePipelinePipelineOutputArtifact])
cppadOutputArtifacts = lens _codePipelinePipelineActionDeclarationOutputArtifacts (\s a -> s { _codePipelinePipelineActionDeclarationOutputArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-rolearn
cppadRoleArn :: Lens' CodePipelinePipelineActionDeclaration (Maybe (Val Text))
cppadRoleArn = lens _codePipelinePipelineActionDeclarationRoleArn (\s a -> s { _codePipelinePipelineActionDeclarationRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions.html#cfn-codepipeline-pipeline-stages-actions-runorder
cppadRunOrder :: Lens' CodePipelinePipelineActionDeclaration (Maybe (Val Integer'))
cppadRunOrder = lens _codePipelinePipelineActionDeclarationRunOrder (\s a -> s { _codePipelinePipelineActionDeclarationRunOrder = a })
