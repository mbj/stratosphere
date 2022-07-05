{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html

module Stratosphere.Resources.EC2PrefixList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2PrefixListEntry
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2PrefixList. See 'ec2PrefixList' for a
-- more convenient constructor.
data EC2PrefixList =
  EC2PrefixList
  { _eC2PrefixListAddressFamily :: Val Text
  , _eC2PrefixListEntries :: Maybe [EC2PrefixListEntry]
  , _eC2PrefixListMaxEntries :: Val Integer
  , _eC2PrefixListPrefixListName :: Val Text
  , _eC2PrefixListTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2PrefixList where
  toResourceProperties EC2PrefixList{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::PrefixList"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AddressFamily",) . toJSON) _eC2PrefixListAddressFamily
        , fmap (("Entries",) . toJSON) _eC2PrefixListEntries
        , (Just . ("MaxEntries",) . toJSON) _eC2PrefixListMaxEntries
        , (Just . ("PrefixListName",) . toJSON) _eC2PrefixListPrefixListName
        , fmap (("Tags",) . toJSON) _eC2PrefixListTags
        ]
    }

-- | Constructor for 'EC2PrefixList' containing required fields as arguments.
ec2PrefixList
  :: Val Text -- ^ 'ecplAddressFamily'
  -> Val Integer -- ^ 'ecplMaxEntries'
  -> Val Text -- ^ 'ecplPrefixListName'
  -> EC2PrefixList
ec2PrefixList addressFamilyarg maxEntriesarg prefixListNamearg =
  EC2PrefixList
  { _eC2PrefixListAddressFamily = addressFamilyarg
  , _eC2PrefixListEntries = Nothing
  , _eC2PrefixListMaxEntries = maxEntriesarg
  , _eC2PrefixListPrefixListName = prefixListNamearg
  , _eC2PrefixListTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-addressfamily
ecplAddressFamily :: Lens' EC2PrefixList (Val Text)
ecplAddressFamily = lens _eC2PrefixListAddressFamily (\s a -> s { _eC2PrefixListAddressFamily = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-entries
ecplEntries :: Lens' EC2PrefixList (Maybe [EC2PrefixListEntry])
ecplEntries = lens _eC2PrefixListEntries (\s a -> s { _eC2PrefixListEntries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-maxentries
ecplMaxEntries :: Lens' EC2PrefixList (Val Integer)
ecplMaxEntries = lens _eC2PrefixListMaxEntries (\s a -> s { _eC2PrefixListMaxEntries = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-prefixlistname
ecplPrefixListName :: Lens' EC2PrefixList (Val Text)
ecplPrefixListName = lens _eC2PrefixListPrefixListName (\s a -> s { _eC2PrefixListPrefixListName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-prefixlist.html#cfn-ec2-prefixlist-tags
ecplTags :: Lens' EC2PrefixList (Maybe [Tag])
ecplTags = lens _eC2PrefixListTags (\s a -> s { _eC2PrefixListTags = a })
