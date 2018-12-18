{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html

module Stratosphere.ResourceProperties.SageMakerEndpointConfigProductionVariant where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerEndpointConfigProductionVariant.
-- See 'sageMakerEndpointConfigProductionVariant' for a more convenient
-- constructor.
data SageMakerEndpointConfigProductionVariant =
  SageMakerEndpointConfigProductionVariant
  { _sageMakerEndpointConfigProductionVariantAcceleratorType :: Maybe (Val Text)
  , _sageMakerEndpointConfigProductionVariantInitialInstanceCount :: Val Integer
  , _sageMakerEndpointConfigProductionVariantInitialVariantWeight :: Val Double
  , _sageMakerEndpointConfigProductionVariantInstanceType :: Val Text
  , _sageMakerEndpointConfigProductionVariantModelName :: Val Text
  , _sageMakerEndpointConfigProductionVariantVariantName :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerEndpointConfigProductionVariant where
  toJSON SageMakerEndpointConfigProductionVariant{..} =
    object $
    catMaybes
    [ fmap (("AcceleratorType",) . toJSON) _sageMakerEndpointConfigProductionVariantAcceleratorType
    , (Just . ("InitialInstanceCount",) . toJSON . fmap Integer') _sageMakerEndpointConfigProductionVariantInitialInstanceCount
    , (Just . ("InitialVariantWeight",) . toJSON . fmap Double') _sageMakerEndpointConfigProductionVariantInitialVariantWeight
    , (Just . ("InstanceType",) . toJSON) _sageMakerEndpointConfigProductionVariantInstanceType
    , (Just . ("ModelName",) . toJSON) _sageMakerEndpointConfigProductionVariantModelName
    , (Just . ("VariantName",) . toJSON) _sageMakerEndpointConfigProductionVariantVariantName
    ]

instance FromJSON SageMakerEndpointConfigProductionVariant where
  parseJSON (Object obj) =
    SageMakerEndpointConfigProductionVariant <$>
      (obj .:? "AcceleratorType") <*>
      fmap (fmap unInteger') (obj .: "InitialInstanceCount") <*>
      fmap (fmap unDouble') (obj .: "InitialVariantWeight") <*>
      (obj .: "InstanceType") <*>
      (obj .: "ModelName") <*>
      (obj .: "VariantName")
  parseJSON _ = mempty

-- | Constructor for 'SageMakerEndpointConfigProductionVariant' containing
-- required fields as arguments.
sageMakerEndpointConfigProductionVariant
  :: Val Integer -- ^ 'smecpvInitialInstanceCount'
  -> Val Double -- ^ 'smecpvInitialVariantWeight'
  -> Val Text -- ^ 'smecpvInstanceType'
  -> Val Text -- ^ 'smecpvModelName'
  -> Val Text -- ^ 'smecpvVariantName'
  -> SageMakerEndpointConfigProductionVariant
sageMakerEndpointConfigProductionVariant initialInstanceCountarg initialVariantWeightarg instanceTypearg modelNamearg variantNamearg =
  SageMakerEndpointConfigProductionVariant
  { _sageMakerEndpointConfigProductionVariantAcceleratorType = Nothing
  , _sageMakerEndpointConfigProductionVariantInitialInstanceCount = initialInstanceCountarg
  , _sageMakerEndpointConfigProductionVariantInitialVariantWeight = initialVariantWeightarg
  , _sageMakerEndpointConfigProductionVariantInstanceType = instanceTypearg
  , _sageMakerEndpointConfigProductionVariantModelName = modelNamearg
  , _sageMakerEndpointConfigProductionVariantVariantName = variantNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-acceleratortype
smecpvAcceleratorType :: Lens' SageMakerEndpointConfigProductionVariant (Maybe (Val Text))
smecpvAcceleratorType = lens _sageMakerEndpointConfigProductionVariantAcceleratorType (\s a -> s { _sageMakerEndpointConfigProductionVariantAcceleratorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialinstancecount
smecpvInitialInstanceCount :: Lens' SageMakerEndpointConfigProductionVariant (Val Integer)
smecpvInitialInstanceCount = lens _sageMakerEndpointConfigProductionVariantInitialInstanceCount (\s a -> s { _sageMakerEndpointConfigProductionVariantInitialInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-initialvariantweight
smecpvInitialVariantWeight :: Lens' SageMakerEndpointConfigProductionVariant (Val Double)
smecpvInitialVariantWeight = lens _sageMakerEndpointConfigProductionVariantInitialVariantWeight (\s a -> s { _sageMakerEndpointConfigProductionVariantInitialVariantWeight = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-instancetype
smecpvInstanceType :: Lens' SageMakerEndpointConfigProductionVariant (Val Text)
smecpvInstanceType = lens _sageMakerEndpointConfigProductionVariantInstanceType (\s a -> s { _sageMakerEndpointConfigProductionVariantInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-modelname
smecpvModelName :: Lens' SageMakerEndpointConfigProductionVariant (Val Text)
smecpvModelName = lens _sageMakerEndpointConfigProductionVariantModelName (\s a -> s { _sageMakerEndpointConfigProductionVariantModelName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-productionvariant.html#cfn-sagemaker-endpointconfig-productionvariant-variantname
smecpvVariantName :: Lens' SageMakerEndpointConfigProductionVariant (Val Text)
smecpvVariantName = lens _sageMakerEndpointConfigProductionVariantVariantName (\s a -> s { _sageMakerEndpointConfigProductionVariantVariantName = a })
