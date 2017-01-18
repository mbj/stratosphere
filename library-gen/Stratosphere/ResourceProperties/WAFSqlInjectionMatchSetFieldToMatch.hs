{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFSqlInjectionMatchSetFieldToMatch where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for WAFSqlInjectionMatchSetFieldToMatch. See
-- | 'wafSqlInjectionMatchSetFieldToMatch' for a more convenient constructor.
data WAFSqlInjectionMatchSetFieldToMatch =
  WAFSqlInjectionMatchSetFieldToMatch
  { _wAFSqlInjectionMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFSqlInjectionMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON WAFSqlInjectionMatchSetFieldToMatch where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON WAFSqlInjectionMatchSetFieldToMatch where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'WAFSqlInjectionMatchSetFieldToMatch' containing required
-- | fields as arguments.
wafSqlInjectionMatchSetFieldToMatch
  :: Val Text -- ^ 'wafsimsftmType'
  -> WAFSqlInjectionMatchSetFieldToMatch
wafSqlInjectionMatchSetFieldToMatch typearg =
  WAFSqlInjectionMatchSetFieldToMatch
  { _wAFSqlInjectionMatchSetFieldToMatchData = Nothing
  , _wAFSqlInjectionMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-data
wafsimsftmData :: Lens' WAFSqlInjectionMatchSetFieldToMatch (Maybe (Val Text))
wafsimsftmData = lens _wAFSqlInjectionMatchSetFieldToMatchData (\s a -> s { _wAFSqlInjectionMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-bytematchset-bytematchtuples-fieldtomatch.html#cfn-waf-sizeconstraintset-sizeconstraint-fieldtomatch-type
wafsimsftmType :: Lens' WAFSqlInjectionMatchSetFieldToMatch (Val Text)
wafsimsftmType = lens _wAFSqlInjectionMatchSetFieldToMatchType (\s a -> s { _wAFSqlInjectionMatchSetFieldToMatchType = a })
