{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentConfigMinimumHealthyHosts where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- CodeDeployDeploymentConfigMinimumHealthyHosts. See
-- 'codeDeployDeploymentConfigMinimumHealthyHosts' for a more convenient
-- constructor.
data CodeDeployDeploymentConfigMinimumHealthyHosts =
  CodeDeployDeploymentConfigMinimumHealthyHosts
  { _codeDeployDeploymentConfigMinimumHealthyHostsType :: Val Text
  , _codeDeployDeploymentConfigMinimumHealthyHostsValue :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentConfigMinimumHealthyHosts where
  toJSON CodeDeployDeploymentConfigMinimumHealthyHosts{..} =
    object $
    catMaybes
    [ Just ("Type" .= _codeDeployDeploymentConfigMinimumHealthyHostsType)
    , Just ("Value" .= _codeDeployDeploymentConfigMinimumHealthyHostsValue)
    ]

instance FromJSON CodeDeployDeploymentConfigMinimumHealthyHosts where
  parseJSON (Object obj) =
    CodeDeployDeploymentConfigMinimumHealthyHosts <$>
      obj .: "Type" <*>
      obj .: "Value"
  parseJSON _ = mempty

-- | Constructor for 'CodeDeployDeploymentConfigMinimumHealthyHosts'
-- containing required fields as arguments.
codeDeployDeploymentConfigMinimumHealthyHosts
  :: Val Text -- ^ 'cddcmhhType'
  -> Val Integer' -- ^ 'cddcmhhValue'
  -> CodeDeployDeploymentConfigMinimumHealthyHosts
codeDeployDeploymentConfigMinimumHealthyHosts typearg valuearg =
  CodeDeployDeploymentConfigMinimumHealthyHosts
  { _codeDeployDeploymentConfigMinimumHealthyHostsType = typearg
  , _codeDeployDeploymentConfigMinimumHealthyHostsValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-type
cddcmhhType :: Lens' CodeDeployDeploymentConfigMinimumHealthyHosts (Val Text)
cddcmhhType = lens _codeDeployDeploymentConfigMinimumHealthyHostsType (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHostsType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html#cfn-codedeploy-deploymentconfig-minimumhealthyhosts-value
cddcmhhValue :: Lens' CodeDeployDeploymentConfigMinimumHealthyHosts (Val Integer')
cddcmhhValue = lens _codeDeployDeploymentConfigMinimumHealthyHostsValue (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHostsValue = a })
