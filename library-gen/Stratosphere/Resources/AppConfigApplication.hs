{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-application.html

module Stratosphere.Resources.AppConfigApplication where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppConfigApplicationTags

-- | Full data type definition for AppConfigApplication. See
-- 'appConfigApplication' for a more convenient constructor.
data AppConfigApplication =
  AppConfigApplication
  { _appConfigApplicationDescription :: Maybe (Val Text)
  , _appConfigApplicationName :: Val Text
  , _appConfigApplicationTags :: Maybe [AppConfigApplicationTags]
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigApplication where
  toResourceProperties AppConfigApplication{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::Application"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _appConfigApplicationDescription
        , (Just . ("Name",) . toJSON) _appConfigApplicationName
        , fmap (("Tags",) . toJSON) _appConfigApplicationTags
        ]
    }

-- | Constructor for 'AppConfigApplication' containing required fields as
-- arguments.
appConfigApplication
  :: Val Text -- ^ 'acaName'
  -> AppConfigApplication
appConfigApplication namearg =
  AppConfigApplication
  { _appConfigApplicationDescription = Nothing
  , _appConfigApplicationName = namearg
  , _appConfigApplicationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-application.html#cfn-appconfig-application-description
acaDescription :: Lens' AppConfigApplication (Maybe (Val Text))
acaDescription = lens _appConfigApplicationDescription (\s a -> s { _appConfigApplicationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-application.html#cfn-appconfig-application-name
acaName :: Lens' AppConfigApplication (Val Text)
acaName = lens _appConfigApplicationName (\s a -> s { _appConfigApplicationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-application.html#cfn-appconfig-application-tags
acaTags :: Lens' AppConfigApplication (Maybe [AppConfigApplicationTags])
acaTags = lens _appConfigApplicationTags (\s a -> s { _appConfigApplicationTags = a })
