{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html

module Stratosphere.Resources.AppConfigConfigurationProfile where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppConfigConfigurationProfileTags
import Stratosphere.ResourceProperties.AppConfigConfigurationProfileValidators

-- | Full data type definition for AppConfigConfigurationProfile. See
-- 'appConfigConfigurationProfile' for a more convenient constructor.
data AppConfigConfigurationProfile =
  AppConfigConfigurationProfile
  { _appConfigConfigurationProfileApplicationId :: Val Text
  , _appConfigConfigurationProfileDescription :: Maybe (Val Text)
  , _appConfigConfigurationProfileLocationUri :: Val Text
  , _appConfigConfigurationProfileName :: Val Text
  , _appConfigConfigurationProfileRetrievalRoleArn :: Maybe (Val Text)
  , _appConfigConfigurationProfileTags :: Maybe [AppConfigConfigurationProfileTags]
  , _appConfigConfigurationProfileValidators :: Maybe [AppConfigConfigurationProfileValidators]
  } deriving (Show, Eq)

instance ToResourceProperties AppConfigConfigurationProfile where
  toResourceProperties AppConfigConfigurationProfile{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppConfig::ConfigurationProfile"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("ApplicationId",) . toJSON) _appConfigConfigurationProfileApplicationId
        , fmap (("Description",) . toJSON) _appConfigConfigurationProfileDescription
        , (Just . ("LocationUri",) . toJSON) _appConfigConfigurationProfileLocationUri
        , (Just . ("Name",) . toJSON) _appConfigConfigurationProfileName
        , fmap (("RetrievalRoleArn",) . toJSON) _appConfigConfigurationProfileRetrievalRoleArn
        , fmap (("Tags",) . toJSON) _appConfigConfigurationProfileTags
        , fmap (("Validators",) . toJSON) _appConfigConfigurationProfileValidators
        ]
    }

-- | Constructor for 'AppConfigConfigurationProfile' containing required
-- fields as arguments.
appConfigConfigurationProfile
  :: Val Text -- ^ 'accpApplicationId'
  -> Val Text -- ^ 'accpLocationUri'
  -> Val Text -- ^ 'accpName'
  -> AppConfigConfigurationProfile
appConfigConfigurationProfile applicationIdarg locationUriarg namearg =
  AppConfigConfigurationProfile
  { _appConfigConfigurationProfileApplicationId = applicationIdarg
  , _appConfigConfigurationProfileDescription = Nothing
  , _appConfigConfigurationProfileLocationUri = locationUriarg
  , _appConfigConfigurationProfileName = namearg
  , _appConfigConfigurationProfileRetrievalRoleArn = Nothing
  , _appConfigConfigurationProfileTags = Nothing
  , _appConfigConfigurationProfileValidators = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-applicationid
accpApplicationId :: Lens' AppConfigConfigurationProfile (Val Text)
accpApplicationId = lens _appConfigConfigurationProfileApplicationId (\s a -> s { _appConfigConfigurationProfileApplicationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-description
accpDescription :: Lens' AppConfigConfigurationProfile (Maybe (Val Text))
accpDescription = lens _appConfigConfigurationProfileDescription (\s a -> s { _appConfigConfigurationProfileDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-locationuri
accpLocationUri :: Lens' AppConfigConfigurationProfile (Val Text)
accpLocationUri = lens _appConfigConfigurationProfileLocationUri (\s a -> s { _appConfigConfigurationProfileLocationUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-name
accpName :: Lens' AppConfigConfigurationProfile (Val Text)
accpName = lens _appConfigConfigurationProfileName (\s a -> s { _appConfigConfigurationProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-retrievalrolearn
accpRetrievalRoleArn :: Lens' AppConfigConfigurationProfile (Maybe (Val Text))
accpRetrievalRoleArn = lens _appConfigConfigurationProfileRetrievalRoleArn (\s a -> s { _appConfigConfigurationProfileRetrievalRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-tags
accpTags :: Lens' AppConfigConfigurationProfile (Maybe [AppConfigConfigurationProfileTags])
accpTags = lens _appConfigConfigurationProfileTags (\s a -> s { _appConfigConfigurationProfileTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appconfig-configurationprofile.html#cfn-appconfig-configurationprofile-validators
accpValidators :: Lens' AppConfigConfigurationProfile (Maybe [AppConfigConfigurationProfileValidators])
accpValidators = lens _appConfigConfigurationProfileValidators (\s a -> s { _appConfigConfigurationProfileValidators = a })
