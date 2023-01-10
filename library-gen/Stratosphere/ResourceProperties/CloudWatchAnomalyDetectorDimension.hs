
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html

module Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorDimension where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudWatchAnomalyDetectorDimension. See
-- 'cloudWatchAnomalyDetectorDimension' for a more convenient constructor.
data CloudWatchAnomalyDetectorDimension =
  CloudWatchAnomalyDetectorDimension
  { _cloudWatchAnomalyDetectorDimensionName :: Val Text
  , _cloudWatchAnomalyDetectorDimensionValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudWatchAnomalyDetectorDimension where
  toJSON CloudWatchAnomalyDetectorDimension{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _cloudWatchAnomalyDetectorDimensionName
    , (Just . ("Value",) . toJSON) _cloudWatchAnomalyDetectorDimensionValue
    ]

-- | Constructor for 'CloudWatchAnomalyDetectorDimension' containing required
-- fields as arguments.
cloudWatchAnomalyDetectorDimension
  :: Val Text -- ^ 'cwaddName'
  -> Val Text -- ^ 'cwaddValue'
  -> CloudWatchAnomalyDetectorDimension
cloudWatchAnomalyDetectorDimension namearg valuearg =
  CloudWatchAnomalyDetectorDimension
  { _cloudWatchAnomalyDetectorDimensionName = namearg
  , _cloudWatchAnomalyDetectorDimensionValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html#cfn-cloudwatch-anomalydetector-dimension-name
cwaddName :: Lens' CloudWatchAnomalyDetectorDimension (Val Text)
cwaddName = lens _cloudWatchAnomalyDetectorDimensionName (\s a -> s { _cloudWatchAnomalyDetectorDimensionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-dimension.html#cfn-cloudwatch-anomalydetector-dimension-value
cwaddValue :: Lens' CloudWatchAnomalyDetectorDimension (Val Text)
cwaddValue = lens _cloudWatchAnomalyDetectorDimensionValue (\s a -> s { _cloudWatchAnomalyDetectorDimensionValue = a })
