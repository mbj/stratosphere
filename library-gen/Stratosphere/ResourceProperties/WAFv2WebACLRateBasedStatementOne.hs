{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLRateBasedStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementTwo

-- | Full data type definition for WAFv2WebACLRateBasedStatementOne. See
-- 'waFv2WebACLRateBasedStatementOne' for a more convenient constructor.
data WAFv2WebACLRateBasedStatementOne =
  WAFv2WebACLRateBasedStatementOne
  { _wAFv2WebACLRateBasedStatementOneAggregateKeyType :: Maybe (Val Text)
  , _wAFv2WebACLRateBasedStatementOneLimit :: Maybe (Val Integer)
  , _wAFv2WebACLRateBasedStatementOneScopeDownStatement :: Maybe WAFv2WebACLStatementTwo
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRateBasedStatementOne where
  toJSON WAFv2WebACLRateBasedStatementOne{..} =
    object $
    catMaybes
    [ fmap (("AggregateKeyType",) . toJSON) _wAFv2WebACLRateBasedStatementOneAggregateKeyType
    , fmap (("Limit",) . toJSON) _wAFv2WebACLRateBasedStatementOneLimit
    , fmap (("ScopeDownStatement",) . toJSON) _wAFv2WebACLRateBasedStatementOneScopeDownStatement
    ]

-- | Constructor for 'WAFv2WebACLRateBasedStatementOne' containing required
-- fields as arguments.
waFv2WebACLRateBasedStatementOne
  :: WAFv2WebACLRateBasedStatementOne
waFv2WebACLRateBasedStatementOne  =
  WAFv2WebACLRateBasedStatementOne
  { _wAFv2WebACLRateBasedStatementOneAggregateKeyType = Nothing
  , _wAFv2WebACLRateBasedStatementOneLimit = Nothing
  , _wAFv2WebACLRateBasedStatementOneScopeDownStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-aggregatekeytype
wafwaclrbsoAggregateKeyType :: Lens' WAFv2WebACLRateBasedStatementOne (Maybe (Val Text))
wafwaclrbsoAggregateKeyType = lens _wAFv2WebACLRateBasedStatementOneAggregateKeyType (\s a -> s { _wAFv2WebACLRateBasedStatementOneAggregateKeyType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-limit
wafwaclrbsoLimit :: Lens' WAFv2WebACLRateBasedStatementOne (Maybe (Val Integer))
wafwaclrbsoLimit = lens _wAFv2WebACLRateBasedStatementOneLimit (\s a -> s { _wAFv2WebACLRateBasedStatementOneLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-ratebasedstatementone.html#cfn-wafv2-webacl-ratebasedstatementone-scopedownstatement
wafwaclrbsoScopeDownStatement :: Lens' WAFv2WebACLRateBasedStatementOne (Maybe WAFv2WebACLStatementTwo)
wafwaclrbsoScopeDownStatement = lens _wAFv2WebACLRateBasedStatementOneScopeDownStatement (\s a -> s { _wAFv2WebACLRateBasedStatementOneScopeDownStatement = a })
