{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupRateBasedStatementTwo. See
-- 'waFv2RuleGroupRateBasedStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupRateBasedStatementTwo =
  WAFv2RuleGroupRateBasedStatementTwo
  { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType :: Maybe (Val Text)
  , _wAFv2RuleGroupRateBasedStatementTwoLimit :: Maybe (Val Integer)
  , _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement :: Maybe WAFv2RuleGroupStatementThree
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRateBasedStatementTwo where
  toJSON WAFv2RuleGroupRateBasedStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("AggregateKeyType",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType
    , fmap (("Limit",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement
    ]

-- | Constructor for 'WAFv2RuleGroupRateBasedStatementTwo' containing required
-- fields as arguments.
waFv2RuleGroupRateBasedStatementTwo
  :: WAFv2RuleGroupRateBasedStatementTwo
waFv2RuleGroupRateBasedStatementTwo  =
  WAFv2RuleGroupRateBasedStatementTwo
  { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType = Nothing
  , _wAFv2RuleGroupRateBasedStatementTwoLimit = Nothing
  , _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-aggregatekeytype
wafrgrbstAggregateKeyType :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Maybe (Val Text))
wafrgrbstAggregateKeyType = lens _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-limit
wafrgrbstLimit :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Maybe (Val Integer))
wafrgrbstLimit = lens _wAFv2RuleGroupRateBasedStatementTwoLimit (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-scopedownstatement
wafrgrbstScopeDownStatement :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Maybe WAFv2RuleGroupStatementThree)
wafrgrbstScopeDownStatement = lens _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement = a })
