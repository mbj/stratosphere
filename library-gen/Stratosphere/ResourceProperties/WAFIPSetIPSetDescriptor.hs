{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html

module Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for WAFIPSetIPSetDescriptor. See
-- | 'wafipSetIPSetDescriptor' for a more convenient constructor.
data WAFIPSetIPSetDescriptor =
  WAFIPSetIPSetDescriptor
  { _wAFIPSetIPSetDescriptorType :: Val Text
  , _wAFIPSetIPSetDescriptorValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON WAFIPSetIPSetDescriptor where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON WAFIPSetIPSetDescriptor where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'WAFIPSetIPSetDescriptor' containing required fields as
-- | arguments.
wafipSetIPSetDescriptor
  :: Val Text -- ^ 'wafipsipsdType'
  -> Val Text -- ^ 'wafipsipsdValue'
  -> WAFIPSetIPSetDescriptor
wafipSetIPSetDescriptor typearg valuearg =
  WAFIPSetIPSetDescriptor
  { _wAFIPSetIPSetDescriptorType = typearg
  , _wAFIPSetIPSetDescriptorValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-type
wafipsipsdType :: Lens' WAFIPSetIPSetDescriptor (Val Text)
wafipsipsdType = lens _wAFIPSetIPSetDescriptorType (\s a -> s { _wAFIPSetIPSetDescriptorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html#cfn-waf-ipset-ipsetdescriptors-value
wafipsipsdValue :: Lens' WAFIPSetIPSetDescriptor (Val Text)
wafipsipsdValue = lens _wAFIPSetIPSetDescriptorValue (\s a -> s { _wAFIPSetIPSetDescriptorValue = a })
