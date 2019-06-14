{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamInputFormatConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamOutputFormatConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamSchemaConfiguration

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration. See
-- 'kinesisFirehoseDeliveryStreamDataFormatConversionConfiguration' for a
-- more convenient constructor.
data KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration =
  KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
  { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled :: Val Bool
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration :: KinesisFirehoseDeliveryStreamInputFormatConfiguration
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration :: KinesisFirehoseDeliveryStreamOutputFormatConfiguration
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration :: KinesisFirehoseDeliveryStreamSchemaConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration where
  toJSON KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled
    , (Just . ("InputFormatConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration
    , (Just . ("OutputFormatConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration
    , (Just . ("SchemaConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
  :: Val Bool -- ^ 'kfdsdfccEnabled'
  -> KinesisFirehoseDeliveryStreamInputFormatConfiguration -- ^ 'kfdsdfccInputFormatConfiguration'
  -> KinesisFirehoseDeliveryStreamOutputFormatConfiguration -- ^ 'kfdsdfccOutputFormatConfiguration'
  -> KinesisFirehoseDeliveryStreamSchemaConfiguration -- ^ 'kfdsdfccSchemaConfiguration'
  -> KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
kinesisFirehoseDeliveryStreamDataFormatConversionConfiguration enabledarg inputFormatConfigurationarg outputFormatConfigurationarg schemaConfigurationarg =
  KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
  { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled = enabledarg
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration = inputFormatConfigurationarg
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration = outputFormatConfigurationarg
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration = schemaConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-enabled
kfdsdfccEnabled :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration (Val Bool)
kfdsdfccEnabled = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-inputformatconfiguration
kfdsdfccInputFormatConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration KinesisFirehoseDeliveryStreamInputFormatConfiguration
kfdsdfccInputFormatConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-outputformatconfiguration
kfdsdfccOutputFormatConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration KinesisFirehoseDeliveryStreamOutputFormatConfiguration
kfdsdfccOutputFormatConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-schemaconfiguration
kfdsdfccSchemaConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration KinesisFirehoseDeliveryStreamSchemaConfiguration
kfdsdfccSchemaConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration = a })
