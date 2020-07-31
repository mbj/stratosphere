{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupForwardedIPConfiguration
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo

-- | Full data type definition for WAFv2RuleGroupRateBasedStatementOne. See
-- 'waFv2RuleGroupRateBasedStatementOne' for a more convenient constructor.
data WAFv2RuleGroupRateBasedStatementOne =
  WAFv2RuleGroupRateBasedStatementOne
  { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType :: Val Text
  , _wAFv2RuleGroupRateBasedStatementOneForwardedIPConfig :: Maybe WAFv2RuleGroupForwardedIPConfiguration
  , _wAFv2RuleGroupRateBasedStatementOneLimit :: Val Integer
  , _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement :: Maybe WAFv2RuleGroupStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRateBasedStatementOne where
  toJSON WAFv2RuleGroupRateBasedStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("AggregateKeyType",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType
    , fmap (("ForwardedIPConfig",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneForwardedIPConfig
    , (Just . ("Limit",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement
    ]

-- | Constructor for 'WAFv2RuleGroupRateBasedStatementOne' containing required
-- fields as arguments.
waFv2RuleGroupRateBasedStatementOne
  :: Val Text -- ^ 'wafrgrbsoAggregateKeyType'
  -> Val Integer -- ^ 'wafrgrbsoLimit'
  -> WAFv2RuleGroupRateBasedStatementOne
waFv2RuleGroupRateBasedStatementOne aggregateKeyTypearg limitarg =
  WAFv2RuleGroupRateBasedStatementOne
  { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType = aggregateKeyTypearg
  , _wAFv2RuleGroupRateBasedStatementOneForwardedIPConfig = Nothing
  , _wAFv2RuleGroupRateBasedStatementOneLimit = limitarg
  , _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-aggregatekeytype
wafrgrbsoAggregateKeyType :: Lens' WAFv2RuleGroupRateBasedStatementOne (Val Text)
wafrgrbsoAggregateKeyType = lens _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-forwardedipconfig
wafrgrbsoForwardedIPConfig :: Lens' WAFv2RuleGroupRateBasedStatementOne (Maybe WAFv2RuleGroupForwardedIPConfiguration)
wafrgrbsoForwardedIPConfig = lens _wAFv2RuleGroupRateBasedStatementOneForwardedIPConfig (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneForwardedIPConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-limit
wafrgrbsoLimit :: Lens' WAFv2RuleGroupRateBasedStatementOne (Val Integer)
wafrgrbsoLimit = lens _wAFv2RuleGroupRateBasedStatementOneLimit (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementone.html#cfn-wafv2-rulegroup-ratebasedstatementone-scopedownstatement
wafrgrbsoScopeDownStatement :: Lens' WAFv2RuleGroupRateBasedStatementOne (Maybe WAFv2RuleGroupStatementTwo)
wafrgrbsoScopeDownStatement = lens _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement (\s a -> s { _wAFv2RuleGroupRateBasedStatementOneScopeDownStatement = a })
