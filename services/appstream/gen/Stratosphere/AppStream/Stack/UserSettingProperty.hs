module Stratosphere.AppStream.Stack.UserSettingProperty (
        UserSettingProperty(..), mkUserSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserSettingProperty
  = UserSettingProperty {action :: (Value Prelude.Text),
                         permission :: (Value Prelude.Text)}
mkUserSettingProperty ::
  Value Prelude.Text -> Value Prelude.Text -> UserSettingProperty
mkUserSettingProperty action permission
  = UserSettingProperty {action = action, permission = permission}
instance ToResourceProperties UserSettingProperty where
  toResourceProperties UserSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.UserSetting",
         properties = ["Action" JSON..= action,
                       "Permission" JSON..= permission]}
instance JSON.ToJSON UserSettingProperty where
  toJSON UserSettingProperty {..}
    = JSON.object
        ["Action" JSON..= action, "Permission" JSON..= permission]
instance Property "Action" UserSettingProperty where
  type PropertyType "Action" UserSettingProperty = Value Prelude.Text
  set newValue UserSettingProperty {..}
    = UserSettingProperty {action = newValue, ..}
instance Property "Permission" UserSettingProperty where
  type PropertyType "Permission" UserSettingProperty = Value Prelude.Text
  set newValue UserSettingProperty {..}
    = UserSettingProperty {permission = newValue, ..}