{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html

module Stratosphere.Resources.WAFIPSet where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor

-- | Full data type definition for WAFIPSet. See 'wafipSet' for a more
-- | convenient constructor.
data WAFIPSet =
  WAFIPSet
  { _wAFIPSetIPSetDescriptors :: Maybe [WAFIPSetIPSetDescriptor]
  , _wAFIPSetName :: Val Text
  } deriving (Show, Generic)

instance ToJSON WAFIPSet where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON WAFIPSet where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'WAFIPSet' containing required fields as arguments.
wafipSet
  :: Val Text -- ^ 'wafipsName'
  -> WAFIPSet
wafipSet namearg =
  WAFIPSet
  { _wAFIPSetIPSetDescriptors = Nothing
  , _wAFIPSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-ipsetdescriptors
wafipsIPSetDescriptors :: Lens' WAFIPSet (Maybe [WAFIPSetIPSetDescriptor])
wafipsIPSetDescriptors = lens _wAFIPSetIPSetDescriptors (\s a -> s { _wAFIPSetIPSetDescriptors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html#cfn-waf-ipset-name
wafipsName :: Lens' WAFIPSet (Val Text)
wafipsName = lens _wAFIPSetName (\s a -> s { _wAFIPSetName = a })
