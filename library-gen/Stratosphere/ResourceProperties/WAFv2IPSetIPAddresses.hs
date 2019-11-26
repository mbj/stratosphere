{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipaddresses.html

module Stratosphere.ResourceProperties.WAFv2IPSetIPAddresses where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2IPSetIPAddresses. See
-- 'waFv2IPSetIPAddresses' for a more convenient constructor.
data WAFv2IPSetIPAddresses =
  WAFv2IPSetIPAddresses
  { _wAFv2IPSetIPAddressesIPAddresses :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2IPSetIPAddresses where
  toJSON WAFv2IPSetIPAddresses{..} =
    object $
    catMaybes
    [ fmap (("IPAddresses",) . toJSON) _wAFv2IPSetIPAddressesIPAddresses
    ]

-- | Constructor for 'WAFv2IPSetIPAddresses' containing required fields as
-- arguments.
waFv2IPSetIPAddresses
  :: WAFv2IPSetIPAddresses
waFv2IPSetIPAddresses  =
  WAFv2IPSetIPAddresses
  { _wAFv2IPSetIPAddressesIPAddresses = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipaddresses.html#cfn-wafv2-ipset-ipaddresses-ipaddresses
wafipsipaIPAddresses :: Lens' WAFv2IPSetIPAddresses (Maybe (ValList Text))
wafipsipaIPAddresses = lens _wAFv2IPSetIPAddressesIPAddresses (\s a -> s { _wAFv2IPSetIPAddressesIPAddresses = a })
