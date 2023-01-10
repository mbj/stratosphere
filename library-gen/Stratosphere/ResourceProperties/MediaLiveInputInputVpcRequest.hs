
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html

module Stratosphere.ResourceProperties.MediaLiveInputInputVpcRequest where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MediaLiveInputInputVpcRequest. See
-- 'mediaLiveInputInputVpcRequest' for a more convenient constructor.
data MediaLiveInputInputVpcRequest =
  MediaLiveInputInputVpcRequest
  { _mediaLiveInputInputVpcRequestSecurityGroupIds :: Maybe (ValList Text)
  , _mediaLiveInputInputVpcRequestSubnetIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON MediaLiveInputInputVpcRequest where
  toJSON MediaLiveInputInputVpcRequest{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _mediaLiveInputInputVpcRequestSecurityGroupIds
    , fmap (("SubnetIds",) . toJSON) _mediaLiveInputInputVpcRequestSubnetIds
    ]

-- | Constructor for 'MediaLiveInputInputVpcRequest' containing required
-- fields as arguments.
mediaLiveInputInputVpcRequest
  :: MediaLiveInputInputVpcRequest
mediaLiveInputInputVpcRequest  =
  MediaLiveInputInputVpcRequest
  { _mediaLiveInputInputVpcRequestSecurityGroupIds = Nothing
  , _mediaLiveInputInputVpcRequestSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-securitygroupids
mliivrSecurityGroupIds :: Lens' MediaLiveInputInputVpcRequest (Maybe (ValList Text))
mliivrSecurityGroupIds = lens _mediaLiveInputInputVpcRequestSecurityGroupIds (\s a -> s { _mediaLiveInputInputVpcRequestSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputvpcrequest.html#cfn-medialive-input-inputvpcrequest-subnetids
mliivrSubnetIds :: Lens' MediaLiveInputInputVpcRequest (Maybe (ValList Text))
mliivrSubnetIds = lens _mediaLiveInputInputVpcRequestSubnetIds (\s a -> s { _mediaLiveInputInputVpcRequestSubnetIds = a })
