
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html

module Stratosphere.ResourceProperties.AppStreamStackApplicationSettings where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackApplicationSettings. See
-- 'appStreamStackApplicationSettings' for a more convenient constructor.
data AppStreamStackApplicationSettings =
  AppStreamStackApplicationSettings
  { _appStreamStackApplicationSettingsEnabled :: Val Bool
  , _appStreamStackApplicationSettingsSettingsGroup :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppStreamStackApplicationSettings where
  toJSON AppStreamStackApplicationSettings{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _appStreamStackApplicationSettingsEnabled
    , fmap (("SettingsGroup",) . toJSON) _appStreamStackApplicationSettingsSettingsGroup
    ]

-- | Constructor for 'AppStreamStackApplicationSettings' containing required
-- fields as arguments.
appStreamStackApplicationSettings
  :: Val Bool -- ^ 'assasEnabled'
  -> AppStreamStackApplicationSettings
appStreamStackApplicationSettings enabledarg =
  AppStreamStackApplicationSettings
  { _appStreamStackApplicationSettingsEnabled = enabledarg
  , _appStreamStackApplicationSettingsSettingsGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-enabled
assasEnabled :: Lens' AppStreamStackApplicationSettings (Val Bool)
assasEnabled = lens _appStreamStackApplicationSettingsEnabled (\s a -> s { _appStreamStackApplicationSettingsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-settingsgroup
assasSettingsGroup :: Lens' AppStreamStackApplicationSettings (Maybe (Val Text))
assasSettingsGroup = lens _appStreamStackApplicationSettingsSettingsGroup (\s a -> s { _appStreamStackApplicationSettingsSettingsGroup = a })
