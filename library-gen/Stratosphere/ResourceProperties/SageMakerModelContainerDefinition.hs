
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html

module Stratosphere.ResourceProperties.SageMakerModelContainerDefinition where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerModelContainerDefinition. See
-- 'sageMakerModelContainerDefinition' for a more convenient constructor.
data SageMakerModelContainerDefinition =
  SageMakerModelContainerDefinition
  { _sageMakerModelContainerDefinitionContainerHostname :: Maybe (Val Text)
  , _sageMakerModelContainerDefinitionEnvironment :: Maybe Object
  , _sageMakerModelContainerDefinitionImage :: Maybe (Val Text)
  , _sageMakerModelContainerDefinitionMode :: Maybe (Val Text)
  , _sageMakerModelContainerDefinitionModelDataUrl :: Maybe (Val Text)
  , _sageMakerModelContainerDefinitionModelPackageName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerModelContainerDefinition where
  toJSON SageMakerModelContainerDefinition{..} =
    object $
    catMaybes
    [ fmap (("ContainerHostname",) . toJSON) _sageMakerModelContainerDefinitionContainerHostname
    , fmap (("Environment",) . toJSON) _sageMakerModelContainerDefinitionEnvironment
    , fmap (("Image",) . toJSON) _sageMakerModelContainerDefinitionImage
    , fmap (("Mode",) . toJSON) _sageMakerModelContainerDefinitionMode
    , fmap (("ModelDataUrl",) . toJSON) _sageMakerModelContainerDefinitionModelDataUrl
    , fmap (("ModelPackageName",) . toJSON) _sageMakerModelContainerDefinitionModelPackageName
    ]

-- | Constructor for 'SageMakerModelContainerDefinition' containing required
-- fields as arguments.
sageMakerModelContainerDefinition
  :: SageMakerModelContainerDefinition
sageMakerModelContainerDefinition  =
  SageMakerModelContainerDefinition
  { _sageMakerModelContainerDefinitionContainerHostname = Nothing
  , _sageMakerModelContainerDefinitionEnvironment = Nothing
  , _sageMakerModelContainerDefinitionImage = Nothing
  , _sageMakerModelContainerDefinitionMode = Nothing
  , _sageMakerModelContainerDefinitionModelDataUrl = Nothing
  , _sageMakerModelContainerDefinitionModelPackageName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-containerhostname
smmcdContainerHostname :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdContainerHostname = lens _sageMakerModelContainerDefinitionContainerHostname (\s a -> s { _sageMakerModelContainerDefinitionContainerHostname = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-environment
smmcdEnvironment :: Lens' SageMakerModelContainerDefinition (Maybe Object)
smmcdEnvironment = lens _sageMakerModelContainerDefinitionEnvironment (\s a -> s { _sageMakerModelContainerDefinitionEnvironment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-image
smmcdImage :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdImage = lens _sageMakerModelContainerDefinitionImage (\s a -> s { _sageMakerModelContainerDefinitionImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-mode
smmcdMode :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdMode = lens _sageMakerModelContainerDefinitionMode (\s a -> s { _sageMakerModelContainerDefinitionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modeldataurl
smmcdModelDataUrl :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdModelDataUrl = lens _sageMakerModelContainerDefinitionModelDataUrl (\s a -> s { _sageMakerModelContainerDefinitionModelDataUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-containerdefinition.html#cfn-sagemaker-model-containerdefinition-modelpackagename
smmcdModelPackageName :: Lens' SageMakerModelContainerDefinition (Maybe (Val Text))
smmcdModelPackageName = lens _sageMakerModelContainerDefinitionModelPackageName (\s a -> s { _sageMakerModelContainerDefinitionModelPackageName = a })
