{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html

module Stratosphere.Resources.CodeDeployDeploymentConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeDeployDeploymentConfigMinimumHealthyHosts

-- | Full data type definition for CodeDeployDeploymentConfig. See
-- 'codeDeployDeploymentConfig' for a more convenient constructor.
data CodeDeployDeploymentConfig =
  CodeDeployDeploymentConfig
  { _codeDeployDeploymentConfigDeploymentConfigName :: Maybe (Val Text)
  , _codeDeployDeploymentConfigMinimumHealthyHosts :: Maybe CodeDeployDeploymentConfigMinimumHealthyHosts
  } deriving (Show, Eq)

instance ToResourceProperties CodeDeployDeploymentConfig where
  toResourceProperties CodeDeployDeploymentConfig{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CodeDeploy::DeploymentConfig"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DeploymentConfigName",) . toJSON) _codeDeployDeploymentConfigDeploymentConfigName
        , fmap (("MinimumHealthyHosts",) . toJSON) _codeDeployDeploymentConfigMinimumHealthyHosts
        ]
    }

-- | Constructor for 'CodeDeployDeploymentConfig' containing required fields
-- as arguments.
codeDeployDeploymentConfig
  :: CodeDeployDeploymentConfig
codeDeployDeploymentConfig  =
  CodeDeployDeploymentConfig
  { _codeDeployDeploymentConfigDeploymentConfigName = Nothing
  , _codeDeployDeploymentConfigMinimumHealthyHosts = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-deploymentconfigname
cddcDeploymentConfigName :: Lens' CodeDeployDeploymentConfig (Maybe (Val Text))
cddcDeploymentConfigName = lens _codeDeployDeploymentConfigDeploymentConfigName (\s a -> s { _codeDeployDeploymentConfigDeploymentConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts
cddcMinimumHealthyHosts :: Lens' CodeDeployDeploymentConfig (Maybe CodeDeployDeploymentConfigMinimumHealthyHosts)
cddcMinimumHealthyHosts = lens _codeDeployDeploymentConfigMinimumHealthyHosts (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHosts = a })
