{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html

module Stratosphere.Resources.WAFRegionalRateBasedRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalRateBasedRulePredicate

-- | Full data type definition for WAFRegionalRateBasedRule. See
-- 'wafRegionalRateBasedRule' for a more convenient constructor.
data WAFRegionalRateBasedRule =
  WAFRegionalRateBasedRule
  { _wAFRegionalRateBasedRuleMatchPredicates :: Maybe [WAFRegionalRateBasedRulePredicate]
  , _wAFRegionalRateBasedRuleMetricName :: Val Text
  , _wAFRegionalRateBasedRuleName :: Val Text
  , _wAFRegionalRateBasedRuleRateKey :: Val Text
  , _wAFRegionalRateBasedRuleRateLimit :: Val Integer
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalRateBasedRule where
  toResourceProperties WAFRegionalRateBasedRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::RateBasedRule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("MatchPredicates",) . toJSON) _wAFRegionalRateBasedRuleMatchPredicates
        , (Just . ("MetricName",) . toJSON) _wAFRegionalRateBasedRuleMetricName
        , (Just . ("Name",) . toJSON) _wAFRegionalRateBasedRuleName
        , (Just . ("RateKey",) . toJSON) _wAFRegionalRateBasedRuleRateKey
        , (Just . ("RateLimit",) . toJSON) _wAFRegionalRateBasedRuleRateLimit
        ]
    }

-- | Constructor for 'WAFRegionalRateBasedRule' containing required fields as
-- arguments.
wafRegionalRateBasedRule
  :: Val Text -- ^ 'wafrrbrMetricName'
  -> Val Text -- ^ 'wafrrbrName'
  -> Val Text -- ^ 'wafrrbrRateKey'
  -> Val Integer -- ^ 'wafrrbrRateLimit'
  -> WAFRegionalRateBasedRule
wafRegionalRateBasedRule metricNamearg namearg rateKeyarg rateLimitarg =
  WAFRegionalRateBasedRule
  { _wAFRegionalRateBasedRuleMatchPredicates = Nothing
  , _wAFRegionalRateBasedRuleMetricName = metricNamearg
  , _wAFRegionalRateBasedRuleName = namearg
  , _wAFRegionalRateBasedRuleRateKey = rateKeyarg
  , _wAFRegionalRateBasedRuleRateLimit = rateLimitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-matchpredicates
wafrrbrMatchPredicates :: Lens' WAFRegionalRateBasedRule (Maybe [WAFRegionalRateBasedRulePredicate])
wafrrbrMatchPredicates = lens _wAFRegionalRateBasedRuleMatchPredicates (\s a -> s { _wAFRegionalRateBasedRuleMatchPredicates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-metricname
wafrrbrMetricName :: Lens' WAFRegionalRateBasedRule (Val Text)
wafrrbrMetricName = lens _wAFRegionalRateBasedRuleMetricName (\s a -> s { _wAFRegionalRateBasedRuleMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-name
wafrrbrName :: Lens' WAFRegionalRateBasedRule (Val Text)
wafrrbrName = lens _wAFRegionalRateBasedRuleName (\s a -> s { _wAFRegionalRateBasedRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratekey
wafrrbrRateKey :: Lens' WAFRegionalRateBasedRule (Val Text)
wafrrbrRateKey = lens _wAFRegionalRateBasedRuleRateKey (\s a -> s { _wAFRegionalRateBasedRuleRateKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratelimit
wafrrbrRateLimit :: Lens' WAFRegionalRateBasedRule (Val Integer)
wafrrbrRateLimit = lens _wAFRegionalRateBasedRuleRateLimit (\s a -> s { _wAFRegionalRateBasedRuleRateLimit = a })
