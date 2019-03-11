{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateIpv6Add where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateIpv6Add. See
-- 'ec2LaunchTemplateIpv6Add' for a more convenient constructor.
data EC2LaunchTemplateIpv6Add =
  EC2LaunchTemplateIpv6Add
  { _eC2LaunchTemplateIpv6AddIpv6Address :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateIpv6Add where
  toJSON EC2LaunchTemplateIpv6Add{..} =
    object $
    catMaybes
    [ fmap (("Ipv6Address",) . toJSON) _eC2LaunchTemplateIpv6AddIpv6Address
    ]

-- | Constructor for 'EC2LaunchTemplateIpv6Add' containing required fields as
-- arguments.
ec2LaunchTemplateIpv6Add
  :: EC2LaunchTemplateIpv6Add
ec2LaunchTemplateIpv6Add  =
  EC2LaunchTemplateIpv6Add
  { _eC2LaunchTemplateIpv6AddIpv6Address = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv6add.html#cfn-ec2-launchtemplate-ipv6add-ipv6address
ecltiaIpv6Address :: Lens' EC2LaunchTemplateIpv6Add (Maybe (Val Text))
ecltiaIpv6Address = lens _eC2LaunchTemplateIpv6AddIpv6Address (\s a -> s { _eC2LaunchTemplateIpv6AddIpv6Address = a })
