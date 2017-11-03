{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html

module Stratosphere.ResourceProperties.EC2VPNConnectionVpnTunnelOptionsSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- EC2VPNConnectionVpnTunnelOptionsSpecification. See
-- 'ec2VPNConnectionVpnTunnelOptionsSpecification' for a more convenient
-- constructor.
data EC2VPNConnectionVpnTunnelOptionsSpecification =
  EC2VPNConnectionVpnTunnelOptionsSpecification
  { _eC2VPNConnectionVpnTunnelOptionsSpecificationPreSharedKey :: Maybe (Val Text)
  , _eC2VPNConnectionVpnTunnelOptionsSpecificationTunnelInsideCidr :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2VPNConnectionVpnTunnelOptionsSpecification where
  toJSON EC2VPNConnectionVpnTunnelOptionsSpecification{..} =
    object $
    catMaybes
    [ fmap (("PreSharedKey",) . toJSON) _eC2VPNConnectionVpnTunnelOptionsSpecificationPreSharedKey
    , fmap (("TunnelInsideCidr",) . toJSON) _eC2VPNConnectionVpnTunnelOptionsSpecificationTunnelInsideCidr
    ]

instance FromJSON EC2VPNConnectionVpnTunnelOptionsSpecification where
  parseJSON (Object obj) =
    EC2VPNConnectionVpnTunnelOptionsSpecification <$>
      (obj .:? "PreSharedKey") <*>
      (obj .:? "TunnelInsideCidr")
  parseJSON _ = mempty

-- | Constructor for 'EC2VPNConnectionVpnTunnelOptionsSpecification'
-- containing required fields as arguments.
ec2VPNConnectionVpnTunnelOptionsSpecification
  :: EC2VPNConnectionVpnTunnelOptionsSpecification
ec2VPNConnectionVpnTunnelOptionsSpecification  =
  EC2VPNConnectionVpnTunnelOptionsSpecification
  { _eC2VPNConnectionVpnTunnelOptionsSpecificationPreSharedKey = Nothing
  , _eC2VPNConnectionVpnTunnelOptionsSpecificationTunnelInsideCidr = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-presharedkey
ecvpncvtosPreSharedKey :: Lens' EC2VPNConnectionVpnTunnelOptionsSpecification (Maybe (Val Text))
ecvpncvtosPreSharedKey = lens _eC2VPNConnectionVpnTunnelOptionsSpecificationPreSharedKey (\s a -> s { _eC2VPNConnectionVpnTunnelOptionsSpecificationPreSharedKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-vpnconnection-vpntunneloptionsspecification.html#cfn-ec2-vpnconnection-vpntunneloptionsspecification-tunnelinsidecidr
ecvpncvtosTunnelInsideCidr :: Lens' EC2VPNConnectionVpnTunnelOptionsSpecification (Maybe (Val Text))
ecvpncvtosTunnelInsideCidr = lens _eC2VPNConnectionVpnTunnelOptionsSpecificationTunnelInsideCidr (\s a -> s { _eC2VPNConnectionVpnTunnelOptionsSpecificationTunnelInsideCidr = a })
