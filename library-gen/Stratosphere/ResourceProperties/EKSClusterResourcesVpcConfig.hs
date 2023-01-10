
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html

module Stratosphere.ResourceProperties.EKSClusterResourcesVpcConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EKSClusterResourcesVpcConfig. See
-- 'eksClusterResourcesVpcConfig' for a more convenient constructor.
data EKSClusterResourcesVpcConfig =
  EKSClusterResourcesVpcConfig
  { _eKSClusterResourcesVpcConfigSecurityGroupIds :: Maybe (ValList Text)
  , _eKSClusterResourcesVpcConfigSubnetIds :: ValList Text
  } deriving (Show, Eq)

instance ToJSON EKSClusterResourcesVpcConfig where
  toJSON EKSClusterResourcesVpcConfig{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _eKSClusterResourcesVpcConfigSecurityGroupIds
    , (Just . ("SubnetIds",) . toJSON) _eKSClusterResourcesVpcConfigSubnetIds
    ]

-- | Constructor for 'EKSClusterResourcesVpcConfig' containing required fields
-- as arguments.
eksClusterResourcesVpcConfig
  :: ValList Text -- ^ 'ekscrvcSubnetIds'
  -> EKSClusterResourcesVpcConfig
eksClusterResourcesVpcConfig subnetIdsarg =
  EKSClusterResourcesVpcConfig
  { _eKSClusterResourcesVpcConfigSecurityGroupIds = Nothing
  , _eKSClusterResourcesVpcConfigSubnetIds = subnetIdsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-securitygroupids
ekscrvcSecurityGroupIds :: Lens' EKSClusterResourcesVpcConfig (Maybe (ValList Text))
ekscrvcSecurityGroupIds = lens _eKSClusterResourcesVpcConfigSecurityGroupIds (\s a -> s { _eKSClusterResourcesVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-resourcesvpcconfig.html#cfn-eks-cluster-resourcesvpcconfig-subnetids
ekscrvcSubnetIds :: Lens' EKSClusterResourcesVpcConfig (ValList Text)
ekscrvcSubnetIds = lens _eKSClusterResourcesVpcConfigSubnetIds (\s a -> s { _eKSClusterResourcesVpcConfigSubnetIds = a })
