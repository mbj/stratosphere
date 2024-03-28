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
                         maximumLength :: (Prelude.Maybe (Value Prelude.Integer)),
                         permission :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserSettingProperty ::
  Value Prelude.Text -> Value Prelude.Text -> UserSettingProperty
mkUserSettingProperty action permission
  = UserSettingProperty
      {action = action, permission = permission,
       maximumLength = Prelude.Nothing}
instance ToResourceProperties UserSettingProperty where
  toResourceProperties UserSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.UserSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Action" JSON..= action, "Permission" JSON..= permission]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumLength" Prelude.<$> maximumLength]))}
instance JSON.ToJSON UserSettingProperty where
  toJSON UserSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Action" JSON..= action, "Permission" JSON..= permission]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumLength" Prelude.<$> maximumLength])))
instance Property "Action" UserSettingProperty where
  type PropertyType "Action" UserSettingProperty = Value Prelude.Text
  set newValue UserSettingProperty {..}
    = UserSettingProperty {action = newValue, ..}
instance Property "MaximumLength" UserSettingProperty where
  type PropertyType "MaximumLength" UserSettingProperty = Value Prelude.Integer
  set newValue UserSettingProperty {..}
    = UserSettingProperty {maximumLength = Prelude.pure newValue, ..}
instance Property "Permission" UserSettingProperty where
  type PropertyType "Permission" UserSettingProperty = Value Prelude.Text
  set newValue UserSettingProperty {..}
    = UserSettingProperty {permission = newValue, ..}