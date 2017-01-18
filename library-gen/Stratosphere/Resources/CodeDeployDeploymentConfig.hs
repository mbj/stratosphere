{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codedeploy-deploymentconfig.html

module Stratosphere.Resources.CodeDeployDeploymentConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeDeployDeploymentConfig. See
-- | 'codeDeployDeploymentConfig' for a more convenient constructor.
data CodeDeployDeploymentConfig =
  CodeDeployDeploymentConfig
  { _codeDeployDeploymentConfigDeploymentConfigName :: Maybe (Val Text)
  , _codeDeployDeploymentConfigMinimumHealthyHosts :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeDeployDeploymentConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentConfig' containing required fields
-- | as arguments.
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
cddcMinimumHealthyHosts :: Lens' CodeDeployDeploymentConfig (Maybe (Val Text))
cddcMinimumHealthyHosts = lens _codeDeployDeploymentConfigMinimumHealthyHosts (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHosts = a })
