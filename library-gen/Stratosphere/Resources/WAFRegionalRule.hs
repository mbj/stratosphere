{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html

module Stratosphere.Resources.WAFRegionalRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalRulePredicate

-- | Full data type definition for WAFRegionalRule. See 'wafRegionalRule' for
-- a more convenient constructor.
data WAFRegionalRule =
  WAFRegionalRule
  { _wAFRegionalRuleMetricName :: Val Text
  , _wAFRegionalRuleName :: Val Text
  , _wAFRegionalRulePredicates :: Maybe [WAFRegionalRulePredicate]
  } deriving (Show, Eq)

instance ToResourceProperties WAFRegionalRule where
  toResourceProperties WAFRegionalRule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFRegional::Rule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MetricName",) . toJSON) _wAFRegionalRuleMetricName
        , (Just . ("Name",) . toJSON) _wAFRegionalRuleName
        , fmap (("Predicates",) . toJSON) _wAFRegionalRulePredicates
        ]
    }

-- | Constructor for 'WAFRegionalRule' containing required fields as
-- arguments.
wafRegionalRule
  :: Val Text -- ^ 'wafrrMetricName'
  -> Val Text -- ^ 'wafrrName'
  -> WAFRegionalRule
wafRegionalRule metricNamearg namearg =
  WAFRegionalRule
  { _wAFRegionalRuleMetricName = metricNamearg
  , _wAFRegionalRuleName = namearg
  , _wAFRegionalRulePredicates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-metricname
wafrrMetricName :: Lens' WAFRegionalRule (Val Text)
wafrrMetricName = lens _wAFRegionalRuleMetricName (\s a -> s { _wAFRegionalRuleMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-name
wafrrName :: Lens' WAFRegionalRule (Val Text)
wafrrName = lens _wAFRegionalRuleName (\s a -> s { _wAFRegionalRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-rule.html#cfn-wafregional-rule-predicates
wafrrPredicates :: Lens' WAFRegionalRule (Maybe [WAFRegionalRulePredicate])
wafrrPredicates = lens _wAFRegionalRulePredicates (\s a -> s { _wAFRegionalRulePredicates = a })
