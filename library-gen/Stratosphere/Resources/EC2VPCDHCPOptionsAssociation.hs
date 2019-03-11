{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html

module Stratosphere.Resources.EC2VPCDHCPOptionsAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2VPCDHCPOptionsAssociation. See
-- 'ec2VPCDHCPOptionsAssociation' for a more convenient constructor.
data EC2VPCDHCPOptionsAssociation =
  EC2VPCDHCPOptionsAssociation
  { _eC2VPCDHCPOptionsAssociationDhcpOptionsId :: Val Text
  , _eC2VPCDHCPOptionsAssociationVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2VPCDHCPOptionsAssociation where
  toJSON EC2VPCDHCPOptionsAssociation{..} =
    object $
    catMaybes
    [ (Just . ("DhcpOptionsId",) . toJSON) _eC2VPCDHCPOptionsAssociationDhcpOptionsId
    , (Just . ("VpcId",) . toJSON) _eC2VPCDHCPOptionsAssociationVpcId
    ]

-- | Constructor for 'EC2VPCDHCPOptionsAssociation' containing required fields
-- as arguments.
ec2VPCDHCPOptionsAssociation
  :: Val Text -- ^ 'ecvpcdhcpoaDhcpOptionsId'
  -> Val Text -- ^ 'ecvpcdhcpoaVpcId'
  -> EC2VPCDHCPOptionsAssociation
ec2VPCDHCPOptionsAssociation dhcpOptionsIdarg vpcIdarg =
  EC2VPCDHCPOptionsAssociation
  { _eC2VPCDHCPOptionsAssociationDhcpOptionsId = dhcpOptionsIdarg
  , _eC2VPCDHCPOptionsAssociationVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-dhcpoptionsid
ecvpcdhcpoaDhcpOptionsId :: Lens' EC2VPCDHCPOptionsAssociation (Val Text)
ecvpcdhcpoaDhcpOptionsId = lens _eC2VPCDHCPOptionsAssociationDhcpOptionsId (\s a -> s { _eC2VPCDHCPOptionsAssociationDhcpOptionsId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-dhcp-options-assoc.html#cfn-ec2-vpcdhcpoptionsassociation-vpcid
ecvpcdhcpoaVpcId :: Lens' EC2VPCDHCPOptionsAssociation (Val Text)
ecvpcdhcpoaVpcId = lens _eC2VPCDHCPOptionsAssociationVpcId (\s a -> s { _eC2VPCDHCPOptionsAssociationVpcId = a })
