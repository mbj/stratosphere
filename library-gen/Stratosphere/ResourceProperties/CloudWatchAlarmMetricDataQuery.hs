{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html

module Stratosphere.ResourceProperties.CloudWatchAlarmMetricDataQuery where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAlarmMetricStat

-- | Full data type definition for CloudWatchAlarmMetricDataQuery. See
-- 'cloudWatchAlarmMetricDataQuery' for a more convenient constructor.
data CloudWatchAlarmMetricDataQuery =
  CloudWatchAlarmMetricDataQuery
  { _cloudWatchAlarmMetricDataQueryExpression :: Maybe (Val Text)
  , _cloudWatchAlarmMetricDataQueryId :: Val Text
  , _cloudWatchAlarmMetricDataQueryLabel :: Maybe (Val Text)
  , _cloudWatchAlarmMetricDataQueryMetricStat :: Maybe CloudWatchAlarmMetricStat
  , _cloudWatchAlarmMetricDataQueryReturnData :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CloudWatchAlarmMetricDataQuery where
  toJSON CloudWatchAlarmMetricDataQuery{..} =
    object $
    catMaybes
    [ fmap (("Expression",) . toJSON) _cloudWatchAlarmMetricDataQueryExpression
    , (Just . ("Id",) . toJSON) _cloudWatchAlarmMetricDataQueryId
    , fmap (("Label",) . toJSON) _cloudWatchAlarmMetricDataQueryLabel
    , fmap (("MetricStat",) . toJSON) _cloudWatchAlarmMetricDataQueryMetricStat
    , fmap (("ReturnData",) . toJSON) _cloudWatchAlarmMetricDataQueryReturnData
    ]

-- | Constructor for 'CloudWatchAlarmMetricDataQuery' containing required
-- fields as arguments.
cloudWatchAlarmMetricDataQuery
  :: Val Text -- ^ 'cwamdqId'
  -> CloudWatchAlarmMetricDataQuery
cloudWatchAlarmMetricDataQuery idarg =
  CloudWatchAlarmMetricDataQuery
  { _cloudWatchAlarmMetricDataQueryExpression = Nothing
  , _cloudWatchAlarmMetricDataQueryId = idarg
  , _cloudWatchAlarmMetricDataQueryLabel = Nothing
  , _cloudWatchAlarmMetricDataQueryMetricStat = Nothing
  , _cloudWatchAlarmMetricDataQueryReturnData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-expression
cwamdqExpression :: Lens' CloudWatchAlarmMetricDataQuery (Maybe (Val Text))
cwamdqExpression = lens _cloudWatchAlarmMetricDataQueryExpression (\s a -> s { _cloudWatchAlarmMetricDataQueryExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-id
cwamdqId :: Lens' CloudWatchAlarmMetricDataQuery (Val Text)
cwamdqId = lens _cloudWatchAlarmMetricDataQueryId (\s a -> s { _cloudWatchAlarmMetricDataQueryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-label
cwamdqLabel :: Lens' CloudWatchAlarmMetricDataQuery (Maybe (Val Text))
cwamdqLabel = lens _cloudWatchAlarmMetricDataQueryLabel (\s a -> s { _cloudWatchAlarmMetricDataQueryLabel = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-metricstat
cwamdqMetricStat :: Lens' CloudWatchAlarmMetricDataQuery (Maybe CloudWatchAlarmMetricStat)
cwamdqMetricStat = lens _cloudWatchAlarmMetricDataQueryMetricStat (\s a -> s { _cloudWatchAlarmMetricDataQueryMetricStat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricdataquery.html#cfn-cloudwatch-alarm-metricdataquery-returndata
cwamdqReturnData :: Lens' CloudWatchAlarmMetricDataQuery (Maybe (Val Bool))
cwamdqReturnData = lens _cloudWatchAlarmMetricDataQueryReturnData (\s a -> s { _cloudWatchAlarmMetricDataQueryReturnData = a })
