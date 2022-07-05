{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-carriergateway.html

module Stratosphere.Resources.EC2CarrierGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2CarrierGatewayTags

-- | Full data type definition for EC2CarrierGateway. See 'ec2CarrierGateway'
-- for a more convenient constructor.
data EC2CarrierGateway =
  EC2CarrierGateway
  { _eC2CarrierGatewayTags :: Maybe EC2CarrierGatewayTags
  , _eC2CarrierGatewayVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2CarrierGateway where
  toResourceProperties EC2CarrierGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::CarrierGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Tags",) . toJSON) _eC2CarrierGatewayTags
        , (Just . ("VpcId",) . toJSON) _eC2CarrierGatewayVpcId
        ]
    }

-- | Constructor for 'EC2CarrierGateway' containing required fields as
-- arguments.
ec2CarrierGateway
  :: Val Text -- ^ 'eccagVpcId'
  -> EC2CarrierGateway
ec2CarrierGateway vpcIdarg =
  EC2CarrierGateway
  { _eC2CarrierGatewayTags = Nothing
  , _eC2CarrierGatewayVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-carriergateway.html#cfn-ec2-carriergateway-tags
eccagTags :: Lens' EC2CarrierGateway (Maybe EC2CarrierGatewayTags)
eccagTags = lens _eC2CarrierGatewayTags (\s a -> s { _eC2CarrierGatewayTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-carriergateway.html#cfn-ec2-carriergateway-vpcid
eccagVpcId :: Lens' EC2CarrierGateway (Val Text)
eccagVpcId = lens _eC2CarrierGatewayVpcId (\s a -> s { _eC2CarrierGatewayVpcId = a })
