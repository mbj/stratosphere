
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupForwardedIPConfiguration
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupRateBasedStatementTwo. See
-- 'waFv2RuleGroupRateBasedStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupRateBasedStatementTwo =
  WAFv2RuleGroupRateBasedStatementTwo
  { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType :: Val Text
  , _wAFv2RuleGroupRateBasedStatementTwoForwardedIPConfig :: Maybe WAFv2RuleGroupForwardedIPConfiguration
  , _wAFv2RuleGroupRateBasedStatementTwoLimit :: Val Integer
  , _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement :: Maybe WAFv2RuleGroupStatementThree
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRateBasedStatementTwo where
  toJSON WAFv2RuleGroupRateBasedStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("AggregateKeyType",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType
    , fmap (("ForwardedIPConfig",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoForwardedIPConfig
    , (Just . ("Limit",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement
    ]

-- | Constructor for 'WAFv2RuleGroupRateBasedStatementTwo' containing required
-- fields as arguments.
waFv2RuleGroupRateBasedStatementTwo
  :: Val Text -- ^ 'wafrgrbstAggregateKeyType'
  -> Val Integer -- ^ 'wafrgrbstLimit'
  -> WAFv2RuleGroupRateBasedStatementTwo
waFv2RuleGroupRateBasedStatementTwo aggregateKeyTypearg limitarg =
  WAFv2RuleGroupRateBasedStatementTwo
  { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType = aggregateKeyTypearg
  , _wAFv2RuleGroupRateBasedStatementTwoForwardedIPConfig = Nothing
  , _wAFv2RuleGroupRateBasedStatementTwoLimit = limitarg
  , _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-aggregatekeytype
wafrgrbstAggregateKeyType :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Val Text)
wafrgrbstAggregateKeyType = lens _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-forwardedipconfig
wafrgrbstForwardedIPConfig :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Maybe WAFv2RuleGroupForwardedIPConfiguration)
wafrgrbstForwardedIPConfig = lens _wAFv2RuleGroupRateBasedStatementTwoForwardedIPConfig (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoForwardedIPConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-limit
wafrgrbstLimit :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Val Integer)
wafrgrbstLimit = lens _wAFv2RuleGroupRateBasedStatementTwoLimit (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ratebasedstatementtwo.html#cfn-wafv2-rulegroup-ratebasedstatementtwo-scopedownstatement
wafrgrbstScopeDownStatement :: Lens' WAFv2RuleGroupRateBasedStatementTwo (Maybe WAFv2RuleGroupStatementThree)
wafrgrbstScopeDownStatement = lens _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement (\s a -> s { _wAFv2RuleGroupRateBasedStatementTwoScopeDownStatement = a })
