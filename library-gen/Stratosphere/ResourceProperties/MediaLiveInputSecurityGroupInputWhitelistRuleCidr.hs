{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html

module Stratosphere.ResourceProperties.MediaLiveInputSecurityGroupInputWhitelistRuleCidr where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- MediaLiveInputSecurityGroupInputWhitelistRuleCidr. See
-- 'mediaLiveInputSecurityGroupInputWhitelistRuleCidr' for a more convenient
-- constructor.
data MediaLiveInputSecurityGroupInputWhitelistRuleCidr =
  MediaLiveInputSecurityGroupInputWhitelistRuleCidr
  { _mediaLiveInputSecurityGroupInputWhitelistRuleCidrCidr :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputSecurityGroupInputWhitelistRuleCidr where
  toJSON MediaLiveInputSecurityGroupInputWhitelistRuleCidr{..} =
    object $
    catMaybes
    [ fmap (("Cidr",) . toJSON) _mediaLiveInputSecurityGroupInputWhitelistRuleCidrCidr
    ]

-- | Constructor for 'MediaLiveInputSecurityGroupInputWhitelistRuleCidr'
-- containing required fields as arguments.
mediaLiveInputSecurityGroupInputWhitelistRuleCidr
  :: MediaLiveInputSecurityGroupInputWhitelistRuleCidr
mediaLiveInputSecurityGroupInputWhitelistRuleCidr  =
  MediaLiveInputSecurityGroupInputWhitelistRuleCidr
  { _mediaLiveInputSecurityGroupInputWhitelistRuleCidrCidr = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-inputsecuritygroup-inputwhitelistrulecidr.html#cfn-medialive-inputsecuritygroup-inputwhitelistrulecidr-cidr
mlisgiwrcCidr :: Lens' MediaLiveInputSecurityGroupInputWhitelistRuleCidr (Maybe (Val Text))
mlisgiwrcCidr = lens _mediaLiveInputSecurityGroupInputWhitelistRuleCidrCidr (\s a -> s { _mediaLiveInputSecurityGroupInputWhitelistRuleCidrCidr = a })
