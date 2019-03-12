{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html

module Stratosphere.ResourceProperties.ECSServiceDeploymentConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceDeploymentConfiguration. See
-- 'ecsServiceDeploymentConfiguration' for a more convenient constructor.
data ECSServiceDeploymentConfiguration =
  ECSServiceDeploymentConfiguration
  { _eCSServiceDeploymentConfigurationMaximumPercent :: Maybe (Val Integer)
  , _eCSServiceDeploymentConfigurationMinimumHealthyPercent :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSServiceDeploymentConfiguration where
  toJSON ECSServiceDeploymentConfiguration{..} =
    object $
    catMaybes
    [ fmap (("MaximumPercent",) . toJSON) _eCSServiceDeploymentConfigurationMaximumPercent
    , fmap (("MinimumHealthyPercent",) . toJSON) _eCSServiceDeploymentConfigurationMinimumHealthyPercent
    ]

-- | Constructor for 'ECSServiceDeploymentConfiguration' containing required
-- fields as arguments.
ecsServiceDeploymentConfiguration
  :: ECSServiceDeploymentConfiguration
ecsServiceDeploymentConfiguration  =
  ECSServiceDeploymentConfiguration
  { _eCSServiceDeploymentConfigurationMaximumPercent = Nothing
  , _eCSServiceDeploymentConfigurationMinimumHealthyPercent = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-maximumpercent
ecssdcMaximumPercent :: Lens' ECSServiceDeploymentConfiguration (Maybe (Val Integer))
ecssdcMaximumPercent = lens _eCSServiceDeploymentConfigurationMaximumPercent (\s a -> s { _eCSServiceDeploymentConfigurationMaximumPercent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-deploymentconfiguration.html#cfn-ecs-service-deploymentconfiguration-minimumhealthypercent
ecssdcMinimumHealthyPercent :: Lens' ECSServiceDeploymentConfiguration (Maybe (Val Integer))
ecssdcMinimumHealthyPercent = lens _eCSServiceDeploymentConfigurationMinimumHealthyPercent (\s a -> s { _eCSServiceDeploymentConfigurationMinimumHealthyPercent = a })
