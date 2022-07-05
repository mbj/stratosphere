{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html

module Stratosphere.Resources.LogsMetricFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LogsMetricFilterMetricTransformation

-- | Full data type definition for LogsMetricFilter. See 'logsMetricFilter'
-- for a more convenient constructor.
data LogsMetricFilter =
  LogsMetricFilter
  { _logsMetricFilterFilterPattern :: Val Text
  , _logsMetricFilterLogGroupName :: Val Text
  , _logsMetricFilterMetricTransformations :: [LogsMetricFilterMetricTransformation]
  } deriving (Show, Eq)

instance ToResourceProperties LogsMetricFilter where
  toResourceProperties LogsMetricFilter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Logs::MetricFilter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("FilterPattern",) . toJSON) _logsMetricFilterFilterPattern
        , (Just . ("LogGroupName",) . toJSON) _logsMetricFilterLogGroupName
        , (Just . ("MetricTransformations",) . toJSON) _logsMetricFilterMetricTransformations
        ]
    }

-- | Constructor for 'LogsMetricFilter' containing required fields as
-- arguments.
logsMetricFilter
  :: Val Text -- ^ 'lmfFilterPattern'
  -> Val Text -- ^ 'lmfLogGroupName'
  -> [LogsMetricFilterMetricTransformation] -- ^ 'lmfMetricTransformations'
  -> LogsMetricFilter
logsMetricFilter filterPatternarg logGroupNamearg metricTransformationsarg =
  LogsMetricFilter
  { _logsMetricFilterFilterPattern = filterPatternarg
  , _logsMetricFilterLogGroupName = logGroupNamearg
  , _logsMetricFilterMetricTransformations = metricTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-filterpattern
lmfFilterPattern :: Lens' LogsMetricFilter (Val Text)
lmfFilterPattern = lens _logsMetricFilterFilterPattern (\s a -> s { _logsMetricFilterFilterPattern = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-loggroupname
lmfLogGroupName :: Lens' LogsMetricFilter (Val Text)
lmfLogGroupName = lens _logsMetricFilterLogGroupName (\s a -> s { _logsMetricFilterLogGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html#cfn-cwl-metricfilter-metrictransformations
lmfMetricTransformations :: Lens' LogsMetricFilter [LogsMetricFilterMetricTransformation]
lmfMetricTransformations = lens _logsMetricFilterMetricTransformations (\s a -> s { _logsMetricFilterMetricTransformations = a })
