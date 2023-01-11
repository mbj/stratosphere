
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html

module Stratosphere.ResourceProperties.SageMakerModelVpcConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerModelVpcConfig. See
-- 'sageMakerModelVpcConfig' for a more convenient constructor.
data SageMakerModelVpcConfig =
  SageMakerModelVpcConfig
  { _sageMakerModelVpcConfigSecurityGroupIds :: ValList Text
  , _sageMakerModelVpcConfigSubnets :: ValList Text
  } deriving (Show, Eq)

instance ToJSON SageMakerModelVpcConfig where
  toJSON SageMakerModelVpcConfig{..} =
    object $
    catMaybes
    [ (Just . ("SecurityGroupIds",) . toJSON) _sageMakerModelVpcConfigSecurityGroupIds
    , (Just . ("Subnets",) . toJSON) _sageMakerModelVpcConfigSubnets
    ]

-- | Constructor for 'SageMakerModelVpcConfig' containing required fields as
-- arguments.
sageMakerModelVpcConfig
  :: ValList Text -- ^ 'smmvcSecurityGroupIds'
  -> ValList Text -- ^ 'smmvcSubnets'
  -> SageMakerModelVpcConfig
sageMakerModelVpcConfig securityGroupIdsarg subnetsarg =
  SageMakerModelVpcConfig
  { _sageMakerModelVpcConfigSecurityGroupIds = securityGroupIdsarg
  , _sageMakerModelVpcConfigSubnets = subnetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-securitygroupids
smmvcSecurityGroupIds :: Lens' SageMakerModelVpcConfig (ValList Text)
smmvcSecurityGroupIds = lens _sageMakerModelVpcConfigSecurityGroupIds (\s a -> s { _sageMakerModelVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-model-vpcconfig.html#cfn-sagemaker-model-vpcconfig-subnets
smmvcSubnets :: Lens' SageMakerModelVpcConfig (ValList Text)
smmvcSubnets = lens _sageMakerModelVpcConfigSubnets (\s a -> s { _sageMakerModelVpcConfigSubnets = a })
