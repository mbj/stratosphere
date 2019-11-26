{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupVisibilityConfig. See
-- 'waFv2RuleGroupVisibilityConfig' for a more convenient constructor.
data WAFv2RuleGroupVisibilityConfig =
  WAFv2RuleGroupVisibilityConfig
  { _wAFv2RuleGroupVisibilityConfigCloudWatchMetricsEnabled :: Maybe (Val Bool)
  , _wAFv2RuleGroupVisibilityConfigMetricName :: Maybe (Val Text)
  , _wAFv2RuleGroupVisibilityConfigSampledRequestsEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupVisibilityConfig where
  toJSON WAFv2RuleGroupVisibilityConfig{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchMetricsEnabled",) . toJSON) _wAFv2RuleGroupVisibilityConfigCloudWatchMetricsEnabled
    , fmap (("MetricName",) . toJSON) _wAFv2RuleGroupVisibilityConfigMetricName
    , fmap (("SampledRequestsEnabled",) . toJSON) _wAFv2RuleGroupVisibilityConfigSampledRequestsEnabled
    ]

-- | Constructor for 'WAFv2RuleGroupVisibilityConfig' containing required
-- fields as arguments.
waFv2RuleGroupVisibilityConfig
  :: WAFv2RuleGroupVisibilityConfig
waFv2RuleGroupVisibilityConfig  =
  WAFv2RuleGroupVisibilityConfig
  { _wAFv2RuleGroupVisibilityConfigCloudWatchMetricsEnabled = Nothing
  , _wAFv2RuleGroupVisibilityConfigMetricName = Nothing
  , _wAFv2RuleGroupVisibilityConfigSampledRequestsEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-cloudwatchmetricsenabled
wafrgvcCloudWatchMetricsEnabled :: Lens' WAFv2RuleGroupVisibilityConfig (Maybe (Val Bool))
wafrgvcCloudWatchMetricsEnabled = lens _wAFv2RuleGroupVisibilityConfigCloudWatchMetricsEnabled (\s a -> s { _wAFv2RuleGroupVisibilityConfigCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-metricname
wafrgvcMetricName :: Lens' WAFv2RuleGroupVisibilityConfig (Maybe (Val Text))
wafrgvcMetricName = lens _wAFv2RuleGroupVisibilityConfigMetricName (\s a -> s { _wAFv2RuleGroupVisibilityConfigMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-visibilityconfig.html#cfn-wafv2-rulegroup-visibilityconfig-sampledrequestsenabled
wafrgvcSampledRequestsEnabled :: Lens' WAFv2RuleGroupVisibilityConfig (Maybe (Val Bool))
wafrgvcSampledRequestsEnabled = lens _wAFv2RuleGroupVisibilityConfigSampledRequestsEnabled (\s a -> s { _wAFv2RuleGroupVisibilityConfigSampledRequestsEnabled = a })
