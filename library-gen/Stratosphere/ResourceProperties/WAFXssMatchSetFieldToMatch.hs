{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html

module Stratosphere.ResourceProperties.WAFXssMatchSetFieldToMatch where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for WAFXssMatchSetFieldToMatch. See
-- | 'wafXssMatchSetFieldToMatch' for a more convenient constructor.
data WAFXssMatchSetFieldToMatch =
  WAFXssMatchSetFieldToMatch
  { _wAFXssMatchSetFieldToMatchData :: Maybe (Val Text)
  , _wAFXssMatchSetFieldToMatchType :: Val Text
  } deriving (Show, Generic)

instance ToJSON WAFXssMatchSetFieldToMatch where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON WAFXssMatchSetFieldToMatch where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'WAFXssMatchSetFieldToMatch' containing required fields
-- | as arguments.
wafXssMatchSetFieldToMatch
  :: Val Text -- ^ 'wafxmsftmType'
  -> WAFXssMatchSetFieldToMatch
wafXssMatchSetFieldToMatch typearg =
  WAFXssMatchSetFieldToMatch
  { _wAFXssMatchSetFieldToMatchData = Nothing
  , _wAFXssMatchSetFieldToMatchType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-data
wafxmsftmData :: Lens' WAFXssMatchSetFieldToMatch (Maybe (Val Text))
wafxmsftmData = lens _wAFXssMatchSetFieldToMatchData (\s a -> s { _wAFXssMatchSetFieldToMatchData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple-fieldtomatch.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch-type
wafxmsftmType :: Lens' WAFXssMatchSetFieldToMatch (Val Text)
wafxmsftmType = lens _wAFXssMatchSetFieldToMatchType (\s a -> s { _wAFXssMatchSetFieldToMatchType = a })
