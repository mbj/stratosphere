{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html

module Stratosphere.ResourceProperties.LogsMetricFilterMetricTransformation where

import Stratosphere.ResourceImports


-- | Full data type definition for LogsMetricFilterMetricTransformation. See
-- 'logsMetricFilterMetricTransformation' for a more convenient constructor.
data LogsMetricFilterMetricTransformation =
  LogsMetricFilterMetricTransformation
  { _logsMetricFilterMetricTransformationMetricName :: Val Text
  , _logsMetricFilterMetricTransformationMetricNamespace :: Val Text
  , _logsMetricFilterMetricTransformationMetricValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON LogsMetricFilterMetricTransformation where
  toJSON LogsMetricFilterMetricTransformation{..} =
    object $
    catMaybes
    [ (Just . ("MetricName",) . toJSON) _logsMetricFilterMetricTransformationMetricName
    , (Just . ("MetricNamespace",) . toJSON) _logsMetricFilterMetricTransformationMetricNamespace
    , (Just . ("MetricValue",) . toJSON) _logsMetricFilterMetricTransformationMetricValue
    ]

instance FromJSON LogsMetricFilterMetricTransformation where
  parseJSON (Object obj) =
    LogsMetricFilterMetricTransformation <$>
      (obj .: "MetricName") <*>
      (obj .: "MetricNamespace") <*>
      (obj .: "MetricValue")
  parseJSON _ = mempty

-- | Constructor for 'LogsMetricFilterMetricTransformation' containing
-- required fields as arguments.
logsMetricFilterMetricTransformation
  :: Val Text -- ^ 'lmfmtMetricName'
  -> Val Text -- ^ 'lmfmtMetricNamespace'
  -> Val Text -- ^ 'lmfmtMetricValue'
  -> LogsMetricFilterMetricTransformation
logsMetricFilterMetricTransformation metricNamearg metricNamespacearg metricValuearg =
  LogsMetricFilterMetricTransformation
  { _logsMetricFilterMetricTransformationMetricName = metricNamearg
  , _logsMetricFilterMetricTransformationMetricNamespace = metricNamespacearg
  , _logsMetricFilterMetricTransformationMetricValue = metricValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricname
lmfmtMetricName :: Lens' LogsMetricFilterMetricTransformation (Val Text)
lmfmtMetricName = lens _logsMetricFilterMetricTransformationMetricName (\s a -> s { _logsMetricFilterMetricTransformationMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricnamespace
lmfmtMetricNamespace :: Lens' LogsMetricFilterMetricTransformation (Val Text)
lmfmtMetricNamespace = lens _logsMetricFilterMetricTransformationMetricNamespace (\s a -> s { _logsMetricFilterMetricTransformationMetricNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-cwl-metricfilter-metrictransformation-metricvalue
lmfmtMetricValue :: Lens' LogsMetricFilterMetricTransformation (Val Text)
lmfmtMetricValue = lens _logsMetricFilterMetricTransformationMetricValue (\s a -> s { _logsMetricFilterMetricTransformationMetricValue = a })
