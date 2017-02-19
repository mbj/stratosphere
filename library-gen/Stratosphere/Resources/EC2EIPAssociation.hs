{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html

module Stratosphere.Resources.EC2EIPAssociation where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2EIPAssociation. See 'ec2EIPAssociation'
-- | for a more convenient constructor.
data EC2EIPAssociation =
  EC2EIPAssociation
  { _eC2EIPAssociationAllocationId :: Maybe (Val Text)
  , _eC2EIPAssociationEip :: Maybe (Val Text)
  , _eC2EIPAssociationInstanceId :: Maybe (Val Text)
  , _eC2EIPAssociationNetworkInterfaceId :: Maybe (Val Text)
  , _eC2EIPAssociationPrivateIpAddress :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EIPAssociation where
  toJSON EC2EIPAssociation{..} =
    object $
    catMaybes
    [ ("AllocationId" .=) <$> _eC2EIPAssociationAllocationId
    , ("Eip" .=) <$> _eC2EIPAssociationEip
    , ("InstanceId" .=) <$> _eC2EIPAssociationInstanceId
    , ("NetworkInterfaceId" .=) <$> _eC2EIPAssociationNetworkInterfaceId
    , ("PrivateIpAddress" .=) <$> _eC2EIPAssociationPrivateIpAddress
    ]

instance FromJSON EC2EIPAssociation where
  parseJSON (Object obj) =
    EC2EIPAssociation <$>
      obj .:? "AllocationId" <*>
      obj .:? "Eip" <*>
      obj .:? "InstanceId" <*>
      obj .:? "NetworkInterfaceId" <*>
      obj .:? "PrivateIpAddress"
  parseJSON _ = mempty

-- | Constructor for 'EC2EIPAssociation' containing required fields as
-- | arguments.
ec2EIPAssociation
  :: EC2EIPAssociation
ec2EIPAssociation  =
  EC2EIPAssociation
  { _eC2EIPAssociationAllocationId = Nothing
  , _eC2EIPAssociationEip = Nothing
  , _eC2EIPAssociationInstanceId = Nothing
  , _eC2EIPAssociationNetworkInterfaceId = Nothing
  , _eC2EIPAssociationPrivateIpAddress = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-allocationid
eceipaAllocationId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaAllocationId = lens _eC2EIPAssociationAllocationId (\s a -> s { _eC2EIPAssociationAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-eip
eceipaEip :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaEip = lens _eC2EIPAssociationEip (\s a -> s { _eC2EIPAssociationEip = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-instanceid
eceipaInstanceId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaInstanceId = lens _eC2EIPAssociationInstanceId (\s a -> s { _eC2EIPAssociationInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-networkinterfaceid
eceipaNetworkInterfaceId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaNetworkInterfaceId = lens _eC2EIPAssociationNetworkInterfaceId (\s a -> s { _eC2EIPAssociationNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-PrivateIpAddress
eceipaPrivateIpAddress :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaPrivateIpAddress = lens _eC2EIPAssociationPrivateIpAddress (\s a -> s { _eC2EIPAssociationPrivateIpAddress = a })
