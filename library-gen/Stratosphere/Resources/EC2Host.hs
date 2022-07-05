{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html

module Stratosphere.Resources.EC2Host where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2Host. See 'ec2Host' for a more
-- convenient constructor.
data EC2Host =
  EC2Host
  { _eC2HostAutoPlacement :: Maybe (Val Text)
  , _eC2HostAvailabilityZone :: Val Text
  , _eC2HostHostRecovery :: Maybe (Val Text)
  , _eC2HostInstanceType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2Host where
  toResourceProperties EC2Host{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::Host"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AutoPlacement",) . toJSON) _eC2HostAutoPlacement
        , (Just . ("AvailabilityZone",) . toJSON) _eC2HostAvailabilityZone
        , fmap (("HostRecovery",) . toJSON) _eC2HostHostRecovery
        , (Just . ("InstanceType",) . toJSON) _eC2HostInstanceType
        ]
    }

-- | Constructor for 'EC2Host' containing required fields as arguments.
ec2Host
  :: Val Text -- ^ 'echAvailabilityZone'
  -> Val Text -- ^ 'echInstanceType'
  -> EC2Host
ec2Host availabilityZonearg instanceTypearg =
  EC2Host
  { _eC2HostAutoPlacement = Nothing
  , _eC2HostAvailabilityZone = availabilityZonearg
  , _eC2HostHostRecovery = Nothing
  , _eC2HostInstanceType = instanceTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-autoplacement
echAutoPlacement :: Lens' EC2Host (Maybe (Val Text))
echAutoPlacement = lens _eC2HostAutoPlacement (\s a -> s { _eC2HostAutoPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-availabilityzone
echAvailabilityZone :: Lens' EC2Host (Val Text)
echAvailabilityZone = lens _eC2HostAvailabilityZone (\s a -> s { _eC2HostAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-hostrecovery
echHostRecovery :: Lens' EC2Host (Maybe (Val Text))
echHostRecovery = lens _eC2HostHostRecovery (\s a -> s { _eC2HostHostRecovery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-instancetype
echInstanceType :: Lens' EC2Host (Val Text)
echInstanceType = lens _eC2HostInstanceType (\s a -> s { _eC2HostInstanceType = a })
