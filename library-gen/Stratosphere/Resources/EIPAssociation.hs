{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::EIPAssociation resource type associates an Elastic IP
-- address with an Amazon EC2 instance. The Elastic IP address can be an
-- existing Elastic IP address or an Elastic IP address allocated through an
-- AWS::EC2::EIP resource. This type supports updates. For more information
-- about updating stacks, see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.EIPAssociation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EIPAssociation. See 'eipAssociation' for a
-- more convenient constructor.
data EIPAssociation =
  EIPAssociation
  { _eIPAssociationAllocationId :: Maybe (Val Text)
  , _eIPAssociationEIP :: Maybe (Val Text)
  , _eIPAssociationInstanceId :: Maybe (Val Text)
  , _eIPAssociationNetworkInterfaceId :: Maybe (Val Text)
  , _eIPAssociationPrivateIpAddress :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EIPAssociation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON EIPAssociation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

-- | Constructor for 'EIPAssociation' containing required fields as arguments.
eipAssociation
  :: EIPAssociation
eipAssociation  =
  EIPAssociation
  { _eIPAssociationAllocationId = Nothing
  , _eIPAssociationEIP = Nothing
  , _eIPAssociationInstanceId = Nothing
  , _eIPAssociationNetworkInterfaceId = Nothing
  , _eIPAssociationPrivateIpAddress = Nothing
  }

-- | Allocation ID for the VPC Elastic IP address you want to associate with
-- an Amazon EC2 instance in your VPC.
eipaAllocationId :: Lens' EIPAssociation (Maybe (Val Text))
eipaAllocationId = lens _eIPAssociationAllocationId (\s a -> s { _eIPAssociationAllocationId = a })

-- | Elastic IP address that you want to associate with the Amazon EC2
-- instance specified by the InstanceId property. You can specify an existing
-- Elastic IP address or a reference to an Elastic IP address allocated with a
-- AWS::EC2::EIP resource.
eipaEIP :: Lens' EIPAssociation (Maybe (Val Text))
eipaEIP = lens _eIPAssociationEIP (\s a -> s { _eIPAssociationEIP = a })

-- | Instance ID of the Amazon EC2 instance that you want to associate with
-- the Elastic IP address specified by the EIP property.
eipaInstanceId :: Lens' EIPAssociation (Maybe (Val Text))
eipaInstanceId = lens _eIPAssociationInstanceId (\s a -> s { _eIPAssociationInstanceId = a })

-- | The ID of the network interface to associate with the Elastic IP address
-- (VPC only).
eipaNetworkInterfaceId :: Lens' EIPAssociation (Maybe (Val Text))
eipaNetworkInterfaceId = lens _eIPAssociationNetworkInterfaceId (\s a -> s { _eIPAssociationNetworkInterfaceId = a })

-- | The private IP address that you want to associate with the Elastic IP
-- address. The private IP address is restricted to the primary and secondary
-- private IP addresses that are associated with the network interface. By
-- default, the private IP address that is associated with the EIP is the
-- primary private IP address of the network interface.
eipaPrivateIpAddress :: Lens' EIPAssociation (Maybe (Val Text))
eipaPrivateIpAddress = lens _eIPAssociationPrivateIpAddress (\s a -> s { _eIPAssociationPrivateIpAddress = a })