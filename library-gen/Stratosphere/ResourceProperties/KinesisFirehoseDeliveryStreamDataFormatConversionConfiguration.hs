
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration where

import Prelude
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
  { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration :: Maybe KinesisFirehoseDeliveryStreamInputFormatConfiguration
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration :: Maybe KinesisFirehoseDeliveryStreamOutputFormatConfiguration
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration :: Maybe KinesisFirehoseDeliveryStreamSchemaConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration where
  toJSON KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled
    , fmap (("InputFormatConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration
    , fmap (("OutputFormatConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration
    , fmap (("SchemaConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
  :: KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
kinesisFirehoseDeliveryStreamDataFormatConversionConfiguration  =
  KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration
  { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled = Nothing
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-enabled
kfdsdfccEnabled :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration (Maybe (Val Bool))
kfdsdfccEnabled = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-inputformatconfiguration
kfdsdfccInputFormatConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration (Maybe KinesisFirehoseDeliveryStreamInputFormatConfiguration)
kfdsdfccInputFormatConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationInputFormatConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-outputformatconfiguration
kfdsdfccOutputFormatConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration (Maybe KinesisFirehoseDeliveryStreamOutputFormatConfiguration)
kfdsdfccOutputFormatConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationOutputFormatConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-dataformatconversionconfiguration.html#cfn-kinesisfirehose-deliverystream-dataformatconversionconfiguration-schemaconfiguration
kfdsdfccSchemaConfiguration :: Lens' KinesisFirehoseDeliveryStreamDataFormatConversionConfiguration (Maybe KinesisFirehoseDeliveryStreamSchemaConfiguration)
kfdsdfccSchemaConfiguration = lens _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamDataFormatConversionConfigurationSchemaConfiguration = a })
