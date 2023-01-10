
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html

module Stratosphere.ResourceProperties.AppStreamStackUserSetting where

import Stratosphere.ResourceImports


-- | Full data type definition for AppStreamStackUserSetting. See
-- 'appStreamStackUserSetting' for a more convenient constructor.
data AppStreamStackUserSetting =
  AppStreamStackUserSetting
  { _appStreamStackUserSettingAction :: Val Text
  , _appStreamStackUserSettingPermission :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppStreamStackUserSetting where
  toJSON AppStreamStackUserSetting{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appStreamStackUserSettingAction
    , (Just . ("Permission",) . toJSON) _appStreamStackUserSettingPermission
    ]

-- | Constructor for 'AppStreamStackUserSetting' containing required fields as
-- arguments.
appStreamStackUserSetting
  :: Val Text -- ^ 'assusAction'
  -> Val Text -- ^ 'assusPermission'
  -> AppStreamStackUserSetting
appStreamStackUserSetting actionarg permissionarg =
  AppStreamStackUserSetting
  { _appStreamStackUserSettingAction = actionarg
  , _appStreamStackUserSettingPermission = permissionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-action
assusAction :: Lens' AppStreamStackUserSetting (Val Text)
assusAction = lens _appStreamStackUserSettingAction (\s a -> s { _appStreamStackUserSettingAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-usersetting.html#cfn-appstream-stack-usersetting-permission
assusPermission :: Lens' AppStreamStackUserSetting (Val Text)
assusPermission = lens _appStreamStackUserSettingPermission (\s a -> s { _appStreamStackUserSettingPermission = a })
