
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectVpcConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectVpcConfig. See
-- 'codeBuildProjectVpcConfig' for a more convenient constructor.
data CodeBuildProjectVpcConfig =
  CodeBuildProjectVpcConfig
  { _codeBuildProjectVpcConfigSecurityGroupIds :: Maybe (ValList Text)
  , _codeBuildProjectVpcConfigSubnets :: Maybe (ValList Text)
  , _codeBuildProjectVpcConfigVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectVpcConfig where
  toJSON CodeBuildProjectVpcConfig{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _codeBuildProjectVpcConfigSecurityGroupIds
    , fmap (("Subnets",) . toJSON) _codeBuildProjectVpcConfigSubnets
    , fmap (("VpcId",) . toJSON) _codeBuildProjectVpcConfigVpcId
    ]

-- | Constructor for 'CodeBuildProjectVpcConfig' containing required fields as
-- arguments.
codeBuildProjectVpcConfig
  :: CodeBuildProjectVpcConfig
codeBuildProjectVpcConfig  =
  CodeBuildProjectVpcConfig
  { _codeBuildProjectVpcConfigSecurityGroupIds = Nothing
  , _codeBuildProjectVpcConfigSubnets = Nothing
  , _codeBuildProjectVpcConfigVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
cbpvcSecurityGroupIds :: Lens' CodeBuildProjectVpcConfig (Maybe (ValList Text))
cbpvcSecurityGroupIds = lens _codeBuildProjectVpcConfigSecurityGroupIds (\s a -> s { _codeBuildProjectVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
cbpvcSubnets :: Lens' CodeBuildProjectVpcConfig (Maybe (ValList Text))
cbpvcSubnets = lens _codeBuildProjectVpcConfigSubnets (\s a -> s { _codeBuildProjectVpcConfigSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
cbpvcVpcId :: Lens' CodeBuildProjectVpcConfig (Maybe (Val Text))
cbpvcVpcId = lens _codeBuildProjectVpcConfigVpcId (\s a -> s { _codeBuildProjectVpcConfigVpcId = a })
