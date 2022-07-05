{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html

module Stratosphere.Resources.EC2TransitGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TransitGateway. See 'ec2TransitGateway'
-- for a more convenient constructor.
data EC2TransitGateway =
  EC2TransitGateway
  { _eC2TransitGatewayAmazonSideAsn :: Maybe (Val Integer)
  , _eC2TransitGatewayAutoAcceptSharedAttachments :: Maybe (Val Text)
  , _eC2TransitGatewayDefaultRouteTableAssociation :: Maybe (Val Text)
  , _eC2TransitGatewayDefaultRouteTablePropagation :: Maybe (Val Text)
  , _eC2TransitGatewayDescription :: Maybe (Val Text)
  , _eC2TransitGatewayDnsSupport :: Maybe (Val Text)
  , _eC2TransitGatewayMulticastSupport :: Maybe (Val Text)
  , _eC2TransitGatewayTags :: Maybe [Tag]
  , _eC2TransitGatewayVpnEcmpSupport :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGateway where
  toResourceProperties EC2TransitGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AmazonSideAsn",) . toJSON) _eC2TransitGatewayAmazonSideAsn
        , fmap (("AutoAcceptSharedAttachments",) . toJSON) _eC2TransitGatewayAutoAcceptSharedAttachments
        , fmap (("DefaultRouteTableAssociation",) . toJSON) _eC2TransitGatewayDefaultRouteTableAssociation
        , fmap (("DefaultRouteTablePropagation",) . toJSON) _eC2TransitGatewayDefaultRouteTablePropagation
        , fmap (("Description",) . toJSON) _eC2TransitGatewayDescription
        , fmap (("DnsSupport",) . toJSON) _eC2TransitGatewayDnsSupport
        , fmap (("MulticastSupport",) . toJSON) _eC2TransitGatewayMulticastSupport
        , fmap (("Tags",) . toJSON) _eC2TransitGatewayTags
        , fmap (("VpnEcmpSupport",) . toJSON) _eC2TransitGatewayVpnEcmpSupport
        ]
    }

-- | Constructor for 'EC2TransitGateway' containing required fields as
-- arguments.
ec2TransitGateway
  :: EC2TransitGateway
ec2TransitGateway  =
  EC2TransitGateway
  { _eC2TransitGatewayAmazonSideAsn = Nothing
  , _eC2TransitGatewayAutoAcceptSharedAttachments = Nothing
  , _eC2TransitGatewayDefaultRouteTableAssociation = Nothing
  , _eC2TransitGatewayDefaultRouteTablePropagation = Nothing
  , _eC2TransitGatewayDescription = Nothing
  , _eC2TransitGatewayDnsSupport = Nothing
  , _eC2TransitGatewayMulticastSupport = Nothing
  , _eC2TransitGatewayTags = Nothing
  , _eC2TransitGatewayVpnEcmpSupport = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-amazonsideasn
ectgAmazonSideAsn :: Lens' EC2TransitGateway (Maybe (Val Integer))
ectgAmazonSideAsn = lens _eC2TransitGatewayAmazonSideAsn (\s a -> s { _eC2TransitGatewayAmazonSideAsn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-autoacceptsharedattachments
ectgAutoAcceptSharedAttachments :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgAutoAcceptSharedAttachments = lens _eC2TransitGatewayAutoAcceptSharedAttachments (\s a -> s { _eC2TransitGatewayAutoAcceptSharedAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetableassociation
ectgDefaultRouteTableAssociation :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgDefaultRouteTableAssociation = lens _eC2TransitGatewayDefaultRouteTableAssociation (\s a -> s { _eC2TransitGatewayDefaultRouteTableAssociation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-defaultroutetablepropagation
ectgDefaultRouteTablePropagation :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgDefaultRouteTablePropagation = lens _eC2TransitGatewayDefaultRouteTablePropagation (\s a -> s { _eC2TransitGatewayDefaultRouteTablePropagation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-description
ectgDescription :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgDescription = lens _eC2TransitGatewayDescription (\s a -> s { _eC2TransitGatewayDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-dnssupport
ectgDnsSupport :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgDnsSupport = lens _eC2TransitGatewayDnsSupport (\s a -> s { _eC2TransitGatewayDnsSupport = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-multicastsupport
ectgMulticastSupport :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgMulticastSupport = lens _eC2TransitGatewayMulticastSupport (\s a -> s { _eC2TransitGatewayMulticastSupport = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-tags
ectgTags :: Lens' EC2TransitGateway (Maybe [Tag])
ectgTags = lens _eC2TransitGatewayTags (\s a -> s { _eC2TransitGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgateway.html#cfn-ec2-transitgateway-vpnecmpsupport
ectgVpnEcmpSupport :: Lens' EC2TransitGateway (Maybe (Val Text))
ectgVpnEcmpSupport = lens _eC2TransitGatewayVpnEcmpSupport (\s a -> s { _eC2TransitGatewayVpnEcmpSupport = a })
