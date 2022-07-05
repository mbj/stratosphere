{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html

module Stratosphere.Resources.AppConfigHostedConfigurationVersion where

import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigHostedConfigurationVersion. See
-- 'appConfigHostedConfigurationVersion' for a more convenient constructor.
data AppConfigHostedConfigurationVersion =
  AppConfigHostedConfigurationVersion
  { _appConfigHostedConfigurationVersionApplicationId :: Val Text
  , _appConfigHostedConfigurationVersionConfigurationProfileId :: Val Text
  , _appConfigHostedConfigurationVersionContent :: Val Text
  , _appConfigHostedConfigurationVersionContentType :: Val Text
  , _appConfigHostedConfigurationVersionDescription :: Maybe (Val Text)
  , _appConfigHostedConfigurationVersionLatestVersionNumber :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigHostedConfigurationVersion where
  toResourceProperties AppConfigHostedConfigurationVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::HostedConfigurationVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _appConfigHostedConfigurationVersionApplicationId
        , (Just . ("ConfigurationProfileId",) . toJSON) _appConfigHostedConfigurationVersionConfigurationProfileId
        , (Just . ("Content",) . toJSON) _appConfigHostedConfigurationVersionContent
        , (Just . ("ContentType",) . toJSON) _appConfigHostedConfigurationVersionContentType
        , fmap (("Description",) . toJSON) _appConfigHostedConfigurationVersionDescription
        , fmap (("LatestVersionNumber",) . toJSON) _appConfigHostedConfigurationVersionLatestVersionNumber
        ]
    }

-- | Constructor for 'AppConfigHostedConfigurationVersion' containing required
-- fields as arguments.
appConfigHostedConfigurationVersion
  :: Val Text -- ^ 'achcvApplicationId'
  -> Val Text -- ^ 'achcvConfigurationProfileId'
  -> Val Text -- ^ 'achcvContent'
  -> Val Text -- ^ 'achcvContentType'
  -> AppConfigHostedConfigurationVersion
appConfigHostedConfigurationVersion applicationIdarg configurationProfileIdarg contentarg contentTypearg =
  AppConfigHostedConfigurationVersion
  { _appConfigHostedConfigurationVersionApplicationId = applicationIdarg
  , _appConfigHostedConfigurationVersionConfigurationProfileId = configurationProfileIdarg
  , _appConfigHostedConfigurationVersionContent = contentarg
  , _appConfigHostedConfigurationVersionContentType = contentTypearg
  , _appConfigHostedConfigurationVersionDescription = Nothing
  , _appConfigHostedConfigurationVersionLatestVersionNumber = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-applicationid
achcvApplicationId :: Lens' AppConfigHostedConfigurationVersion (Val Text)
achcvApplicationId = lens _appConfigHostedConfigurationVersionApplicationId (\s a -> s { _appConfigHostedConfigurationVersionApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-configurationprofileid
achcvConfigurationProfileId :: Lens' AppConfigHostedConfigurationVersion (Val Text)
achcvConfigurationProfileId = lens _appConfigHostedConfigurationVersionConfigurationProfileId (\s a -> s { _appConfigHostedConfigurationVersionConfigurationProfileId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-content
achcvContent :: Lens' AppConfigHostedConfigurationVersion (Val Text)
achcvContent = lens _appConfigHostedConfigurationVersionContent (\s a -> s { _appConfigHostedConfigurationVersionContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-contenttype
achcvContentType :: Lens' AppConfigHostedConfigurationVersion (Val Text)
achcvContentType = lens _appConfigHostedConfigurationVersionContentType (\s a -> s { _appConfigHostedConfigurationVersionContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-description
achcvDescription :: Lens' AppConfigHostedConfigurationVersion (Maybe (Val Text))
achcvDescription = lens _appConfigHostedConfigurationVersionDescription (\s a -> s { _appConfigHostedConfigurationVersionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-hostedconfigurationversion.html#cfn-appconfig-hostedconfigurationversion-latestversionnumber
achcvLatestVersionNumber :: Lens' AppConfigHostedConfigurationVersion (Maybe (Val Double))
achcvLatestVersionNumber = lens _appConfigHostedConfigurationVersionLatestVersionNumber (\s a -> s { _appConfigHostedConfigurationVersionLatestVersionNumber = a })
