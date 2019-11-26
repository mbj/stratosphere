{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html

module Stratosphere.ResourceProperties.WAFv2IPSetIPSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2IPSetIPAddresses

-- | Full data type definition for WAFv2IPSetIPSet. See 'waFv2IPSetIPSet' for
-- a more convenient constructor.
data WAFv2IPSetIPSet =
  WAFv2IPSetIPSet
  { _wAFv2IPSetIPSetARN :: Maybe (Val Text)
  , _wAFv2IPSetIPSetAddresses :: Maybe WAFv2IPSetIPAddresses
  , _wAFv2IPSetIPSetDescription :: Maybe (Val Text)
  , _wAFv2IPSetIPSetIPAddressVersion :: Maybe (Val Text)
  , _wAFv2IPSetIPSetId :: Maybe (Val Text)
  , _wAFv2IPSetIPSetName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2IPSetIPSet where
  toJSON WAFv2IPSetIPSet{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2IPSetIPSetARN
    , fmap (("Addresses",) . toJSON) _wAFv2IPSetIPSetAddresses
    , fmap (("Description",) . toJSON) _wAFv2IPSetIPSetDescription
    , fmap (("IPAddressVersion",) . toJSON) _wAFv2IPSetIPSetIPAddressVersion
    , fmap (("Id",) . toJSON) _wAFv2IPSetIPSetId
    , fmap (("Name",) . toJSON) _wAFv2IPSetIPSetName
    ]

-- | Constructor for 'WAFv2IPSetIPSet' containing required fields as
-- arguments.
waFv2IPSetIPSet
  :: WAFv2IPSetIPSet
waFv2IPSetIPSet  =
  WAFv2IPSetIPSet
  { _wAFv2IPSetIPSetARN = Nothing
  , _wAFv2IPSetIPSetAddresses = Nothing
  , _wAFv2IPSetIPSetDescription = Nothing
  , _wAFv2IPSetIPSetIPAddressVersion = Nothing
  , _wAFv2IPSetIPSetId = Nothing
  , _wAFv2IPSetIPSetName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-arn
wafipsipsARN :: Lens' WAFv2IPSetIPSet (Maybe (Val Text))
wafipsipsARN = lens _wAFv2IPSetIPSetARN (\s a -> s { _wAFv2IPSetIPSetARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-addresses
wafipsipsAddresses :: Lens' WAFv2IPSetIPSet (Maybe WAFv2IPSetIPAddresses)
wafipsipsAddresses = lens _wAFv2IPSetIPSetAddresses (\s a -> s { _wAFv2IPSetIPSetAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-description
wafipsipsDescription :: Lens' WAFv2IPSetIPSet (Maybe (Val Text))
wafipsipsDescription = lens _wAFv2IPSetIPSetDescription (\s a -> s { _wAFv2IPSetIPSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-ipaddressversion
wafipsipsIPAddressVersion :: Lens' WAFv2IPSetIPSet (Maybe (Val Text))
wafipsipsIPAddressVersion = lens _wAFv2IPSetIPSetIPAddressVersion (\s a -> s { _wAFv2IPSetIPSetIPAddressVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-id
wafipsipsId :: Lens' WAFv2IPSetIPSet (Maybe (Val Text))
wafipsipsId = lens _wAFv2IPSetIPSetId (\s a -> s { _wAFv2IPSetIPSetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipset.html#cfn-wafv2-ipset-ipset-name
wafipsipsName :: Lens' WAFv2IPSetIPSet (Maybe (Val Text))
wafipsipsName = lens _wAFv2IPSetIPSetName (\s a -> s { _wAFv2IPSetIPSetName = a })
