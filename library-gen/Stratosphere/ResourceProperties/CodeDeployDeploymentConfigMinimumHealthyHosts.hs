{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentConfigMinimumHealthyHosts where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | CodeDeployDeploymentConfigMinimumHealthyHosts. See
-- | 'codeDeployDeploymentConfigMinimumHealthyHosts' for a more convenient
-- | constructor.
data CodeDeployDeploymentConfigMinimumHealthyHosts =
  CodeDeployDeploymentConfigMinimumHealthyHosts
  { _codeDeployDeploymentConfigMinimumHealthyHostsType :: Maybe (Val Text)
  , _codeDeployDeploymentConfigMinimumHealthyHostsValue :: Maybe (Val Integer')
  } deriving (Show, Eq, Generic)

instance ToJSON CodeDeployDeploymentConfigMinimumHealthyHosts where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

instance FromJSON CodeDeployDeploymentConfigMinimumHealthyHosts where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

-- | Constructor for 'CodeDeployDeploymentConfigMinimumHealthyHosts'
-- | containing required fields as arguments.
codeDeployDeploymentConfigMinimumHealthyHosts
  :: CodeDeployDeploymentConfigMinimumHealthyHosts
codeDeployDeploymentConfigMinimumHealthyHosts  =
  CodeDeployDeploymentConfigMinimumHealthyHosts
  { _codeDeployDeploymentConfigMinimumHealthyHostsType = Nothing
  , _codeDeployDeploymentConfigMinimumHealthyHostsValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
cddcmhhType :: Lens' CodeDeployDeploymentConfigMinimumHealthyHosts (Maybe (Val Text))
cddcmhhType = lens _codeDeployDeploymentConfigMinimumHealthyHostsType (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHostsType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
cddcmhhValue :: Lens' CodeDeployDeploymentConfigMinimumHealthyHosts (Maybe (Val Integer'))
cddcmhhValue = lens _codeDeployDeploymentConfigMinimumHealthyHostsValue (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHostsValue = a })
