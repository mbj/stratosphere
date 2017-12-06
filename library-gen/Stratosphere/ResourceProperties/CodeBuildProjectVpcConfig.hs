{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectVpcConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectVpcConfig. See
-- 'codeBuildProjectVpcConfig' for a more convenient constructor.
data CodeBuildProjectVpcConfig =
  CodeBuildProjectVpcConfig
  { _codeBuildProjectVpcConfigSecurityGroupIds :: ValList Text
  , _codeBuildProjectVpcConfigSubnets :: ValList Text
  , _codeBuildProjectVpcConfigVpcId :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectVpcConfig where
  toJSON CodeBuildProjectVpcConfig{..} =
    object $
    catMaybes
    [ (Just . ("SecurityGroupIds",) . toJSON) _codeBuildProjectVpcConfigSecurityGroupIds
    , (Just . ("Subnets",) . toJSON) _codeBuildProjectVpcConfigSubnets
    , (Just . ("VpcId",) . toJSON) _codeBuildProjectVpcConfigVpcId
    ]

instance FromJSON CodeBuildProjectVpcConfig where
  parseJSON (Object obj) =
    CodeBuildProjectVpcConfig <$>
      (obj .: "SecurityGroupIds") <*>
      (obj .: "Subnets") <*>
      (obj .: "VpcId")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectVpcConfig' containing required fields as
-- arguments.
codeBuildProjectVpcConfig
  :: ValList Text -- ^ 'cbpvcSecurityGroupIds'
  -> ValList Text -- ^ 'cbpvcSubnets'
  -> Val Text -- ^ 'cbpvcVpcId'
  -> CodeBuildProjectVpcConfig
codeBuildProjectVpcConfig securityGroupIdsarg subnetsarg vpcIdarg =
  CodeBuildProjectVpcConfig
  { _codeBuildProjectVpcConfigSecurityGroupIds = securityGroupIdsarg
  , _codeBuildProjectVpcConfigSubnets = subnetsarg
  , _codeBuildProjectVpcConfigVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-securitygroupids
cbpvcSecurityGroupIds :: Lens' CodeBuildProjectVpcConfig (ValList Text)
cbpvcSecurityGroupIds = lens _codeBuildProjectVpcConfigSecurityGroupIds (\s a -> s { _codeBuildProjectVpcConfigSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-subnets
cbpvcSubnets :: Lens' CodeBuildProjectVpcConfig (ValList Text)
cbpvcSubnets = lens _codeBuildProjectVpcConfigSubnets (\s a -> s { _codeBuildProjectVpcConfigSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-vpcconfig.html#cfn-codebuild-project-vpcconfig-vpcid
cbpvcVpcId :: Lens' CodeBuildProjectVpcConfig (Val Text)
cbpvcVpcId = lens _codeBuildProjectVpcConfigVpcId (\s a -> s { _codeBuildProjectVpcConfigVpcId = a })
