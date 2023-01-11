
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html

module Stratosphere.ResourceProperties.QLDBStreamKinesisConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for QLDBStreamKinesisConfiguration. See
-- 'qldbStreamKinesisConfiguration' for a more convenient constructor.
data QLDBStreamKinesisConfiguration =
  QLDBStreamKinesisConfiguration
  { _qLDBStreamKinesisConfigurationAggregationEnabled :: Maybe (Val Bool)
  , _qLDBStreamKinesisConfigurationStreamArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON QLDBStreamKinesisConfiguration where
  toJSON QLDBStreamKinesisConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AggregationEnabled",) . toJSON) _qLDBStreamKinesisConfigurationAggregationEnabled
    , fmap (("StreamArn",) . toJSON) _qLDBStreamKinesisConfigurationStreamArn
    ]

-- | Constructor for 'QLDBStreamKinesisConfiguration' containing required
-- fields as arguments.
qldbStreamKinesisConfiguration
  :: QLDBStreamKinesisConfiguration
qldbStreamKinesisConfiguration  =
  QLDBStreamKinesisConfiguration
  { _qLDBStreamKinesisConfigurationAggregationEnabled = Nothing
  , _qLDBStreamKinesisConfigurationStreamArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-aggregationenabled
qldbskcAggregationEnabled :: Lens' QLDBStreamKinesisConfiguration (Maybe (Val Bool))
qldbskcAggregationEnabled = lens _qLDBStreamKinesisConfigurationAggregationEnabled (\s a -> s { _qLDBStreamKinesisConfigurationAggregationEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-qldb-stream-kinesisconfiguration.html#cfn-qldb-stream-kinesisconfiguration-streamarn
qldbskcStreamArn :: Lens' QLDBStreamKinesisConfiguration (Maybe (Val Text))
qldbskcStreamArn = lens _qLDBStreamKinesisConfigurationStreamArn (\s a -> s { _qLDBStreamKinesisConfigurationStreamArn = a })
