{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html

module Stratosphere.ResourceProperties.CodePipelinePipelineActionDeclaration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodePipelinePipelineActionTypeId
import Stratosphere.ResourceProperties.CodePipelinePipelineInputArtifact
import Stratosphere.ResourceProperties.CodePipelinePipelineOutputArtifact

-- | Full data type definition for CodePipelinePipelineActionDeclaration. See
-- 'codePipelinePipelineActionDeclaration' for a more convenient
-- constructor.
data CodePipelinePipelineActionDeclaration =
  CodePipelinePipelineActionDeclaration
  { _codePipelinePipelineActionDeclarationActionTypeId :: CodePipelinePipelineActionTypeId
  , _codePipelinePipelineActionDeclarationConfiguration :: Maybe Object
  , _codePipelinePipelineActionDeclarationInputArtifacts :: Maybe [CodePipelinePipelineInputArtifact]
  , _codePipelinePipelineActionDeclarationName :: Val Text
  , _codePipelinePipelineActionDeclarationOutputArtifacts :: Maybe [CodePipelinePipelineOutputArtifact]
  , _codePipelinePipelineActionDeclarationRoleArn :: Maybe (Val Text)
  , _codePipelinePipelineActionDeclarationRunOrder :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineActionDeclaration where
  toJSON CodePipelinePipelineActionDeclaration{..} =
    object $
    catMaybes
    [ (Just . ("ActionTypeId",) . toJSON) _codePipelinePipelineActionDeclarationActionTypeId
    , fmap (("Configuration",) . toJSON) _codePipelinePipelineActionDeclarationConfiguration
    , fmap (("InputArtifacts",) . toJSON) _codePipelinePipelineActionDeclarationInputArtifacts
    , (Just . ("Name",) . toJSON) _codePipelinePipelineActionDeclarationName
    , fmap (("OutputArtifacts",) . toJSON) _codePipelinePipelineActionDeclarationOutputArtifacts
    , fmap (("RoleArn",) . toJSON) _codePipelinePipelineActionDeclarationRoleArn
    , fmap (("RunOrder",) . toJSON . fmap Integer') _codePipelinePipelineActionDeclarationRunOrder
    ]

instance FromJSON CodePipelinePipelineActionDeclaration where
  parseJSON (Object obj) =
    CodePipelinePipelineActionDeclaration <$>
      (obj .: "ActionTypeId") <*>
      (obj .:? "Configuration") <*>
      (obj .:? "InputArtifacts") <*>
      (obj .: "Name") <*>
      (obj .:? "OutputArtifacts") <*>
      (obj .:? "RoleArn") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "RunOrder")
  parseJSON _ = mempty

-- | Constructor for 'CodePipelinePipelineActionDeclaration' containing
-- required fields as arguments.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-actiontypeid
cppadActionTypeId :: Lens' CodePipelinePipelineActionDeclaration CodePipelinePipelineActionTypeId
cppadActionTypeId = lens _codePipelinePipelineActionDeclarationActionTypeId (\s a -> s { _codePipelinePipelineActionDeclarationActionTypeId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-configuration
cppadConfiguration :: Lens' CodePipelinePipelineActionDeclaration (Maybe Object)
cppadConfiguration = lens _codePipelinePipelineActionDeclarationConfiguration (\s a -> s { _codePipelinePipelineActionDeclarationConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-inputartifacts
cppadInputArtifacts :: Lens' CodePipelinePipelineActionDeclaration (Maybe [CodePipelinePipelineInputArtifact])
cppadInputArtifacts = lens _codePipelinePipelineActionDeclarationInputArtifacts (\s a -> s { _codePipelinePipelineActionDeclarationInputArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-name
cppadName :: Lens' CodePipelinePipelineActionDeclaration (Val Text)
cppadName = lens _codePipelinePipelineActionDeclarationName (\s a -> s { _codePipelinePipelineActionDeclarationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-outputartifacts
cppadOutputArtifacts :: Lens' CodePipelinePipelineActionDeclaration (Maybe [CodePipelinePipelineOutputArtifact])
cppadOutputArtifacts = lens _codePipelinePipelineActionDeclarationOutputArtifacts (\s a -> s { _codePipelinePipelineActionDeclarationOutputArtifacts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-rolearn
cppadRoleArn :: Lens' CodePipelinePipelineActionDeclaration (Maybe (Val Text))
cppadRoleArn = lens _codePipelinePipelineActionDeclarationRoleArn (\s a -> s { _codePipelinePipelineActionDeclarationRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-actiondeclaration.html#cfn-codepipeline-pipeline-actiondeclaration-runorder
cppadRunOrder :: Lens' CodePipelinePipelineActionDeclaration (Maybe (Val Integer))
cppadRunOrder = lens _codePipelinePipelineActionDeclarationRunOrder (\s a -> s { _codePipelinePipelineActionDeclarationRunOrder = a })
