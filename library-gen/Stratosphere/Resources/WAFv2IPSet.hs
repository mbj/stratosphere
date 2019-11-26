{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html

module Stratosphere.Resources.WAFv2IPSet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2IPSetIPAddresses
import Stratosphere.ResourceProperties.WAFv2IPSetIPSet
import Stratosphere.ResourceProperties.WAFv2IPSetIPSetSummary
import Stratosphere.ResourceProperties.WAFv2IPSetIPSets
import Stratosphere.ResourceProperties.WAFv2IPSetTagList

-- | Full data type definition for WAFv2IPSet. See 'waFv2IPSet' for a more
-- convenient constructor.
data WAFv2IPSet =
  WAFv2IPSet
  { _wAFv2IPSetAddresses :: Maybe WAFv2IPSetIPAddresses
  , _wAFv2IPSetDescription :: Maybe (Val Text)
  , _wAFv2IPSetIPAddressVersion :: Maybe (Val Text)
  , _wAFv2IPSetIPSet :: Maybe WAFv2IPSetIPSet
  , _wAFv2IPSetIPSetSummary :: Maybe WAFv2IPSetIPSetSummary
  , _wAFv2IPSetIPSets :: Maybe WAFv2IPSetIPSets
  , _wAFv2IPSetId :: Maybe (Val Text)
  , _wAFv2IPSetLimit :: Maybe (Val Integer)
  , _wAFv2IPSetLockToken :: Maybe (Val Text)
  , _wAFv2IPSetName :: Val Text
  , _wAFv2IPSetNextLockToken :: Maybe (Val Text)
  , _wAFv2IPSetNextMarker :: Maybe (Val Text)
  , _wAFv2IPSetScope :: Val Text
  , _wAFv2IPSetSummary :: Maybe WAFv2IPSetIPSetSummary
  , _wAFv2IPSetTags :: Maybe WAFv2IPSetTagList
  } deriving (Show, Eq)

instance ToResourceProperties WAFv2IPSet where
  toResourceProperties WAFv2IPSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::WAFv2::IPSet"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("Addresses",) . toJSON) _wAFv2IPSetAddresses
        , fmap (("Description",) . toJSON) _wAFv2IPSetDescription
        , fmap (("IPAddressVersion",) . toJSON) _wAFv2IPSetIPAddressVersion
        , fmap (("IPSet",) . toJSON) _wAFv2IPSetIPSet
        , fmap (("IPSetSummary",) . toJSON) _wAFv2IPSetIPSetSummary
        , fmap (("IPSets",) . toJSON) _wAFv2IPSetIPSets
        , fmap (("Id",) . toJSON) _wAFv2IPSetId
        , fmap (("Limit",) . toJSON) _wAFv2IPSetLimit
        , fmap (("LockToken",) . toJSON) _wAFv2IPSetLockToken
        , (Just . ("Name",) . toJSON) _wAFv2IPSetName
        , fmap (("NextLockToken",) . toJSON) _wAFv2IPSetNextLockToken
        , fmap (("NextMarker",) . toJSON) _wAFv2IPSetNextMarker
        , (Just . ("Scope",) . toJSON) _wAFv2IPSetScope
        , fmap (("Summary",) . toJSON) _wAFv2IPSetSummary
        , fmap (("Tags",) . toJSON) _wAFv2IPSetTags
        ]
    }

-- | Constructor for 'WAFv2IPSet' containing required fields as arguments.
waFv2IPSet
  :: Val Text -- ^ 'wafipsName'
  -> Val Text -- ^ 'wafipsScope'
  -> WAFv2IPSet
waFv2IPSet namearg scopearg =
  WAFv2IPSet
  { _wAFv2IPSetAddresses = Nothing
  , _wAFv2IPSetDescription = Nothing
  , _wAFv2IPSetIPAddressVersion = Nothing
  , _wAFv2IPSetIPSet = Nothing
  , _wAFv2IPSetIPSetSummary = Nothing
  , _wAFv2IPSetIPSets = Nothing
  , _wAFv2IPSetId = Nothing
  , _wAFv2IPSetLimit = Nothing
  , _wAFv2IPSetLockToken = Nothing
  , _wAFv2IPSetName = namearg
  , _wAFv2IPSetNextLockToken = Nothing
  , _wAFv2IPSetNextMarker = Nothing
  , _wAFv2IPSetScope = scopearg
  , _wAFv2IPSetSummary = Nothing
  , _wAFv2IPSetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-addresses
wafipsAddresses :: Lens' WAFv2IPSet (Maybe WAFv2IPSetIPAddresses)
wafipsAddresses = lens _wAFv2IPSetAddresses (\s a -> s { _wAFv2IPSetAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-description
wafipsDescription :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsDescription = lens _wAFv2IPSetDescription (\s a -> s { _wAFv2IPSetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipaddressversion
wafipsIPAddressVersion :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsIPAddressVersion = lens _wAFv2IPSetIPAddressVersion (\s a -> s { _wAFv2IPSetIPAddressVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipset
wafipsIPSet :: Lens' WAFv2IPSet (Maybe WAFv2IPSetIPSet)
wafipsIPSet = lens _wAFv2IPSetIPSet (\s a -> s { _wAFv2IPSetIPSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipsetsummary
wafipsIPSetSummary :: Lens' WAFv2IPSet (Maybe WAFv2IPSetIPSetSummary)
wafipsIPSetSummary = lens _wAFv2IPSetIPSetSummary (\s a -> s { _wAFv2IPSetIPSetSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipsets
wafipsIPSets :: Lens' WAFv2IPSet (Maybe WAFv2IPSetIPSets)
wafipsIPSets = lens _wAFv2IPSetIPSets (\s a -> s { _wAFv2IPSetIPSets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-id
wafipsId :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsId = lens _wAFv2IPSetId (\s a -> s { _wAFv2IPSetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-limit
wafipsLimit :: Lens' WAFv2IPSet (Maybe (Val Integer))
wafipsLimit = lens _wAFv2IPSetLimit (\s a -> s { _wAFv2IPSetLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-locktoken
wafipsLockToken :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsLockToken = lens _wAFv2IPSetLockToken (\s a -> s { _wAFv2IPSetLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-name
wafipsName :: Lens' WAFv2IPSet (Val Text)
wafipsName = lens _wAFv2IPSetName (\s a -> s { _wAFv2IPSetName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-nextlocktoken
wafipsNextLockToken :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsNextLockToken = lens _wAFv2IPSetNextLockToken (\s a -> s { _wAFv2IPSetNextLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-nextmarker
wafipsNextMarker :: Lens' WAFv2IPSet (Maybe (Val Text))
wafipsNextMarker = lens _wAFv2IPSetNextMarker (\s a -> s { _wAFv2IPSetNextMarker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-scope
wafipsScope :: Lens' WAFv2IPSet (Val Text)
wafipsScope = lens _wAFv2IPSetScope (\s a -> s { _wAFv2IPSetScope = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-summary
wafipsSummary :: Lens' WAFv2IPSet (Maybe WAFv2IPSetIPSetSummary)
wafipsSummary = lens _wAFv2IPSetSummary (\s a -> s { _wAFv2IPSetSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-tags
wafipsTags :: Lens' WAFv2IPSet (Maybe WAFv2IPSetTagList)
wafipsTags = lens _wAFv2IPSetTags (\s a -> s { _wAFv2IPSetTags = a })
