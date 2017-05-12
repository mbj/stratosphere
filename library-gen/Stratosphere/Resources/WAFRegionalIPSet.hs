{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html

module Stratosphere.Resources.WAFRegionalIPSet where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFRegionalIPSetIPSetDescriptor

-- | Full data type definition for WAFRegionalIPSet. See 'wafRegionalIPSet'
-- for a more convenient constructor.
data WAFRegionalIPSet =
  WAFRegionalIPSet
  { _wAFRegionalIPSetIPSetDescriptors :: Maybe [WAFRegionalIPSetIPSetDescriptor]
  , _wAFRegionalIPSetName :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalIPSet where
  toJSON WAFRegionalIPSet{..} =
    object $
    catMaybes
    [ ("IPSetDescriptors" .=) <$> _wAFRegionalIPSetIPSetDescriptors
    , Just ("Name" .= _wAFRegionalIPSetName)
    ]

instance FromJSON WAFRegionalIPSet where
  parseJSON (Object obj) =
    WAFRegionalIPSet <$>
      obj .:? "IPSetDescriptors" <*>
      obj .: "Name"
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalIPSet' containing required fields as
-- arguments.
wafRegionalIPSet
  :: Val Text -- ^ 'wafripsName'
  -> WAFRegionalIPSet
wafRegionalIPSet namearg =
  WAFRegionalIPSet
  { _wAFRegionalIPSetIPSetDescriptors = Nothing
  , _wAFRegionalIPSetName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-ipsetdescriptors
wafripsIPSetDescriptors :: Lens' WAFRegionalIPSet (Maybe [WAFRegionalIPSetIPSetDescriptor])
wafripsIPSetDescriptors = lens _wAFRegionalIPSetIPSetDescriptors (\s a -> s { _wAFRegionalIPSetIPSetDescriptors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ipset.html#cfn-wafregional-ipset-name
wafripsName :: Lens' WAFRegionalIPSet (Val Text)
wafripsName = lens _wAFRegionalIPSetName (\s a -> s { _wAFRegionalIPSetName = a })
