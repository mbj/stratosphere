{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html

module Stratosphere.ResourceProperties.WAFWebACLWafAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for WAFWebACLWafAction. See
-- | 'wafWebACLWafAction' for a more convenient constructor.
data WAFWebACLWafAction =
  WAFWebACLWafAction
  { _wAFWebACLWafActionType :: Val Text
  } deriving (Show, Generic)

instance ToJSON WAFWebACLWafAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON WAFWebACLWafAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'WAFWebACLWafAction' containing required fields as
-- | arguments.
wafWebACLWafAction
  :: Val Text -- ^ 'wafwaclwaType'
  -> WAFWebACLWafAction
wafWebACLWafAction typearg =
  WAFWebACLWafAction
  { _wAFWebACLWafActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-action.html#cfn-waf-webacl-action-type
wafwaclwaType :: Lens' WAFWebACLWafAction (Val Text)
wafwaclwaType = lens _wAFWebACLWafActionType (\s a -> s { _wAFWebACLWafActionType = a })
