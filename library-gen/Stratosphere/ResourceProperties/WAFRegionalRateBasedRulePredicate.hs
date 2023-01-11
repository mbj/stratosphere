
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html

module Stratosphere.ResourceProperties.WAFRegionalRateBasedRulePredicate where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalRateBasedRulePredicate. See
-- 'wafRegionalRateBasedRulePredicate' for a more convenient constructor.
data WAFRegionalRateBasedRulePredicate =
  WAFRegionalRateBasedRulePredicate
  { _wAFRegionalRateBasedRulePredicateDataId :: Val Text
  , _wAFRegionalRateBasedRulePredicateNegated :: Val Bool
  , _wAFRegionalRateBasedRulePredicateType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalRateBasedRulePredicate where
  toJSON WAFRegionalRateBasedRulePredicate{..} =
    object $
    catMaybes
    [ (Just . ("DataId",) . toJSON) _wAFRegionalRateBasedRulePredicateDataId
    , (Just . ("Negated",) . toJSON) _wAFRegionalRateBasedRulePredicateNegated
    , (Just . ("Type",) . toJSON) _wAFRegionalRateBasedRulePredicateType
    ]

-- | Constructor for 'WAFRegionalRateBasedRulePredicate' containing required
-- fields as arguments.
wafRegionalRateBasedRulePredicate
  :: Val Text -- ^ 'wafrrbrpDataId'
  -> Val Bool -- ^ 'wafrrbrpNegated'
  -> Val Text -- ^ 'wafrrbrpType'
  -> WAFRegionalRateBasedRulePredicate
wafRegionalRateBasedRulePredicate dataIdarg negatedarg typearg =
  WAFRegionalRateBasedRulePredicate
  { _wAFRegionalRateBasedRulePredicateDataId = dataIdarg
  , _wAFRegionalRateBasedRulePredicateNegated = negatedarg
  , _wAFRegionalRateBasedRulePredicateType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-dataid
wafrrbrpDataId :: Lens' WAFRegionalRateBasedRulePredicate (Val Text)
wafrrbrpDataId = lens _wAFRegionalRateBasedRulePredicateDataId (\s a -> s { _wAFRegionalRateBasedRulePredicateDataId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-negated
wafrrbrpNegated :: Lens' WAFRegionalRateBasedRulePredicate (Val Bool)
wafrrbrpNegated = lens _wAFRegionalRateBasedRulePredicateNegated (\s a -> s { _wAFRegionalRateBasedRulePredicateNegated = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ratebasedrule-predicate.html#cfn-wafregional-ratebasedrule-predicate-type
wafrrbrpType :: Lens' WAFRegionalRateBasedRulePredicate (Val Text)
wafrrbrpType = lens _wAFRegionalRateBasedRulePredicateType (\s a -> s { _wAFRegionalRateBasedRulePredicateType = a })
