{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html

module Stratosphere.ResourceProperties.EC2LaunchTemplatePrivateIpAdd where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplatePrivateIpAdd. See
-- 'ec2LaunchTemplatePrivateIpAdd' for a more convenient constructor.
data EC2LaunchTemplatePrivateIpAdd =
  EC2LaunchTemplatePrivateIpAdd
  { _eC2LaunchTemplatePrivateIpAddPrimary :: Maybe (Val Bool)
  , _eC2LaunchTemplatePrivateIpAddPrivateIpAddress :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplatePrivateIpAdd where
  toJSON EC2LaunchTemplatePrivateIpAdd{..} =
    object $
    catMaybes
    [ fmap (("Primary",) . toJSON) _eC2LaunchTemplatePrivateIpAddPrimary
    , fmap (("PrivateIpAddress",) . toJSON) _eC2LaunchTemplatePrivateIpAddPrivateIpAddress
    ]

-- | Constructor for 'EC2LaunchTemplatePrivateIpAdd' containing required
-- fields as arguments.
ec2LaunchTemplatePrivateIpAdd
  :: EC2LaunchTemplatePrivateIpAdd
ec2LaunchTemplatePrivateIpAdd  =
  EC2LaunchTemplatePrivateIpAdd
  { _eC2LaunchTemplatePrivateIpAddPrimary = Nothing
  , _eC2LaunchTemplatePrivateIpAddPrivateIpAddress = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html#cfn-ec2-launchtemplate-privateipadd-primary
ecltpiaPrimary :: Lens' EC2LaunchTemplatePrivateIpAdd (Maybe (Val Bool))
ecltpiaPrimary = lens _eC2LaunchTemplatePrivateIpAddPrimary (\s a -> s { _eC2LaunchTemplatePrivateIpAddPrimary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-privateipadd.html#cfn-ec2-launchtemplate-privateipadd-privateipaddress
ecltpiaPrivateIpAddress :: Lens' EC2LaunchTemplatePrivateIpAdd (Maybe (Val Text))
ecltpiaPrivateIpAddress = lens _eC2LaunchTemplatePrivateIpAddPrivateIpAddress (\s a -> s { _eC2LaunchTemplatePrivateIpAddPrivateIpAddress = a })
