{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-prefixlist-entry.html

module Stratosphere.ResourceProperties.EC2PrefixListEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2PrefixListEntry. See
-- 'ec2PrefixListEntry' for a more convenient constructor.
data EC2PrefixListEntry =
  EC2PrefixListEntry
  { _eC2PrefixListEntryCidr :: Val Text
  , _eC2PrefixListEntryDescription :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2PrefixListEntry where
  toJSON EC2PrefixListEntry{..} =
    object $
    catMaybes
    [ (Just . ("Cidr",) . toJSON) _eC2PrefixListEntryCidr
    , fmap (("Description",) . toJSON) _eC2PrefixListEntryDescription
    ]

-- | Constructor for 'EC2PrefixListEntry' containing required fields as
-- arguments.
ec2PrefixListEntry
  :: Val Text -- ^ 'ecpleCidr'
  -> EC2PrefixListEntry
ec2PrefixListEntry cidrarg =
  EC2PrefixListEntry
  { _eC2PrefixListEntryCidr = cidrarg
  , _eC2PrefixListEntryDescription = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-prefixlist-entry.html#cfn-ec2-prefixlist-entry-cidr
ecpleCidr :: Lens' EC2PrefixListEntry (Val Text)
ecpleCidr = lens _eC2PrefixListEntryCidr (\s a -> s { _eC2PrefixListEntryCidr = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-prefixlist-entry.html#cfn-ec2-prefixlist-entry-description
ecpleDescription :: Lens' EC2PrefixListEntry (Maybe (Val Text))
ecpleDescription = lens _eC2PrefixListEntryDescription (\s a -> s { _eC2PrefixListEntryDescription = a })
