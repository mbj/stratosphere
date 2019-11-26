{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html

module Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLVisibilityConfig. See
-- 'waFv2WebACLVisibilityConfig' for a more convenient constructor.
data WAFv2WebACLVisibilityConfig =
  WAFv2WebACLVisibilityConfig
  { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled :: Maybe (Val Bool)
  , _wAFv2WebACLVisibilityConfigMetricName :: Maybe (Val Text)
  , _wAFv2WebACLVisibilityConfigSampledRequestsEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLVisibilityConfig where
  toJSON WAFv2WebACLVisibilityConfig{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchMetricsEnabled",) . toJSON) _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled
    , fmap (("MetricName",) . toJSON) _wAFv2WebACLVisibilityConfigMetricName
    , fmap (("SampledRequestsEnabled",) . toJSON) _wAFv2WebACLVisibilityConfigSampledRequestsEnabled
    ]

-- | Constructor for 'WAFv2WebACLVisibilityConfig' containing required fields
-- as arguments.
waFv2WebACLVisibilityConfig
  :: WAFv2WebACLVisibilityConfig
waFv2WebACLVisibilityConfig  =
  WAFv2WebACLVisibilityConfig
  { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled = Nothing
  , _wAFv2WebACLVisibilityConfigMetricName = Nothing
  , _wAFv2WebACLVisibilityConfigSampledRequestsEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-cloudwatchmetricsenabled
wafwaclvcCloudWatchMetricsEnabled :: Lens' WAFv2WebACLVisibilityConfig (Maybe (Val Bool))
wafwaclvcCloudWatchMetricsEnabled = lens _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled (\s a -> s { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-metricname
wafwaclvcMetricName :: Lens' WAFv2WebACLVisibilityConfig (Maybe (Val Text))
wafwaclvcMetricName = lens _wAFv2WebACLVisibilityConfigMetricName (\s a -> s { _wAFv2WebACLVisibilityConfigMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-sampledrequestsenabled
wafwaclvcSampledRequestsEnabled :: Lens' WAFv2WebACLVisibilityConfig (Maybe (Val Bool))
wafwaclvcSampledRequestsEnabled = lens _wAFv2WebACLVisibilityConfigSampledRequestsEnabled (\s a -> s { _wAFv2WebACLVisibilityConfigSampledRequestsEnabled = a })
