{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html

module Stratosphere.ResourceProperties.ConfigConfigRuleSourceDetail where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ConfigConfigRuleSourceDetail. See
-- | 'configConfigRuleSourceDetail' for a more convenient constructor.
data ConfigConfigRuleSourceDetail =
  ConfigConfigRuleSourceDetail
  { _configConfigRuleSourceDetailEventSource :: Val Text
  , _configConfigRuleSourceDetailMessageType :: Val Text
  } deriving (Show, Generic)

instance ToJSON ConfigConfigRuleSourceDetail where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON ConfigConfigRuleSourceDetail where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'ConfigConfigRuleSourceDetail' containing required fields
-- | as arguments.
configConfigRuleSourceDetail
  :: Val Text -- ^ 'ccrsdEventSource'
  -> Val Text -- ^ 'ccrsdMessageType'
  -> ConfigConfigRuleSourceDetail
configConfigRuleSourceDetail eventSourcearg messageTypearg =
  ConfigConfigRuleSourceDetail
  { _configConfigRuleSourceDetailEventSource = eventSourcearg
  , _configConfigRuleSourceDetailMessageType = messageTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-eventsource
ccrsdEventSource :: Lens' ConfigConfigRuleSourceDetail (Val Text)
ccrsdEventSource = lens _configConfigRuleSourceDetailEventSource (\s a -> s { _configConfigRuleSourceDetailEventSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-config-configrule-source-sourcedetails.html#cfn-config-configrule-source-sourcedetail-messagetype
ccrsdMessageType :: Lens' ConfigConfigRuleSourceDetail (Val Text)
ccrsdMessageType = lens _configConfigRuleSourceDetailMessageType (\s a -> s { _configConfigRuleSourceDetailMessageType = a })
