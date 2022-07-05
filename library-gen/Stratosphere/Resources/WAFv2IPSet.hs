{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html

module Stratosphere.Resources.WAFv2IPSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2IPSet. See 'waFv2IPSet' for a more
-- convenient constructor.
data WAFv2IPSet =
  WAFv2IPSet
  { _wAFv2IPSetAddresses :: ValList Text
  , _wAFv2IPSetDescription :: Maybe (Val Text)
  , _wAFv2IPSetIPAddressVersion :: Val Text
  , _wAFv2IPSetName :: Maybe (Val Text)
  , _wAFv2IPSetScope :: Val Text
  , _wAFv2IPSetTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2IPSet where
  toResourceProperties WAFv2IPSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::IPSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Addresses",) . toJSON) _wAFv2IPSetAddresses
        , fmap (("Description",) . toJSON) _wAFv2IPSetDescription
        , (Just . ("IPAddressVersion",) . toJSON) _wAFv2IPSetIPAddressVersion
        , fmap (("Name",) . toJSON) _wAFv2IPSetName
        , (Just . ("Scope",) . toJSON) _wAFv2IPSetScope
        , fmap (("Tags",) . toJSON) _wAFv2IPSetTags
        ]
    }

-- | Constructor for 'WAFv2IPSet' containing required fields as arguments.
waFv2IPSet
  :: ValList Text -- ^ 'wafvipsAddresses'
  -> Val Text -- ^ 'wafvipsIPAddressVersion'
  -> Val Text -- ^ 'wafvipsScope'
  -> WAFv2IPSet
waFv2IPSet addressesarg iPAddressVersionarg scopearg =
  WAFv2IPSet
  { _wAFv2IPSetAddresses = addressesarg
  , _wAFv2IPSetDescription = Nothing
  , _wAFv2IPSetIPAddressVersion = iPAddressVersionarg
  , _wAFv2IPSetName = Nothing
  , _wAFv2IPSetScope = scopearg
  , _wAFv2IPSetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-addresses
wafvipsAddresses :: Lens' WAFv2IPSet (ValList Text)
wafvipsAddresses = lens _wAFv2IPSetAddresses (\s a -> s { _wAFv2IPSetAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-description
wafvipsDescription :: Lens' WAFv2IPSet (Maybe (Val Text))
wafvipsDescription = lens _wAFv2IPSetDescription (\s a -> s { _wAFv2IPSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipaddressversion
wafvipsIPAddressVersion :: Lens' WAFv2IPSet (Val Text)
wafvipsIPAddressVersion = lens _wAFv2IPSetIPAddressVersion (\s a -> s { _wAFv2IPSetIPAddressVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-name
wafvipsName :: Lens' WAFv2IPSet (Maybe (Val Text))
wafvipsName = lens _wAFv2IPSetName (\s a -> s { _wAFv2IPSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-scope
wafvipsScope :: Lens' WAFv2IPSet (Val Text)
wafvipsScope = lens _wAFv2IPSetScope (\s a -> s { _wAFv2IPSetScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-tags
wafvipsTags :: Lens' WAFv2IPSet (Maybe [Tag])
wafvipsTags = lens _wAFv2IPSetTags (\s a -> s { _wAFv2IPSetTags = a })
