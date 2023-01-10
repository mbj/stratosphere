
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html

module Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorRange where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudWatchAnomalyDetectorRange. See
-- 'cloudWatchAnomalyDetectorRange' for a more convenient constructor.
data CloudWatchAnomalyDetectorRange =
  CloudWatchAnomalyDetectorRange
  { _cloudWatchAnomalyDetectorRangeEndTime :: Val Text
  , _cloudWatchAnomalyDetectorRangeStartTime :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudWatchAnomalyDetectorRange where
  toJSON CloudWatchAnomalyDetectorRange{..} =
    object $
    catMaybes
    [ (Just . ("EndTime",) . toJSON) _cloudWatchAnomalyDetectorRangeEndTime
    , (Just . ("StartTime",) . toJSON) _cloudWatchAnomalyDetectorRangeStartTime
    ]

-- | Constructor for 'CloudWatchAnomalyDetectorRange' containing required
-- fields as arguments.
cloudWatchAnomalyDetectorRange
  :: Val Text -- ^ 'cwadrEndTime'
  -> Val Text -- ^ 'cwadrStartTime'
  -> CloudWatchAnomalyDetectorRange
cloudWatchAnomalyDetectorRange endTimearg startTimearg =
  CloudWatchAnomalyDetectorRange
  { _cloudWatchAnomalyDetectorRangeEndTime = endTimearg
  , _cloudWatchAnomalyDetectorRangeStartTime = startTimearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-endtime
cwadrEndTime :: Lens' CloudWatchAnomalyDetectorRange (Val Text)
cwadrEndTime = lens _cloudWatchAnomalyDetectorRangeEndTime (\s a -> s { _cloudWatchAnomalyDetectorRangeEndTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-range.html#cfn-cloudwatch-anomalydetector-range-starttime
cwadrStartTime :: Lens' CloudWatchAnomalyDetectorRange (Val Text)
cwadrStartTime = lens _cloudWatchAnomalyDetectorRangeStartTime (\s a -> s { _cloudWatchAnomalyDetectorRangeStartTime = a })
