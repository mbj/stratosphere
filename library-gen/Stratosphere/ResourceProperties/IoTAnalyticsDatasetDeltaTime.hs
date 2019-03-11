{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetDeltaTime where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetDeltaTime. See
-- 'ioTAnalyticsDatasetDeltaTime' for a more convenient constructor.
data IoTAnalyticsDatasetDeltaTime =
  IoTAnalyticsDatasetDeltaTime
  { _ioTAnalyticsDatasetDeltaTimeOffsetSeconds :: Val Integer
  , _ioTAnalyticsDatasetDeltaTimeTimeExpression :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetDeltaTime where
  toJSON IoTAnalyticsDatasetDeltaTime{..} =
    object $
    catMaybes
    [ (Just . ("OffsetSeconds",) . toJSON . fmap Integer') _ioTAnalyticsDatasetDeltaTimeOffsetSeconds
    , (Just . ("TimeExpression",) . toJSON) _ioTAnalyticsDatasetDeltaTimeTimeExpression
    ]

-- | Constructor for 'IoTAnalyticsDatasetDeltaTime' containing required fields
-- as arguments.
ioTAnalyticsDatasetDeltaTime
  :: Val Integer -- ^ 'itaddtOffsetSeconds'
  -> Val Text -- ^ 'itaddtTimeExpression'
  -> IoTAnalyticsDatasetDeltaTime
ioTAnalyticsDatasetDeltaTime offsetSecondsarg timeExpressionarg =
  IoTAnalyticsDatasetDeltaTime
  { _ioTAnalyticsDatasetDeltaTimeOffsetSeconds = offsetSecondsarg
  , _ioTAnalyticsDatasetDeltaTimeTimeExpression = timeExpressionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-offsetseconds
itaddtOffsetSeconds :: Lens' IoTAnalyticsDatasetDeltaTime (Val Integer)
itaddtOffsetSeconds = lens _ioTAnalyticsDatasetDeltaTimeOffsetSeconds (\s a -> s { _ioTAnalyticsDatasetDeltaTimeOffsetSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-deltatime.html#cfn-iotanalytics-dataset-deltatime-timeexpression
itaddtTimeExpression :: Lens' IoTAnalyticsDatasetDeltaTime (Val Text)
itaddtTimeExpression = lens _ioTAnalyticsDatasetDeltaTimeTimeExpression (\s a -> s { _ioTAnalyticsDatasetDeltaTimeTimeExpression = a })
