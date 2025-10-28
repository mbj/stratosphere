module Stratosphere.AppStream.Stack.ApplicationSettingsProperty (
        ApplicationSettingsProperty(..), mkApplicationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html>
    ApplicationSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-enabled>
                                 enabled :: (Value Prelude.Bool),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appstream-stack-applicationsettings.html#cfn-appstream-stack-applicationsettings-settingsgroup>
                                 settingsGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationSettingsProperty ::
  Value Prelude.Bool -> ApplicationSettingsProperty
mkApplicationSettingsProperty enabled
  = ApplicationSettingsProperty
      {haddock_workaround_ = (), enabled = enabled,
       settingsGroup = Prelude.Nothing}
instance ToResourceProperties ApplicationSettingsProperty where
  toResourceProperties ApplicationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::Stack.ApplicationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup]))}
instance JSON.ToJSON ApplicationSettingsProperty where
  toJSON ApplicationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup])))
instance Property "Enabled" ApplicationSettingsProperty where
  type PropertyType "Enabled" ApplicationSettingsProperty = Value Prelude.Bool
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty {enabled = newValue, ..}
instance Property "SettingsGroup" ApplicationSettingsProperty where
  type PropertyType "SettingsGroup" ApplicationSettingsProperty = Value Prelude.Text
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty
        {settingsGroup = Prelude.pure newValue, ..}