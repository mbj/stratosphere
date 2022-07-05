{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html

module Stratosphere.Resources.AppStreamStack where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppStreamStackAccessEndpoint
import Stratosphere.ResourceProperties.AppStreamStackApplicationSettings
import Stratosphere.ResourceProperties.AppStreamStackStorageConnector
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.AppStreamStackUserSetting

-- | Full data type definition for AppStreamStack. See 'appStreamStack' for a
-- more convenient constructor.
data AppStreamStack =
  AppStreamStack
  { _appStreamStackAccessEndpoints :: Maybe [AppStreamStackAccessEndpoint]
  , _appStreamStackApplicationSettings :: Maybe AppStreamStackApplicationSettings
  , _appStreamStackAttributesToDelete :: Maybe (ValList Text)
  , _appStreamStackDeleteStorageConnectors :: Maybe (Val Bool)
  , _appStreamStackDescription :: Maybe (Val Text)
  , _appStreamStackDisplayName :: Maybe (Val Text)
  , _appStreamStackEmbedHostDomains :: Maybe (ValList Text)
  , _appStreamStackFeedbackURL :: Maybe (Val Text)
  , _appStreamStackName :: Maybe (Val Text)
  , _appStreamStackRedirectURL :: Maybe (Val Text)
  , _appStreamStackStorageConnectors :: Maybe [AppStreamStackStorageConnector]
  , _appStreamStackTags :: Maybe [Tag]
  , _appStreamStackUserSettings :: Maybe [AppStreamStackUserSetting]
  } deriving (Show, Eq)

instance ToResourceProperties AppStreamStack where
  toResourceProperties AppStreamStack{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppStream::Stack"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessEndpoints",) . toJSON) _appStreamStackAccessEndpoints
        , fmap (("ApplicationSettings",) . toJSON) _appStreamStackApplicationSettings
        , fmap (("AttributesToDelete",) . toJSON) _appStreamStackAttributesToDelete
        , fmap (("DeleteStorageConnectors",) . toJSON) _appStreamStackDeleteStorageConnectors
        , fmap (("Description",) . toJSON) _appStreamStackDescription
        , fmap (("DisplayName",) . toJSON) _appStreamStackDisplayName
        , fmap (("EmbedHostDomains",) . toJSON) _appStreamStackEmbedHostDomains
        , fmap (("FeedbackURL",) . toJSON) _appStreamStackFeedbackURL
        , fmap (("Name",) . toJSON) _appStreamStackName
        , fmap (("RedirectURL",) . toJSON) _appStreamStackRedirectURL
        , fmap (("StorageConnectors",) . toJSON) _appStreamStackStorageConnectors
        , fmap (("Tags",) . toJSON) _appStreamStackTags
        , fmap (("UserSettings",) . toJSON) _appStreamStackUserSettings
        ]
    }

-- | Constructor for 'AppStreamStack' containing required fields as arguments.
appStreamStack
  :: AppStreamStack
appStreamStack  =
  AppStreamStack
  { _appStreamStackAccessEndpoints = Nothing
  , _appStreamStackApplicationSettings = Nothing
  , _appStreamStackAttributesToDelete = Nothing
  , _appStreamStackDeleteStorageConnectors = Nothing
  , _appStreamStackDescription = Nothing
  , _appStreamStackDisplayName = Nothing
  , _appStreamStackEmbedHostDomains = Nothing
  , _appStreamStackFeedbackURL = Nothing
  , _appStreamStackName = Nothing
  , _appStreamStackRedirectURL = Nothing
  , _appStreamStackStorageConnectors = Nothing
  , _appStreamStackTags = Nothing
  , _appStreamStackUserSettings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-accessendpoints
assAccessEndpoints :: Lens' AppStreamStack (Maybe [AppStreamStackAccessEndpoint])
assAccessEndpoints = lens _appStreamStackAccessEndpoints (\s a -> s { _appStreamStackAccessEndpoints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-applicationsettings
assApplicationSettings :: Lens' AppStreamStack (Maybe AppStreamStackApplicationSettings)
assApplicationSettings = lens _appStreamStackApplicationSettings (\s a -> s { _appStreamStackApplicationSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-attributestodelete
assAttributesToDelete :: Lens' AppStreamStack (Maybe (ValList Text))
assAttributesToDelete = lens _appStreamStackAttributesToDelete (\s a -> s { _appStreamStackAttributesToDelete = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-deletestorageconnectors
assDeleteStorageConnectors :: Lens' AppStreamStack (Maybe (Val Bool))
assDeleteStorageConnectors = lens _appStreamStackDeleteStorageConnectors (\s a -> s { _appStreamStackDeleteStorageConnectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-description
assDescription :: Lens' AppStreamStack (Maybe (Val Text))
assDescription = lens _appStreamStackDescription (\s a -> s { _appStreamStackDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-displayname
assDisplayName :: Lens' AppStreamStack (Maybe (Val Text))
assDisplayName = lens _appStreamStackDisplayName (\s a -> s { _appStreamStackDisplayName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-embedhostdomains
assEmbedHostDomains :: Lens' AppStreamStack (Maybe (ValList Text))
assEmbedHostDomains = lens _appStreamStackEmbedHostDomains (\s a -> s { _appStreamStackEmbedHostDomains = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-feedbackurl
assFeedbackURL :: Lens' AppStreamStack (Maybe (Val Text))
assFeedbackURL = lens _appStreamStackFeedbackURL (\s a -> s { _appStreamStackFeedbackURL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-name
assName :: Lens' AppStreamStack (Maybe (Val Text))
assName = lens _appStreamStackName (\s a -> s { _appStreamStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-redirecturl
assRedirectURL :: Lens' AppStreamStack (Maybe (Val Text))
assRedirectURL = lens _appStreamStackRedirectURL (\s a -> s { _appStreamStackRedirectURL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-storageconnectors
assStorageConnectors :: Lens' AppStreamStack (Maybe [AppStreamStackStorageConnector])
assStorageConnectors = lens _appStreamStackStorageConnectors (\s a -> s { _appStreamStackStorageConnectors = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-tags
assTags :: Lens' AppStreamStack (Maybe [Tag])
assTags = lens _appStreamStackTags (\s a -> s { _appStreamStackTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-stack.html#cfn-appstream-stack-usersettings
assUserSettings :: Lens' AppStreamStack (Maybe [AppStreamStackUserSetting])
assUserSettings = lens _appStreamStackUserSettings (\s a -> s { _appStreamStackUserSettings = a })
