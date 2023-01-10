
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-carriergateway-tags.html

module Stratosphere.ResourceProperties.EC2CarrierGatewayTags where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2CarrierGatewayTags. See
-- 'ec2CarrierGatewayTags' for a more convenient constructor.
data EC2CarrierGatewayTags =
  EC2CarrierGatewayTags
  { _eC2CarrierGatewayTagsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2CarrierGatewayTags where
  toJSON EC2CarrierGatewayTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _eC2CarrierGatewayTagsTags
    ]

-- | Constructor for 'EC2CarrierGatewayTags' containing required fields as
-- arguments.
ec2CarrierGatewayTags
  :: EC2CarrierGatewayTags
ec2CarrierGatewayTags  =
  EC2CarrierGatewayTags
  { _eC2CarrierGatewayTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-carriergateway-tags.html#cfn-ec2-carriergateway-tags-tags
eccgtTags :: Lens' EC2CarrierGatewayTags (Maybe [Tag])
eccgtTags = lens _eC2CarrierGatewayTagsTags (\s a -> s { _eC2CarrierGatewayTagsTags = a })
