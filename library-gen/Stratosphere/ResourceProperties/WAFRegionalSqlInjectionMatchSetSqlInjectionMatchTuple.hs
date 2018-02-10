{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html

module Stratosphere.ResourceProperties.WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFRegionalSqlInjectionMatchSetFieldToMatch

-- | Full data type definition for
-- WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple. See
-- 'wafRegionalSqlInjectionMatchSetSqlInjectionMatchTuple' for a more
-- convenient constructor.
data WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple =
  WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple
  { _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch :: WAFRegionalSqlInjectionMatchSetFieldToMatch
  , _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple where
  toJSON WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch
    , (Just . ("TextTransformation",) . toJSON) _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation
    ]

instance FromJSON WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple where
  parseJSON (Object obj) =
    WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple <$>
      (obj .: "FieldToMatch") <*>
      (obj .: "TextTransformation")
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple'
-- containing required fields as arguments.
wafRegionalSqlInjectionMatchSetSqlInjectionMatchTuple
  :: WAFRegionalSqlInjectionMatchSetFieldToMatch -- ^ 'wafrsimssimtFieldToMatch'
  -> Val Text -- ^ 'wafrsimssimtTextTransformation'
  -> WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple
wafRegionalSqlInjectionMatchSetSqlInjectionMatchTuple fieldToMatcharg textTransformationarg =
  WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple
  { _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-fieldtomatch
wafrsimssimtFieldToMatch :: Lens' WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple WAFRegionalSqlInjectionMatchSetFieldToMatch
wafrsimssimtFieldToMatch = lens _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch (\s a -> s { _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple.html#cfn-wafregional-sqlinjectionmatchset-sqlinjectionmatchtuple-texttransformation
wafrsimssimtTextTransformation :: Lens' WAFRegionalSqlInjectionMatchSetSqlInjectionMatchTuple (Val Text)
wafrsimssimtTextTransformation = lens _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation (\s a -> s { _wAFRegionalSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation = a })
