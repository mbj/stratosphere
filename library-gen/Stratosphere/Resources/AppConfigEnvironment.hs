{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html

module Stratosphere.Resources.AppConfigEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppConfigEnvironmentMonitors
import Stratosphere.ResourceProperties.AppConfigEnvironmentTags

-- | Full data type definition for AppConfigEnvironment. See
-- 'appConfigEnvironment' for a more convenient constructor.
data AppConfigEnvironment =
  AppConfigEnvironment
  { _appConfigEnvironmentApplicationId :: Val Text
  , _appConfigEnvironmentDescription :: Maybe (Val Text)
  , _appConfigEnvironmentMonitors :: Maybe [AppConfigEnvironmentMonitors]
  , _appConfigEnvironmentName :: Val Text
  , _appConfigEnvironmentTags :: Maybe [AppConfigEnvironmentTags]
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigEnvironment where
  toResourceProperties AppConfigEnvironment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::Environment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _appConfigEnvironmentApplicationId
        , fmap (("Description",) . toJSON) _appConfigEnvironmentDescription
        , fmap (("Monitors",) . toJSON) _appConfigEnvironmentMonitors
        , (Just . ("Name",) . toJSON) _appConfigEnvironmentName
        , fmap (("Tags",) . toJSON) _appConfigEnvironmentTags
        ]
    }

-- | Constructor for 'AppConfigEnvironment' containing required fields as
-- arguments.
appConfigEnvironment
  :: Val Text -- ^ 'aceApplicationId'
  -> Val Text -- ^ 'aceName'
  -> AppConfigEnvironment
appConfigEnvironment applicationIdarg namearg =
  AppConfigEnvironment
  { _appConfigEnvironmentApplicationId = applicationIdarg
  , _appConfigEnvironmentDescription = Nothing
  , _appConfigEnvironmentMonitors = Nothing
  , _appConfigEnvironmentName = namearg
  , _appConfigEnvironmentTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-applicationid
aceApplicationId :: Lens' AppConfigEnvironment (Val Text)
aceApplicationId = lens _appConfigEnvironmentApplicationId (\s a -> s { _appConfigEnvironmentApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-description
aceDescription :: Lens' AppConfigEnvironment (Maybe (Val Text))
aceDescription = lens _appConfigEnvironmentDescription (\s a -> s { _appConfigEnvironmentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-monitors
aceMonitors :: Lens' AppConfigEnvironment (Maybe [AppConfigEnvironmentMonitors])
aceMonitors = lens _appConfigEnvironmentMonitors (\s a -> s { _appConfigEnvironmentMonitors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-name
aceName :: Lens' AppConfigEnvironment (Val Text)
aceName = lens _appConfigEnvironmentName (\s a -> s { _appConfigEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-environment.html#cfn-appconfig-environment-tags
aceTags :: Lens' AppConfigEnvironment (Maybe [AppConfigEnvironmentTags])
aceTags = lens _appConfigEnvironmentTags (\s a -> s { _appConfigEnvironmentTags = a })
