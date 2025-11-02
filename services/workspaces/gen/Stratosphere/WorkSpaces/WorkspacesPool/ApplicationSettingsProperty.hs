module Stratosphere.WorkSpaces.WorkspacesPool.ApplicationSettingsProperty (
        ApplicationSettingsProperty(..), mkApplicationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-applicationsettings.html>
    ApplicationSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-applicationsettings.html#cfn-workspaces-workspacespool-applicationsettings-settingsgroup>
                                 settingsGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspaces-workspacespool-applicationsettings.html#cfn-workspaces-workspacespool-applicationsettings-status>
                                 status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationSettingsProperty ::
  Value Prelude.Text -> ApplicationSettingsProperty
mkApplicationSettingsProperty status
  = ApplicationSettingsProperty
      {haddock_workaround_ = (), status = status,
       settingsGroup = Prelude.Nothing}
instance ToResourceProperties ApplicationSettingsProperty where
  toResourceProperties ApplicationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpaces::WorkspacesPool.ApplicationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup]))}
instance JSON.ToJSON ApplicationSettingsProperty where
  toJSON ApplicationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "SettingsGroup" Prelude.<$> settingsGroup])))
instance Property "SettingsGroup" ApplicationSettingsProperty where
  type PropertyType "SettingsGroup" ApplicationSettingsProperty = Value Prelude.Text
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty
        {settingsGroup = Prelude.pure newValue, ..}
instance Property "Status" ApplicationSettingsProperty where
  type PropertyType "Status" ApplicationSettingsProperty = Value Prelude.Text
  set newValue ApplicationSettingsProperty {..}
    = ApplicationSettingsProperty {status = newValue, ..}