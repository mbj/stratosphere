{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-sqlinjectionmatchset-sqlinjectionmatchtuples.html

module Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetSqlInjectionMatchTuple where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    [ Just ("FieldToMatch" .= _wAFSqlInjectionMatchSetSqlInjectionMatchTupleFieldToMatch)
    , Just ("TextTransformation" .= _wAFSqlInjectionMatchSetSqlInjectionMatchTupleTextTransformation)
    ]

instance FromJSON WAFSqlInjectionMatchSetSqlInjectionMatchTuple where
  parseJSON (Object obj) =
    WAFSqlInjectionMatchSetSqlInjectionMatchTuple <$>
      obj .: "FieldToMatch" <*>
      obj .: "TextTransformation"
  parseJSON _ = mempty

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
