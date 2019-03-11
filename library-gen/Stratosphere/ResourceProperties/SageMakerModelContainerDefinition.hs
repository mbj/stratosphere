{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html

module Stratosphere.ResourceProperties.SageMakerModelContainerDefinition where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerModelContainerDefinition. See
-- 'sageMakerModelContainerDefinition' for a more convenient constructor.
data SageMakerModelContainerDefinition =
  SageMakerModelContainerDefinition
  { _sageMakerModelContainerDefinitionContainerHostname :: Maybe (Val Text)
  , _sageMakerModelContainerDefinitionEnvironment :: Maybe Object
  , _sageMakerModelContainerDefinitionImage :: Val Text
  , _sageMakerModelContainerDefinitionModelDataUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerModelContainerDefinition where
  toJSON SageMakerModelContainerDefinition{..} =
    object $
    catMaybes
    [ fmap (("ContainerHostname",) . toJSON) _sageMakerModelContainerDefinitionContainerHostname
    , fmap (("Environment",) . toJSON) _sageMakerModelContainerDefinitionEnvironment
    , (Just . ("Image",) . toJSON) _sageMakerModelContainerDefinitionImage
    , fmap (("ModelDataUrl",) . toJSON) _sageMakerModelContainerDefinitionModelDataUrl
    ]

-- | Constructor for 'SageMakerModelContainerDefinition' containing required
-- fields as arguments.
sageMakerModelContainerDefinition
  :: Val Text -- ^ 'smmcdImage'
  -> SageMakerModelContainerDefinition
sageMakerModelContainerDefinition imagearg =
  SageMakerModelContainerDefinition
  { _sageMakerModelContainerDefinitionContainerHostname = Nothing
  , _sageMakerModelContainerDefinitionEnvironment = Nothing
  , _sageMakerModelContainerDefinitionImage = imagearg
  , _sageMakerModelContainerDefinitionModelDataUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-containerhostname
smmcdContainerHostname :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdContainerHostname = lens _sageMakerModelContainerDefinitionContainerHostname (\s a -> s { _sageMakerModelContainerDefinitionContainerHostname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-environment
smmcdEnvironment :: Lens' SageMakerModelContainerDefinition (Maybe Object)
smmcdEnvironment = lens _sageMakerModelContainerDefinitionEnvironment (\s a -> s { _sageMakerModelContainerDefinitionEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-image
smmcdImage :: Lens' SageMakerModelContainerDefinition (Val Text)
smmcdImage = lens _sageMakerModelContainerDefinitionImage (\s a -> s { _sageMakerModelContainerDefinitionImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modeldataurl
smmcdModelDataUrl :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdModelDataUrl = lens _sageMakerModelContainerDefinitionModelDataUrl (\s a -> s { _sageMakerModelContainerDefinitionModelDataUrl = a })
