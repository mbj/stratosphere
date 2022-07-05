{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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
  { _sageMakerModelContainers :: Maybe [SageMakerModelContainerDefinition]
  , _sageMakerModelEnableNetworkIsolation :: Maybe (Val Bool)
  , _sageMakerModelExecutionRoleArn :: Val Text
  , _sageMakerModelModelName :: Maybe (Val Text)
  , _sageMakerModelPrimaryContainer :: Maybe SageMakerModelContainerDefinition
  , _sageMakerModelTags :: Maybe [Tag]
  , _sageMakerModelVpcConfig :: Maybe SageMakerModelVpcConfig
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerModel where
  toResourceProperties SageMakerModel{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::Model"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Containers",) . toJSON) _sageMakerModelContainers
        , fmap (("EnableNetworkIsolation",) . toJSON) _sageMakerModelEnableNetworkIsolation
        , (Just . ("ExecutionRoleArn",) . toJSON) _sageMakerModelExecutionRoleArn
        , fmap (("ModelName",) . toJSON) _sageMakerModelModelName
        , fmap (("PrimaryContainer",) . toJSON) _sageMakerModelPrimaryContainer
        , fmap (("Tags",) . toJSON) _sageMakerModelTags
        , fmap (("VpcConfig",) . toJSON) _sageMakerModelVpcConfig
        ]
    }

-- | Constructor for 'SageMakerModel' containing required fields as arguments.
sageMakerModel
  :: Val Text -- ^ 'smmExecutionRoleArn'
  -> SageMakerModel
sageMakerModel executionRoleArnarg =
  SageMakerModel
  { _sageMakerModelContainers = Nothing
  , _sageMakerModelEnableNetworkIsolation = Nothing
  , _sageMakerModelExecutionRoleArn = executionRoleArnarg
  , _sageMakerModelModelName = Nothing
  , _sageMakerModelPrimaryContainer = Nothing
  , _sageMakerModelTags = Nothing
  , _sageMakerModelVpcConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-containers
smmContainers :: Lens' SageMakerModel (Maybe [SageMakerModelContainerDefinition])
smmContainers = lens _sageMakerModelContainers (\s a -> s { _sageMakerModelContainers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-enablenetworkisolation
smmEnableNetworkIsolation :: Lens' SageMakerModel (Maybe (Val Bool))
smmEnableNetworkIsolation = lens _sageMakerModelEnableNetworkIsolation (\s a -> s { _sageMakerModelEnableNetworkIsolation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-executionrolearn
smmExecutionRoleArn :: Lens' SageMakerModel (Val Text)
smmExecutionRoleArn = lens _sageMakerModelExecutionRoleArn (\s a -> s { _sageMakerModelExecutionRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-modelname
smmModelName :: Lens' SageMakerModel (Maybe (Val Text))
smmModelName = lens _sageMakerModelModelName (\s a -> s { _sageMakerModelModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-primarycontainer
smmPrimaryContainer :: Lens' SageMakerModel (Maybe SageMakerModelContainerDefinition)
smmPrimaryContainer = lens _sageMakerModelPrimaryContainer (\s a -> s { _sageMakerModelPrimaryContainer = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-tags
smmTags :: Lens' SageMakerModel (Maybe [Tag])
smmTags = lens _sageMakerModelTags (\s a -> s { _sageMakerModelTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-model.html#cfn-sagemaker-model-vpcconfig
smmVpcConfig :: Lens' SageMakerModel (Maybe SageMakerModelVpcConfig)
smmVpcConfig = lens _sageMakerModelVpcConfig (\s a -> s { _sageMakerModelVpcConfig = a })
