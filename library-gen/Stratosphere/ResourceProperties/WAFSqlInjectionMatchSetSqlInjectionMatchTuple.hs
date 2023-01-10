
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html

module Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetSqlInjectionMatchTuple where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetFieldToMatch

-- | Full data type definition for
-- WAFSqlInjectionMatchSetSqlInjectionMatchTuple. See
-- 'wafSqlInjectionMatchSetSqlInjectionMatchTuple' for a more convenient
-- constructor.
data WAFSqlInjectionMatchSetSqlInjectionMatchTuple =
  WAFSqlInjectionMatchSetSqlInjectionMatchTuple
  { _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch :: WAFSqlInjectionMatchSetFieldToMatch
  , _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFSqlInjectionMatchSetSqlInjectionMatchTuple where
  toJSON WAFSqlInjectionMatchSetSqlInjectionMatchTuple{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch
    , (Just . ("TextTransformation",) . toJSON) _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation
    ]

-- | Constructor for 'WAFSqlInjectionMatchSetSqlInjectionMatchTuple'
-- containing required fields as arguments.
wafSqlInjectionMatchSetSqlInjectionMatchTuple
  :: WAFSqlInjectionMatchSetFieldToMatch -- ^ 'wafsimssimtFieldToMatch'
  -> Val Text -- ^ 'wafsimssimtTextTransformation'
  -> WAFSqlInjectionMatchSetSqlInjectionMatchTuple
wafSqlInjectionMatchSetSqlInjectionMatchTuple fieldToMatcharg textTransformationarg =
  WAFSqlInjectionMatchSetSqlInjectionMatchTuple
  { _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-fieldtomatch
wafsimssimtFieldToMatch :: Lens' WAFSqlInjectionMatchSetSqlInjectionMatchTuple WAFSqlInjectionMatchSetFieldToMatch
wafsimssimtFieldToMatch = lens _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch (\s a -> s { _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html#cfn-waf-sqlinjectionmatchset-sqlinjectionmatchtuples-texttransformation
wafsimssimtTextTransformation :: Lens' WAFSqlInjectionMatchSetSqlInjectionMatchTuple (Val Text)
wafsimssimtTextTransformation = lens _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation (\s a -> s { _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation = a })
