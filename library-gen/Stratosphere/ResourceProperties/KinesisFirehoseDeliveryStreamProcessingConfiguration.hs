
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessor

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamProcessingConfiguration. See
-- 'kinesisFirehoseDeliveryStreamProcessingConfiguration' for a more
-- convenient constructor.
data KinesisFirehoseDeliveryStreamProcessingConfiguration =
  KinesisFirehoseDeliveryStreamProcessingConfiguration
  { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled :: Maybe (Val Bool)
  , _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors :: Maybe [KinesisFirehoseDeliveryStreamProcessor]
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamProcessingConfiguration where
  toJSON KinesisFirehoseDeliveryStreamProcessingConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled
    , fmap (("Processors",) . toJSON) _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors
    ]

-- | Constructor for 'KinesisFirehoseDeliveryStreamProcessingConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamProcessingConfiguration
  :: KinesisFirehoseDeliveryStreamProcessingConfiguration
kinesisFirehoseDeliveryStreamProcessingConfiguration  =
  KinesisFirehoseDeliveryStreamProcessingConfiguration
  { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled = Nothing
  , _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-enabled
kfdspcEnabled :: Lens' KinesisFirehoseDeliveryStreamProcessingConfiguration (Maybe (Val Bool))
kfdspcEnabled = lens _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled (\s a -> s { _kinesisFirehoseDeliveryStreamProcessingConfigurationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-processingconfiguration.html#cfn-kinesisfirehose-deliverystream-processingconfiguration-processors
kfdspcProcessors :: Lens' KinesisFirehoseDeliveryStreamProcessingConfiguration (Maybe [KinesisFirehoseDeliveryStreamProcessor])
kfdspcProcessors = lens _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors (\s a -> s { _kinesisFirehoseDeliveryStreamProcessingConfigurationProcessors = a })
