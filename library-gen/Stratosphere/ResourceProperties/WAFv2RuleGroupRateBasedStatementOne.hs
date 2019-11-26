{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo

-- | Full data type definition for WAFv2RuleGroupRateBasedStatementOne. See
-- 'waFv2RuleGroupRateBasedStatementOne' for a more convenient constructor.
data WAFv2RuleGroupRateBasedStatementOne =
  WAFv2RuleGroupRateBasedStatementOne
  { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType :: Maybe (Val Text)
  , _wAFv2RuleGroupRateBasedStatementOneLimit :: Maybe (Val Integer)
  , _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement :: Maybe WAFv2RuleGroupStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRateBasedStatementOne where
  toJSON WAFv2RuleGroupRateBasedStatementOne{..} =
    object $
    catMaybes
    [ fmap (("AggregateKeyType",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType
    , fmap (("Limit",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement
    ]

-- | Constructor for 'WAFv2RuleGroupRateBasedStatementOne' containing required
-- fields as arguments.
waFv2RuleGroupRateBasedStatementOne
  :: WAFv2RuleGroupRateBasedStatementOne
waFv2RuleGroupRateBasedStatementOne  =
  WAFv2RuleGroupRateBasedStatementOne
  { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType = Nothing
  , _wAFv2RuleGroupRateBasedStatementOneLimit = Nothing
  , _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-aggregatekeytype
wafrgrbsoAggregateKeyType :: Lens' WAFv2RuleGroupRateBasedStatementOne (Maybe (Val Text))
wafrgrbsoAggregateKeyType = lens _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-limit
wafrgrbsoLimit :: Lens' WAFv2RuleGroupRateBasedStatementOne (Maybe (Val Integer))
wafrgrbsoLimit = lens _wAFv2RuleGroupRateBasedStatementOneLimit (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-scopedownstatement
wafrgrbsoScopeDownStatement :: Lens' WAFv2RuleGroupRateBasedStatementOne (Maybe WAFv2RuleGroupStatementTwo)
wafrgrbsoScopeDownStatement = lens _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement = a })
