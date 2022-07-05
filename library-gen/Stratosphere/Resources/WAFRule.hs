{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html

module Stratosphere.Resources.WAFRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRulePredicate

-- | Full data type definition for WAFRule. See 'wafRule' for a more
-- convenient constructor.
data WAFRule =
  WAFRule
  { _wAFRuleMetricName :: Val Text
  , _wAFRuleName :: Val Text
  , _wAFRulePredicates :: Maybe [WAFRulePredicate]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRule where
  toResourceProperties WAFRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAF::Rule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MetricName",) . toJSON) _wAFRuleMetricName
        , (Just . ("Name",) . toJSON) _wAFRuleName
        , fmap (("Predicates",) . toJSON) _wAFRulePredicates
        ]
    }

-- | Constructor for 'WAFRule' containing required fields as arguments.
wafRule
  :: Val Text -- ^ 'wafrMetricName'
  -> Val Text -- ^ 'wafrName'
  -> WAFRule
wafRule metricNamearg namearg =
  WAFRule
  { _wAFRuleMetricName = metricNamearg
  , _wAFRuleName = namearg
  , _wAFRulePredicates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-metricname
wafrMetricName :: Lens' WAFRule (Val Text)
wafrMetricName = lens _wAFRuleMetricName (\s a -> s { _wAFRuleMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-name
wafrName :: Lens' WAFRule (Val Text)
wafrName = lens _wAFRuleName (\s a -> s { _wAFRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-predicates
wafrPredicates :: Lens' WAFRule (Maybe [WAFRulePredicate])
wafrPredicates = lens _wAFRulePredicates (\s a -> s { _wAFRulePredicates = a })
