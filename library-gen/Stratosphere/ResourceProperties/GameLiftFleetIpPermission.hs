{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html

module Stratosphere.ResourceProperties.GameLiftFleetIpPermission where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for GameLiftFleetIpPermission. See
-- | 'gameLiftFleetIpPermission' for a more convenient constructor.
data GameLiftFleetIpPermission =
  GameLiftFleetIpPermission
  { _gameLiftFleetIpPermissionFromPort :: Val Integer'
  , _gameLiftFleetIpPermissionIpRange :: Val Text
  , _gameLiftFleetIpPermissionProtocol :: Val Text
  , _gameLiftFleetIpPermissionToPort :: Val Integer'
  } deriving (Show, Eq, Generic)

instance ToJSON GameLiftFleetIpPermission where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON GameLiftFleetIpPermission where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'GameLiftFleetIpPermission' containing required fields as
-- | arguments.
gameLiftFleetIpPermission
  :: Val Integer' -- ^ 'glfipFromPort'
  -> Val Text -- ^ 'glfipIpRange'
  -> Val Text -- ^ 'glfipProtocol'
  -> Val Integer' -- ^ 'glfipToPort'
  -> GameLiftFleetIpPermission
gameLiftFleetIpPermission fromPortarg ipRangearg protocolarg toPortarg =
  GameLiftFleetIpPermission
  { _gameLiftFleetIpPermissionFromPort = fromPortarg
  , _gameLiftFleetIpPermissionIpRange = ipRangearg
  , _gameLiftFleetIpPermissionProtocol = protocolarg
  , _gameLiftFleetIpPermissionToPort = toPortarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-fromport
glfipFromPort :: Lens' GameLiftFleetIpPermission (Val Integer')
glfipFromPort = lens _gameLiftFleetIpPermissionFromPort (\s a -> s { _gameLiftFleetIpPermissionFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-iprange
glfipIpRange :: Lens' GameLiftFleetIpPermission (Val Text)
glfipIpRange = lens _gameLiftFleetIpPermissionIpRange (\s a -> s { _gameLiftFleetIpPermissionIpRange = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-protocol
glfipProtocol :: Lens' GameLiftFleetIpPermission (Val Text)
glfipProtocol = lens _gameLiftFleetIpPermissionProtocol (\s a -> s { _gameLiftFleetIpPermissionProtocol = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-ec2inboundpermission.html#cfn-gamelift-fleet-ec2inboundpermissions-toport
glfipToPort :: Lens' GameLiftFleetIpPermission (Val Integer')
glfipToPort = lens _gameLiftFleetIpPermissionToPort (\s a -> s { _gameLiftFleetIpPermissionToPort = a })
