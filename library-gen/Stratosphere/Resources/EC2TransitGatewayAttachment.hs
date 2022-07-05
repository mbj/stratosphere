{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html

module Stratosphere.Resources.EC2TransitGatewayAttachment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TransitGatewayAttachment. See
-- 'ec2TransitGatewayAttachment' for a more convenient constructor.
data EC2TransitGatewayAttachment =
  EC2TransitGatewayAttachment
  { _eC2TransitGatewayAttachmentSubnetIds :: ValList Text
  , _eC2TransitGatewayAttachmentTags :: Maybe [Tag]
  , _eC2TransitGatewayAttachmentTransitGatewayId :: Val Text
  , _eC2TransitGatewayAttachmentVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2TransitGatewayAttachment where
  toResourceProperties EC2TransitGatewayAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TransitGatewayAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("SubnetIds",) . toJSON) _eC2TransitGatewayAttachmentSubnetIds
        , fmap (("Tags",) . toJSON) _eC2TransitGatewayAttachmentTags
        , (Just . ("TransitGatewayId",) . toJSON) _eC2TransitGatewayAttachmentTransitGatewayId
        , (Just . ("VpcId",) . toJSON) _eC2TransitGatewayAttachmentVpcId
        ]
    }

-- | Constructor for 'EC2TransitGatewayAttachment' containing required fields
-- as arguments.
ec2TransitGatewayAttachment
  :: ValList Text -- ^ 'ectgaSubnetIds'
  -> Val Text -- ^ 'ectgaTransitGatewayId'
  -> Val Text -- ^ 'ectgaVpcId'
  -> EC2TransitGatewayAttachment
ec2TransitGatewayAttachment subnetIdsarg transitGatewayIdarg vpcIdarg =
  EC2TransitGatewayAttachment
  { _eC2TransitGatewayAttachmentSubnetIds = subnetIdsarg
  , _eC2TransitGatewayAttachmentTags = Nothing
  , _eC2TransitGatewayAttachmentTransitGatewayId = transitGatewayIdarg
  , _eC2TransitGatewayAttachmentVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-subnetids
ectgaSubnetIds :: Lens' EC2TransitGatewayAttachment (ValList Text)
ectgaSubnetIds = lens _eC2TransitGatewayAttachmentSubnetIds (\s a -> s { _eC2TransitGatewayAttachmentSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-tags
ectgaTags :: Lens' EC2TransitGatewayAttachment (Maybe [Tag])
ectgaTags = lens _eC2TransitGatewayAttachmentTags (\s a -> s { _eC2TransitGatewayAttachmentTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-transitgatewayid
ectgaTransitGatewayId :: Lens' EC2TransitGatewayAttachment (Val Text)
ectgaTransitGatewayId = lens _eC2TransitGatewayAttachmentTransitGatewayId (\s a -> s { _eC2TransitGatewayAttachmentTransitGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewayattachment.html#cfn-ec2-transitgatewayattachment-vpcid
ectgaVpcId :: Lens' EC2TransitGatewayAttachment (Val Text)
ectgaVpcId = lens _eC2TransitGatewayAttachmentVpcId (\s a -> s { _eC2TransitGatewayAttachmentVpcId = a })
