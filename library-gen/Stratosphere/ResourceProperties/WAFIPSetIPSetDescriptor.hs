{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-ipset-ipsetdescriptors.html

module Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for WAFIPSetIPSetDescriptor. See
-- | 'wafipSetIPSetDescriptor' for a more convenient constructor.
data WAFIPSetIPSetDescriptor =
  WAFIPSetIPSetDescriptor
  { _wAFIPSetIPSetDescriptorType :: Val Text
  , _wAFIPSetIPSetDescriptorValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFIPSetIPSetDescriptor where
  toJSON WAFIPSetIPSetDescriptor{..} =
    object
    [ "Type" .= _wAFIPSetIPSetDescriptorType
    , "Value" .= _wAFIPSetIPSetDescriptorValue
    ]

instance FromJSON WAFIPSetIPSetDescriptor where
  parseJSON (Object obj) =
    WAFIPSetIPSetDescriptor <$>
      obj .: "Type" <*>
      obj .: "Value"
  parseJSON _ = mempty

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
