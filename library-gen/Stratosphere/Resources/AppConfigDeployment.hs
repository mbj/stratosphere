{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html

module Stratosphere.Resources.AppConfigDeployment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppConfigDeploymentTags

-- | Full data type definition for AppConfigDeployment. See
-- 'appConfigDeployment' for a more convenient constructor.
data AppConfigDeployment =
  AppConfigDeployment
  { _appConfigDeploymentApplicationId :: Val Text
  , _appConfigDeploymentConfigurationProfileId :: Val Text
  , _appConfigDeploymentConfigurationVersion :: Val Text
  , _appConfigDeploymentDeploymentStrategyId :: Val Text
  , _appConfigDeploymentDescription :: Maybe (Val Text)
  , _appConfigDeploymentEnvironmentId :: Val Text
  , _appConfigDeploymentTags :: Maybe [AppConfigDeploymentTags]
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigDeployment where
  toResourceProperties AppConfigDeployment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::Deployment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _appConfigDeploymentApplicationId
        , (Just . ("ConfigurationProfileId",) . toJSON) _appConfigDeploymentConfigurationProfileId
        , (Just . ("ConfigurationVersion",) . toJSON) _appConfigDeploymentConfigurationVersion
        , (Just . ("DeploymentStrategyId",) . toJSON) _appConfigDeploymentDeploymentStrategyId
        , fmap (("Description",) . toJSON) _appConfigDeploymentDescription
        , (Just . ("EnvironmentId",) . toJSON) _appConfigDeploymentEnvironmentId
        , fmap (("Tags",) . toJSON) _appConfigDeploymentTags
        ]
    }

-- | Constructor for 'AppConfigDeployment' containing required fields as
-- arguments.
appConfigDeployment
  :: Val Text -- ^ 'acdApplicationId'
  -> Val Text -- ^ 'acdConfigurationProfileId'
  -> Val Text -- ^ 'acdConfigurationVersion'
  -> Val Text -- ^ 'acdDeploymentStrategyId'
  -> Val Text -- ^ 'acdEnvironmentId'
  -> AppConfigDeployment
appConfigDeployment applicationIdarg configurationProfileIdarg configurationVersionarg deploymentStrategyIdarg environmentIdarg =
  AppConfigDeployment
  { _appConfigDeploymentApplicationId = applicationIdarg
  , _appConfigDeploymentConfigurationProfileId = configurationProfileIdarg
  , _appConfigDeploymentConfigurationVersion = configurationVersionarg
  , _appConfigDeploymentDeploymentStrategyId = deploymentStrategyIdarg
  , _appConfigDeploymentDescription = Nothing
  , _appConfigDeploymentEnvironmentId = environmentIdarg
  , _appConfigDeploymentTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-applicationid
acdApplicationId :: Lens' AppConfigDeployment (Val Text)
acdApplicationId = lens _appConfigDeploymentApplicationId (\s a -> s { _appConfigDeploymentApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-configurationprofileid
acdConfigurationProfileId :: Lens' AppConfigDeployment (Val Text)
acdConfigurationProfileId = lens _appConfigDeploymentConfigurationProfileId (\s a -> s { _appConfigDeploymentConfigurationProfileId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-configurationversion
acdConfigurationVersion :: Lens' AppConfigDeployment (Val Text)
acdConfigurationVersion = lens _appConfigDeploymentConfigurationVersion (\s a -> s { _appConfigDeploymentConfigurationVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-deploymentstrategyid
acdDeploymentStrategyId :: Lens' AppConfigDeployment (Val Text)
acdDeploymentStrategyId = lens _appConfigDeploymentDeploymentStrategyId (\s a -> s { _appConfigDeploymentDeploymentStrategyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-description
acdDescription :: Lens' AppConfigDeployment (Maybe (Val Text))
acdDescription = lens _appConfigDeploymentDescription (\s a -> s { _appConfigDeploymentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-environmentid
acdEnvironmentId :: Lens' AppConfigDeployment (Val Text)
acdEnvironmentId = lens _appConfigDeploymentEnvironmentId (\s a -> s { _appConfigDeploymentEnvironmentId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-deployment.html#cfn-appconfig-deployment-tags
acdTags :: Lens' AppConfigDeployment (Maybe [AppConfigDeploymentTags])
acdTags = lens _appConfigDeploymentTags (\s a -> s { _appConfigDeploymentTags = a })
