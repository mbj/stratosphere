
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFRegionalSqlInjectionMatchSetFieldToMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- WAFRegionalSqlInjectionMatchSetFieldToMatch. See
-- 'wafRegionalSqlInjectionMatchSetFieldToMatch' for a more convenient
-- constructor.
data WAFRegionalSqlInjectionMatchSetFieldToMatch =
  WAFRegionalSqlInjectionMatchSetFieldToMatch
  { _wAFRegionalSqlInjectionMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFRegionalSqlInjectionMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalSqlInjectionMatchSetFieldToMatch where
  toJSON WAFRegionalSqlInjectionMatchSetFieldToMatch{..} =
    object $
    catMaybes
    [ fmap (("Data",) . toJSON) _wAFRegionalSqlInjectionMatchSetFieldToMatchData
    , (Just . ("Type",) . toJSON) _wAFRegionalSqlInjectionMatchSetFieldToMatchType
    ]

-- | Constructor for 'WAFRegionalSqlInjectionMatchSetFieldToMatch' containing
-- required fields as arguments.
wafRegionalSqlInjectionMatchSetFieldToMatch
  :: Val Text -- ^ 'wafrsimsftmType'
  -> WAFRegionalSqlInjectionMatchSetFieldToMatch
wafRegionalSqlInjectionMatchSetFieldToMatch typearg =
  WAFRegionalSqlInjectionMatchSetFieldToMatch
  { _wAFRegionalSqlInjectionMatchSetFieldToMatchData = Nothing
  , _wAFRegionalSqlInjectionMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-data
wafrsimsftmData :: Lens' WAFRegionalSqlInjectionMatchSetFieldToMatch (Maybe (Val Text))
wafrsimsftmData = lens _wAFRegionalSqlInjectionMatchSetFieldToMatchData (\s a -> s { _wAFRegionalSqlInjectionMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html#cfn-wafregional-sqlinjectionmatchset-fieldtomatch-type
wafrsimsftmType :: Lens' WAFRegionalSqlInjectionMatchSetFieldToMatch (Val Text)
wafrsimsftmType = lens _wAFRegionalSqlInjectionMatchSetFieldToMatchType (\s a -> s { _wAFRegionalSqlInjectionMatchSetFieldToMatchType = a })
