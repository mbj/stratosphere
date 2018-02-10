{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html

module Stratosphere.ResourceProperties.WAFRegionalIPSetIPSetDescriptor where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFRegionalIPSetIPSetDescriptor. See
-- 'wafRegionalIPSetIPSetDescriptor' for a more convenient constructor.
data WAFRegionalIPSetIPSetDescriptor =
  WAFRegionalIPSetIPSetDescriptor
  { _wAFRegionalIPSetIPSetDescriptorType :: Val Text
  , _wAFRegionalIPSetIPSetDescriptorValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalIPSetIPSetDescriptor where
  toJSON WAFRegionalIPSetIPSetDescriptor{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _wAFRegionalIPSetIPSetDescriptorType
    , (Just . ("Value",) . toJSON) _wAFRegionalIPSetIPSetDescriptorValue
    ]

instance FromJSON WAFRegionalIPSetIPSetDescriptor where
  parseJSON (Object obj) =
    WAFRegionalIPSetIPSetDescriptor <$>
      (obj .: "Type") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalIPSetIPSetDescriptor' containing required
-- fields as arguments.
wafRegionalIPSetIPSetDescriptor
  :: Val Text -- ^ 'wafripsipsdType'
  -> Val Text -- ^ 'wafripsipsdValue'
  -> WAFRegionalIPSetIPSetDescriptor
wafRegionalIPSetIPSetDescriptor typearg valuearg =
  WAFRegionalIPSetIPSetDescriptor
  { _wAFRegionalIPSetIPSetDescriptorType = typearg
  , _wAFRegionalIPSetIPSetDescriptorValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html#cfn-wafregional-ipset-ipsetdescriptor-type
wafripsipsdType :: Lens' WAFRegionalIPSetIPSetDescriptor (Val Text)
wafripsipsdType = lens _wAFRegionalIPSetIPSetDescriptorType (\s a -> s { _wAFRegionalIPSetIPSetDescriptorType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-ipset-ipsetdescriptor.html#cfn-wafregional-ipset-ipsetdescriptor-value
wafripsipsdValue :: Lens' WAFRegionalIPSetIPSetDescriptor (Val Text)
wafripsipsdValue = lens _wAFRegionalIPSetIPSetDescriptorValue (\s a -> s { _wAFRegionalIPSetIPSetDescriptorValue = a })
