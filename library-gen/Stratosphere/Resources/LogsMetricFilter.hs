{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-logs-metricfilter.html

module Stratosphere.Resources.LogsMetricFilter where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.LogsMetricFilterMetricTransformation

-- | Full data type definition for LogsMetricFilter. See 'logsMetricFilter'
-- | for a more convenient constructor.
data LogsMetricFilter =
  LogsMetricFilter
  { _logsMetricFilterFilterPattern :: Val Text
  , _logsMetricFilterLogGroupName :: Val Text
  , _logsMetricFilterMetricTransformations :: [LogsMetricFilterMetricTransformation]
  } deriving (Show, Eq)

instance ToJSON LogsMetricFilter where
  toJSON LogsMetricFilter{..} =
    object $
    catMaybes
    [ Just ("FilterPattern" .= _logsMetricFilterFilterPattern)
    , Just ("LogGroupName" .= _logsMetricFilterLogGroupName)
    , Just ("MetricTransformations" .= _logsMetricFilterMetricTransformations)
    ]

instance FromJSON LogsMetricFilter where
  parseJSON (Object obj) =
    LogsMetricFilter <$>
      obj .: "FilterPattern" <*>
      obj .: "LogGroupName" <*>
      obj .: "MetricTransformations"
  parseJSON _ = mempty

-- | Constructor for 'LogsMetricFilter' containing required fields as
-- | arguments.
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
