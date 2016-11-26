{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html

module Stratosphere.ResourceProperties.WAFXssMatchSetXssMatchTuple where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFXssMatchSetFieldToMatch

-- | Full data type definition for WAFXssMatchSetXssMatchTuple. See
-- | 'wafXssMatchSetXssMatchTuple' for a more convenient constructor.
data WAFXssMatchSetXssMatchTuple =
  WAFXssMatchSetXssMatchTuple
  { _wAFXssMatchSetXssMatchTupleFieldToMatch :: WAFXssMatchSetFieldToMatch
  , _wAFXssMatchSetXssMatchTupleTextTransformation :: Val Text
  } deriving (Show, Generic)

instance ToJSON WAFXssMatchSetXssMatchTuple where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON WAFXssMatchSetXssMatchTuple where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'WAFXssMatchSetXssMatchTuple' containing required fields
-- | as arguments.
wafXssMatchSetXssMatchTuple
  :: WAFXssMatchSetFieldToMatch -- ^ 'wafxmsxmtFieldToMatch'
  -> Val Text -- ^ 'wafxmsxmtTextTransformation'
  -> WAFXssMatchSetXssMatchTuple
wafXssMatchSetXssMatchTuple fieldToMatcharg textTransformationarg =
  WAFXssMatchSetXssMatchTuple
  { _wAFXssMatchSetXssMatchTupleFieldToMatch = fieldToMatcharg
  , _wAFXssMatchSetXssMatchTupleTextTransformation = textTransformationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-fieldtomatch
wafxmsxmtFieldToMatch :: Lens' WAFXssMatchSetXssMatchTuple WAFXssMatchSetFieldToMatch
wafxmsxmtFieldToMatch = lens _wAFXssMatchSetXssMatchTupleFieldToMatch (\s a -> s { _wAFXssMatchSetXssMatchTupleFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-xssmatchset-xssmatchtuple.html#cfn-waf-xssmatchset-xssmatchtuple-texttransformation
wafxmsxmtTextTransformation :: Lens' WAFXssMatchSetXssMatchTuple (Val Text)
wafxmsxmtTextTransformation = lens _wAFXssMatchSetXssMatchTupleTextTransformation (\s a -> s { _wAFXssMatchSetXssMatchTupleTextTransformation = a })
