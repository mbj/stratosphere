
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLRateBasedStatementOne where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLForwardedIPConfiguration
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo

-- | Full data type definition for WAFv2WebACLRateBasedStatementOne. See
-- 'waFv2WebACLRateBasedStatementOne' for a more convenient constructor.
data WAFv2WebACLRateBasedStatementOne =
  WAFv2WebACLRateBasedStatementOne
  { _wAFv2WebACLRateBasedStatementOneAggregateKeyType :: Val Text
  , _wAFv2WebACLRateBasedStatementOneForwardedIPConfig :: Maybe WAFv2WebACLForwardedIPConfiguration
  , _wAFv2WebACLRateBasedStatementOneLimit :: Val Integer
  , _wAFv2WebACLRateBasedStatementOneScopeDownStatement :: Maybe WAFv2WebACLStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRateBasedStatementOne where
  toJSON WAFv2WebACLRateBasedStatementOne{..} =
    object $
    catMaybes
    [ (Just . ("AggregateKeyType",) . toJSON) _wAFv2WebACLRateBasedStatementOneAggregateKeyType
    , fmap (("ForwardedIPConfig",) . toJSON) _wAFv2WebACLRateBasedStatementOneForwardedIPConfig
    , (Just . ("Limit",) . toJSON) _wAFv2WebACLRateBasedStatementOneLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2WebACLRateBasedStatementOneScopeDownStatement
    ]

-- | Constructor for 'WAFv2WebACLRateBasedStatementOne' containing required
-- fields as arguments.
waFv2WebACLRateBasedStatementOne
  :: Val Text -- ^ 'wafwaclrbsoAggregateKeyType'
  -> Val Integer -- ^ 'wafwaclrbsoLimit'
  -> WAFv2WebACLRateBasedStatementOne
waFv2WebACLRateBasedStatementOne aggregateKeyTypearg limitarg =
  WAFv2WebACLRateBasedStatementOne
  { _wAFv2WebACLRateBasedStatementOneAggregateKeyType = aggregateKeyTypearg
  , _wAFv2WebACLRateBasedStatementOneForwardedIPConfig = Nothing
  , _wAFv2WebACLRateBasedStatementOneLimit = limitarg
  , _wAFv2WebACLRateBasedStatementOneScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-aggregatekeytype
wafwaclrbsoAggregateKeyType :: Lens' WAFv2WebACLRateBasedStatementOne (Val Text)
wafwaclrbsoAggregateKeyType = lens _wAFv2WebACLRateBasedStatementOneAggregateKeyType (\s a -> s { _wAFv2WebACLRateBasedStatementOneAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-forwardedipconfig
wafwaclrbsoForwardedIPConfig :: Lens' WAFv2WebACLRateBasedStatementOne (Maybe WAFv2WebACLForwardedIPConfiguration)
wafwaclrbsoForwardedIPConfig = lens _wAFv2WebACLRateBasedStatementOneForwardedIPConfig (\s a -> s { _wAFv2WebACLRateBasedStatementOneForwardedIPConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-limit
wafwaclrbsoLimit :: Lens' WAFv2WebACLRateBasedStatementOne (Val Integer)
wafwaclrbsoLimit = lens _wAFv2WebACLRateBasedStatementOneLimit (\s a -> s { _wAFv2WebACLRateBasedStatementOneLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-scopedownstatement
wafwaclrbsoScopeDownStatement :: Lens' WAFv2WebACLRateBasedStatementOne (Maybe WAFv2WebACLStatementTwo)
wafwaclrbsoScopeDownStatement = lens _wAFv2WebACLRateBasedStatementOneScopeDownStatement (\s a -> s { _wAFv2WebACLRateBasedStatementOneScopeDownStatement = a })
