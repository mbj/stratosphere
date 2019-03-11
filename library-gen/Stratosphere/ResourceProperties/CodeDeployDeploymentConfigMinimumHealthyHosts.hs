{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentconfig-minimumhealthyhosts.html

module Stratosphere.ResourceProperties.CodeDeployDeploymentConfigMinimumHealthyHosts where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CodeDeployDeploymentConfigMinimumHealthyHosts. See
-- 'codeDeployDeploymentConfigMinimumHealthyHosts' for a more convenient
-- constructor.
data CodeDeployDeploymentConfigMinimumHealthyHosts =
  CodeDeployDeploymentConfigMinimumHealthyHosts
  { _codeDeployDeploymentConfigMinimumHealthyHostsType :: Val Text
  , _codeDeployDeploymentConfigMinimumHealthyHostsValue :: Val Integer
  } deriving (Show, Eq)

instance ToJSON CodeDeployDeploymentConfigMinimumHealthyHosts where
  toJSON CodeDeployDeploymentConfigMinimumHealthyHosts{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _codeDeployDeploymentConfigMinimumHealthyHostsType
    , (Just . ("Value",) . toJSON . fmap Integer') _codeDeployDeploymentConfigMinimumHealthyHostsValue
    ]

-- | Constructor for 'CodeDeployDeploymentConfigMinimumHealthyHosts'
-- containing required fields as arguments.
codeDeployDeploymentConfigMinimumHealthyHosts
  :: Val Text -- ^ 'cddcmhhType'
  -> Val Integer -- ^ 'cddcmhhValue'
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
cddcmhhValue :: Lens' CodeDeployDeploymentConfigMinimumHealthyHosts (Val Integer)
cddcmhhValue = lens _codeDeployDeploymentConfigMinimumHealthyHostsValue (\s a -> s { _codeDeployDeploymentConfigMinimumHealthyHostsValue = a })
