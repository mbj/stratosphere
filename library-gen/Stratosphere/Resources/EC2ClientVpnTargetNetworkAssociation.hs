{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html

module Stratosphere.Resources.EC2ClientVpnTargetNetworkAssociation where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2ClientVpnTargetNetworkAssociation. See
-- 'ec2ClientVpnTargetNetworkAssociation' for a more convenient constructor.
data EC2ClientVpnTargetNetworkAssociation =
  EC2ClientVpnTargetNetworkAssociation
  { _eC2ClientVpnTargetNetworkAssociationClientVpnEndpointId :: Val Text
  , _eC2ClientVpnTargetNetworkAssociationSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2ClientVpnTargetNetworkAssociation where
  toResourceProperties EC2ClientVpnTargetNetworkAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::ClientVpnTargetNetworkAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ClientVpnEndpointId",) . toJSON) _eC2ClientVpnTargetNetworkAssociationClientVpnEndpointId
        , (Just . ("SubnetId",) . toJSON) _eC2ClientVpnTargetNetworkAssociationSubnetId
        ]
    }

-- | Constructor for 'EC2ClientVpnTargetNetworkAssociation' containing
-- required fields as arguments.
ec2ClientVpnTargetNetworkAssociation
  :: Val Text -- ^ 'eccvtnaClientVpnEndpointId'
  -> Val Text -- ^ 'eccvtnaSubnetId'
  -> EC2ClientVpnTargetNetworkAssociation
ec2ClientVpnTargetNetworkAssociation clientVpnEndpointIdarg subnetIdarg =
  EC2ClientVpnTargetNetworkAssociation
  { _eC2ClientVpnTargetNetworkAssociationClientVpnEndpointId = clientVpnEndpointIdarg
  , _eC2ClientVpnTargetNetworkAssociationSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-clientvpnendpointid
eccvtnaClientVpnEndpointId :: Lens' EC2ClientVpnTargetNetworkAssociation (Val Text)
eccvtnaClientVpnEndpointId = lens _eC2ClientVpnTargetNetworkAssociationClientVpnEndpointId (\s a -> s { _eC2ClientVpnTargetNetworkAssociationClientVpnEndpointId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-clientvpntargetnetworkassociation.html#cfn-ec2-clientvpntargetnetworkassociation-subnetid
eccvtnaSubnetId :: Lens' EC2ClientVpnTargetNetworkAssociation (Val Text)
eccvtnaSubnetId = lens _eC2ClientVpnTargetNetworkAssociationSubnetId (\s a -> s { _eC2ClientVpnTargetNetworkAssociationSubnetId = a })
