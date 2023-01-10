
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html

module Stratosphere.ResourceProperties.SageMakerEndpointVariantProperty where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerEndpointVariantProperty. See
-- 'sageMakerEndpointVariantProperty' for a more convenient constructor.
data SageMakerEndpointVariantProperty =
  SageMakerEndpointVariantProperty
  { _sageMakerEndpointVariantPropertyVariantPropertyType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointVariantProperty where
  toJSON SageMakerEndpointVariantProperty{..} =
    object $
    catMaybes
    [ fmap (("VariantPropertyType",) . toJSON) _sageMakerEndpointVariantPropertyVariantPropertyType
    ]

-- | Constructor for 'SageMakerEndpointVariantProperty' containing required
-- fields as arguments.
sageMakerEndpointVariantProperty
  :: SageMakerEndpointVariantProperty
sageMakerEndpointVariantProperty  =
  SageMakerEndpointVariantProperty
  { _sageMakerEndpointVariantPropertyVariantPropertyType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-variantproperty.html#cfn-sagemaker-endpoint-variantproperty-variantpropertytype
smevpVariantPropertyType :: Lens' SageMakerEndpointVariantProperty (Maybe (Val Text))
smevpVariantPropertyType = lens _sageMakerEndpointVariantPropertyVariantPropertyType (\s a -> s { _sageMakerEndpointVariantPropertyVariantPropertyType = a })
