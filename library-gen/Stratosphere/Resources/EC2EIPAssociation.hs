{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html

module Stratosphere.Resources.EC2EIPAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2EIPAssociation. See 'ec2EIPAssociation'
-- for a more convenient constructor.
data EC2EIPAssociation =
  EC2EIPAssociation
  { _eC2EIPAssociationAllocationId :: Maybe (Val Text)
  , _eC2EIPAssociationEIP :: Maybe (Val Text)
  , _eC2EIPAssociationInstanceId :: Maybe (Val Text)
  , _eC2EIPAssociationNetworkInterfaceId :: Maybe (Val Text)
  , _eC2EIPAssociationPrivateIpAddress :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2EIPAssociation where
  toResourceProperties EC2EIPAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::EIPAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllocationId",) . toJSON) _eC2EIPAssociationAllocationId
        , fmap (("EIP",) . toJSON) _eC2EIPAssociationEIP
        , fmap (("InstanceId",) . toJSON) _eC2EIPAssociationInstanceId
        , fmap (("NetworkInterfaceId",) . toJSON) _eC2EIPAssociationNetworkInterfaceId
        , fmap (("PrivateIpAddress",) . toJSON) _eC2EIPAssociationPrivateIpAddress
        ]
    }

-- | Constructor for 'EC2EIPAssociation' containing required fields as
-- arguments.
ec2EIPAssociation
  :: EC2EIPAssociation
ec2EIPAssociation  =
  EC2EIPAssociation
  { _eC2EIPAssociationAllocationId = Nothing
  , _eC2EIPAssociationEIP = Nothing
  , _eC2EIPAssociationInstanceId = Nothing
  , _eC2EIPAssociationNetworkInterfaceId = Nothing
  , _eC2EIPAssociationPrivateIpAddress = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-allocationid
eceipaAllocationId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaAllocationId = lens _eC2EIPAssociationAllocationId (\s a -> s { _eC2EIPAssociationAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-eip
eceipaEIP :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaEIP = lens _eC2EIPAssociationEIP (\s a -> s { _eC2EIPAssociationEIP = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-instanceid
eceipaInstanceId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaInstanceId = lens _eC2EIPAssociationInstanceId (\s a -> s { _eC2EIPAssociationInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-networkinterfaceid
eceipaNetworkInterfaceId :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaNetworkInterfaceId = lens _eC2EIPAssociationNetworkInterfaceId (\s a -> s { _eC2EIPAssociationNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-eip-association.html#cfn-ec2-eipassociation-PrivateIpAddress
eceipaPrivateIpAddress :: Lens' EC2EIPAssociation (Maybe (Val Text))
eceipaPrivateIpAddress = lens _eC2EIPAssociationPrivateIpAddress (\s a -> s { _eC2EIPAssociationPrivateIpAddress = a })
