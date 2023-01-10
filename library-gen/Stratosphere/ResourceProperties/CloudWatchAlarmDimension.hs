
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html

module Stratosphere.ResourceProperties.CloudWatchAlarmDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudWatchAlarmDimension. See
-- 'cloudWatchAlarmDimension' for a more convenient constructor.
data CloudWatchAlarmDimension =
  CloudWatchAlarmDimension
  { _cloudWatchAlarmDimensionName :: Val Text
  , _cloudWatchAlarmDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudWatchAlarmDimension where
  toJSON CloudWatchAlarmDimension{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _cloudWatchAlarmDimensionName
    , (Just . ("Value",) . toJSON) _cloudWatchAlarmDimensionValue
    ]

-- | Constructor for 'CloudWatchAlarmDimension' containing required fields as
-- arguments.
cloudWatchAlarmDimension
  :: Val Text -- ^ 'cwadName'
  -> Val Text -- ^ 'cwadValue'
  -> CloudWatchAlarmDimension
cloudWatchAlarmDimension namearg valuearg =
  CloudWatchAlarmDimension
  { _cloudWatchAlarmDimensionName = namearg
  , _cloudWatchAlarmDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-name
cwadName :: Lens' CloudWatchAlarmDimension (Val Text)
cwadName = lens _cloudWatchAlarmDimensionName (\s a -> s { _cloudWatchAlarmDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-dimension.html#cfn-cloudwatch-alarm-dimension-value
cwadValue :: Lens' CloudWatchAlarmDimension (Val Text)
cwadValue = lens _cloudWatchAlarmDimensionValue (\s a -> s { _cloudWatchAlarmDimensionValue = a })
