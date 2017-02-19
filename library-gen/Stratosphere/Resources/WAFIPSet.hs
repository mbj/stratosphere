{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-ipset.html

module Stratosphere.Resources.WAFIPSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFIPSetIPSetDescriptor

-- | Full data type definition for WAFIPSet. See 'wafipSet' for a more
-- | convenient constructor.
data WAFIPSet =
  WAFIPSet
  { _wAFIPSetIPSetDescriptors :: Maybe [WAFIPSetIPSetDescriptor]
  , _wAFIPSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFIPSet where
  toJSON WAFIPSet{..} =
    object $
    catMaybes
    [ ("IPSetDescriptors" .=) <$> _wAFIPSetIPSetDescriptors
    , Just ("Name" .= _wAFIPSetName)
    ]

instance FromJSON WAFIPSet where
  parseJSON (Object obj) =
    WAFIPSet <$>
      obj .:? "IPSetDescriptors" <*>
      obj .: "Name"
  parseJSON _ = mempty

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
