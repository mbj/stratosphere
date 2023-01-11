
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html

module Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2WebACLVisibilityConfig. See
-- 'waFv2WebACLVisibilityConfig' for a more convenient constructor.
data WAFv2WebACLVisibilityConfig =
  WAFv2WebACLVisibilityConfig
  { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled :: Val Bool
  , _wAFv2WebACLVisibilityConfigMetricName :: Val Text
  , _wAFv2WebACLVisibilityConfigSampledRequestsEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLVisibilityConfig where
  toJSON WAFv2WebACLVisibilityConfig{..} =
    object $
    catMaybes
    [ (Just . ("CloudWatchMetricsEnabled",) . toJSON) _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled
    , (Just . ("MetricName",) . toJSON) _wAFv2WebACLVisibilityConfigMetricName
    , (Just . ("SampledRequestsEnabled",) . toJSON) _wAFv2WebACLVisibilityConfigSampledRequestsEnabled
    ]

-- | Constructor for 'WAFv2WebACLVisibilityConfig' containing required fields
-- as arguments.
waFv2WebACLVisibilityConfig
  :: Val Bool -- ^ 'wafwaclvcCloudWatchMetricsEnabled'
  -> Val Text -- ^ 'wafwaclvcMetricName'
  -> Val Bool -- ^ 'wafwaclvcSampledRequestsEnabled'
  -> WAFv2WebACLVisibilityConfig
waFv2WebACLVisibilityConfig cloudWatchMetricsEnabledarg metricNamearg sampledRequestsEnabledarg =
  WAFv2WebACLVisibilityConfig
  { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled = cloudWatchMetricsEnabledarg
  , _wAFv2WebACLVisibilityConfigMetricName = metricNamearg
  , _wAFv2WebACLVisibilityConfigSampledRequestsEnabled = sampledRequestsEnabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-cloudwatchmetricsenabled
wafwaclvcCloudWatchMetricsEnabled :: Lens' WAFv2WebACLVisibilityConfig (Val Bool)
wafwaclvcCloudWatchMetricsEnabled = lens _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled (\s a -> s { _wAFv2WebACLVisibilityConfigCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-metricname
wafwaclvcMetricName :: Lens' WAFv2WebACLVisibilityConfig (Val Text)
wafwaclvcMetricName = lens _wAFv2WebACLVisibilityConfigMetricName (\s a -> s { _wAFv2WebACLVisibilityConfigMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-visibilityconfig.html#cfn-wafv2-webacl-visibilityconfig-sampledrequestsenabled
wafwaclvcSampledRequestsEnabled :: Lens' WAFv2WebACLVisibilityConfig (Val Bool)
wafwaclvcSampledRequestsEnabled = lens _wAFv2WebACLVisibilityConfigSampledRequestsEnabled (\s a -> s { _wAFv2WebACLVisibilityConfigSampledRequestsEnabled = a })
