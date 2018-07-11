{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html

module Stratosphere.Resources.SageMakerModel where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerModelContainerDefinition
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.SageMakerModelVpcConfig

-- | Full data type definition for SageMakerModel. See 'sageMakerModel' for a
-- more convenient constructor.
data SageMakerModel =
  SageMakerModel
  { _sageMakerModelExecutionRoleArn :: Val Text
  , _sageMakerModelModelName :: Maybe (Val Text)
  , _sageMakerModelPrimaryContainer :: SageMakerModelContainerDefinition
  , _sageMakerModelTags :: Maybe [Tag]
  , _sageMakerModelVpcConfig :: Maybe SageMakerModelVpcConfig
  } deriving (Show, Eq)

instance ToJSON SageMakerModel where
  toJSON SageMakerModel{..} =
    object $
    catMaybes
    [ (Just . ("ExecutionRoleArn",) . toJSON) _sageMakerModelExecutionRoleArn
    , fmap (("ModelName",) . toJSON) _sageMakerModelModelName
    , (Just . ("PrimaryContainer",) . toJSON) _sageMakerModelPrimaryContainer
    , fmap (("Tags",) . toJSON) _sageMakerModelTags
    , fmap (("VpcConfig",) . toJSON) _sageMakerModelVpcConfig
    ]

instance FromJSON SageMakerModel where
  parseJSON (Object obj) =
    SageMakerModel <$>
      (obj .: "ExecutionRoleArn") <*>
      (obj .:? "ModelName") <*>
      (obj .: "PrimaryContainer") <*>
      (obj .:? "Tags") <*>
      (obj .:? "VpcConfig")
  parseJSON _ = mempty

-- | Constructor for 'SageMakerModel' containing required fields as arguments.
sageMakerModel
  :: Val Text -- ^ 'smmExecutionRoleArn'
  -> SageMakerModelContainerDefinition -- ^ 'smmPrimaryContainer'
  -> SageMakerModel
sageMakerModel executionRoleArnarg primaryContainerarg =
  SageMakerModel
  { _sageMakerModelExecutionRoleArn = executionRoleArnarg
  , _sageMakerModelModelName = Nothing
  , _sageMakerModelPrimaryContainer = primaryContainerarg
  , _sageMakerModelTags = Nothing
  , _sageMakerModelVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-executionrolearn
smmExecutionRoleArn :: Lens' SageMakerModel (Val Text)
smmExecutionRoleArn = lens _sageMakerModelExecutionRoleArn (\s a -> s { _sageMakerModelExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-modelname
smmModelName :: Lens' SageMakerModel (Maybe (Val Text))
smmModelName = lens _sageMakerModelModelName (\s a -> s { _sageMakerModelModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-primarycontainer
smmPrimaryContainer :: Lens' SageMakerModel SageMakerModelContainerDefinition
smmPrimaryContainer = lens _sageMakerModelPrimaryContainer (\s a -> s { _sageMakerModelPrimaryContainer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-tags
smmTags :: Lens' SageMakerModel (Maybe [Tag])
smmTags = lens _sageMakerModelTags (\s a -> s { _sageMakerModelTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-vpcconfig
smmVpcConfig :: Lens' SageMakerModel (Maybe SageMakerModelVpcConfig)
smmVpcConfig = lens _sageMakerModelVpcConfig (\s a -> s { _sageMakerModelVpcConfig = a })
