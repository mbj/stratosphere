
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLRateBasedStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLForwardedIPConfiguration
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThree

-- | Full data type definition for WAFv2WebACLRateBasedStatementTwo. See
-- 'waFv2WebACLRateBasedStatementTwo' for a more convenient constructor.
data WAFv2WebACLRateBasedStatementTwo =
  WAFv2WebACLRateBasedStatementTwo
  { _wAFv2WebACLRateBasedStatementTwoAggregateKeyType :: Val Text
  , _wAFv2WebACLRateBasedStatementTwoForwardedIPConfig :: Maybe WAFv2WebACLForwardedIPConfiguration
  , _wAFv2WebACLRateBasedStatementTwoLimit :: Val Integer
  , _wAFv2WebACLRateBasedStatementTwoScopeDownStatement :: Maybe WAFv2WebACLStatementThree
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRateBasedStatementTwo where
  toJSON WAFv2WebACLRateBasedStatementTwo{..} =
    object $
    catMaybes
    [ (Just . ("AggregateKeyType",) . toJSON) _wAFv2WebACLRateBasedStatementTwoAggregateKeyType
    , fmap (("ForwardedIPConfig",) . toJSON) _wAFv2WebACLRateBasedStatementTwoForwardedIPConfig
    , (Just . ("Limit",) . toJSON) _wAFv2WebACLRateBasedStatementTwoLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2WebACLRateBasedStatementTwoScopeDownStatement
    ]

-- | Constructor for 'WAFv2WebACLRateBasedStatementTwo' containing required
-- fields as arguments.
waFv2WebACLRateBasedStatementTwo
  :: Val Text -- ^ 'wafwaclrbstAggregateKeyType'
  -> Val Integer -- ^ 'wafwaclrbstLimit'
  -> WAFv2WebACLRateBasedStatementTwo
waFv2WebACLRateBasedStatementTwo aggregateKeyTypearg limitarg =
  WAFv2WebACLRateBasedStatementTwo
  { _wAFv2WebACLRateBasedStatementTwoAggregateKeyType = aggregateKeyTypearg
  , _wAFv2WebACLRateBasedStatementTwoForwardedIPConfig = Nothing
  , _wAFv2WebACLRateBasedStatementTwoLimit = limitarg
  , _wAFv2WebACLRateBasedStatementTwoScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-aggregatekeytype
wafwaclrbstAggregateKeyType :: Lens' WAFv2WebACLRateBasedStatementTwo (Val Text)
wafwaclrbstAggregateKeyType = lens _wAFv2WebACLRateBasedStatementTwoAggregateKeyType (\s a -> s { _wAFv2WebACLRateBasedStatementTwoAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-forwardedipconfig
wafwaclrbstForwardedIPConfig :: Lens' WAFv2WebACLRateBasedStatementTwo (Maybe WAFv2WebACLForwardedIPConfiguration)
wafwaclrbstForwardedIPConfig = lens _wAFv2WebACLRateBasedStatementTwoForwardedIPConfig (\s a -> s { _wAFv2WebACLRateBasedStatementTwoForwardedIPConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-limit
wafwaclrbstLimit :: Lens' WAFv2WebACLRateBasedStatementTwo (Val Integer)
wafwaclrbstLimit = lens _wAFv2WebACLRateBasedStatementTwoLimit (\s a -> s { _wAFv2WebACLRateBasedStatementTwoLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementtwo.html#cfn-wafv2-webacl-ratebasedstatementtwo-scopedownstatement
wafwaclrbstScopeDownStatement :: Lens' WAFv2WebACLRateBasedStatementTwo (Maybe WAFv2WebACLStatementThree)
wafwaclrbstScopeDownStatement = lens _wAFv2WebACLRateBasedStatementTwoScopeDownStatement (\s a -> s { _wAFv2WebACLRateBasedStatementTwoScopeDownStatement = a })
