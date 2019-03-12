{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html

module Stratosphere.ResourceProperties.CloudWatchAlarmMetricStat where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAlarmMetric

-- | Full data type definition for CloudWatchAlarmMetricStat. See
-- 'cloudWatchAlarmMetricStat' for a more convenient constructor.
data CloudWatchAlarmMetricStat =
  CloudWatchAlarmMetricStat
  { _cloudWatchAlarmMetricStatMetric :: CloudWatchAlarmMetric
  , _cloudWatchAlarmMetricStatPeriod :: Val Integer
  , _cloudWatchAlarmMetricStatStat :: Val Text
  , _cloudWatchAlarmMetricStatUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudWatchAlarmMetricStat where
  toJSON CloudWatchAlarmMetricStat{..} =
    object $
    catMaybes
    [ (Just . ("Metric",) . toJSON) _cloudWatchAlarmMetricStatMetric
    , (Just . ("Period",) . toJSON . fmap Integer') _cloudWatchAlarmMetricStatPeriod
    , (Just . ("Stat",) . toJSON) _cloudWatchAlarmMetricStatStat
    , fmap (("Unit",) . toJSON) _cloudWatchAlarmMetricStatUnit
    ]

-- | Constructor for 'CloudWatchAlarmMetricStat' containing required fields as
-- arguments.
cloudWatchAlarmMetricStat
  :: CloudWatchAlarmMetric -- ^ 'cwamsMetric'
  -> Val Integer -- ^ 'cwamsPeriod'
  -> Val Text -- ^ 'cwamsStat'
  -> CloudWatchAlarmMetricStat
cloudWatchAlarmMetricStat metricarg periodarg statarg =
  CloudWatchAlarmMetricStat
  { _cloudWatchAlarmMetricStatMetric = metricarg
  , _cloudWatchAlarmMetricStatPeriod = periodarg
  , _cloudWatchAlarmMetricStatStat = statarg
  , _cloudWatchAlarmMetricStatUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-metric
cwamsMetric :: Lens' CloudWatchAlarmMetricStat CloudWatchAlarmMetric
cwamsMetric = lens _cloudWatchAlarmMetricStatMetric (\s a -> s { _cloudWatchAlarmMetricStatMetric = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-period
cwamsPeriod :: Lens' CloudWatchAlarmMetricStat (Val Integer)
cwamsPeriod = lens _cloudWatchAlarmMetricStatPeriod (\s a -> s { _cloudWatchAlarmMetricStatPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-stat
cwamsStat :: Lens' CloudWatchAlarmMetricStat (Val Text)
cwamsStat = lens _cloudWatchAlarmMetricStatStat (\s a -> s { _cloudWatchAlarmMetricStatStat = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metricstat.html#cfn-cloudwatch-alarm-metricstat-unit
cwamsUnit :: Lens' CloudWatchAlarmMetricStat (Maybe (Val Text))
cwamsUnit = lens _cloudWatchAlarmMetricStatUnit (\s a -> s { _cloudWatchAlarmMetricStatUnit = a })
