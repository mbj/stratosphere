
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html

module Stratosphere.ResourceProperties.SyntheticsCanaryVPCConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SyntheticsCanaryVPCConfig. See
-- 'syntheticsCanaryVPCConfig' for a more convenient constructor.
data SyntheticsCanaryVPCConfig =
  SyntheticsCanaryVPCConfig
  { _syntheticsCanaryVPCConfigSecurityGroupIds :: ValList Text
  , _syntheticsCanaryVPCConfigSubnetIds :: ValList Text
  , _syntheticsCanaryVPCConfigVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SyntheticsCanaryVPCConfig where
  toJSON SyntheticsCanaryVPCConfig{..} =
    object $
    catMaybes
    [ (Just . ("SecurityGroupIds",) . toJSON) _syntheticsCanaryVPCConfigSecurityGroupIds
    , (Just . ("SubnetIds",) . toJSON) _syntheticsCanaryVPCConfigSubnetIds
    , fmap (("VpcId",) . toJSON) _syntheticsCanaryVPCConfigVpcId
    ]

-- | Constructor for 'SyntheticsCanaryVPCConfig' containing required fields as
-- arguments.
syntheticsCanaryVPCConfig
  :: ValList Text -- ^ 'scvpccSecurityGroupIds'
  -> ValList Text -- ^ 'scvpccSubnetIds'
  -> SyntheticsCanaryVPCConfig
syntheticsCanaryVPCConfig securityGroupIdsarg subnetIdsarg =
  SyntheticsCanaryVPCConfig
  { _syntheticsCanaryVPCConfigSecurityGroupIds = securityGroupIdsarg
  , _syntheticsCanaryVPCConfigSubnetIds = subnetIdsarg
  , _syntheticsCanaryVPCConfigVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-securitygroupids
scvpccSecurityGroupIds :: Lens' SyntheticsCanaryVPCConfig (ValList Text)
scvpccSecurityGroupIds = lens _syntheticsCanaryVPCConfigSecurityGroupIds (\s a -> s { _syntheticsCanaryVPCConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-subnetids
scvpccSubnetIds :: Lens' SyntheticsCanaryVPCConfig (ValList Text)
scvpccSubnetIds = lens _syntheticsCanaryVPCConfigSubnetIds (\s a -> s { _syntheticsCanaryVPCConfigSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-synthetics-canary-vpcconfig.html#cfn-synthetics-canary-vpcconfig-vpcid
scvpccVpcId :: Lens' SyntheticsCanaryVPCConfig (Maybe (Val Text))
scvpccVpcId = lens _syntheticsCanaryVPCConfigVpcId (\s a -> s { _syntheticsCanaryVPCConfigVpcId = a })
