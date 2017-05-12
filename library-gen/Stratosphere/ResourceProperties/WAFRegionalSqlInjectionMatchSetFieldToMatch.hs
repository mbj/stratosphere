{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-sqlinjectionmatchset-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFRegionalSqlInjectionMatchSetFieldToMatch where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("Data" .=) <$> _wAFRegionalSqlInjectionMatchSetFieldToMatchData
    , Just ("Type" .= _wAFRegionalSqlInjectionMatchSetFieldToMatchType)
    ]

instance FromJSON WAFRegionalSqlInjectionMatchSetFieldToMatch where
  parseJSON (Object obj) =
    WAFRegionalSqlInjectionMatchSetFieldToMatch <$>
      obj .:? "Data" <*>
      obj .: "Type"
  parseJSON _ = mempty

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
