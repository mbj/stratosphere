module Stratosphere.SupportApp.SlackWorkspaceConfiguration (
        SlackWorkspaceConfiguration(..), mkSlackWorkspaceConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackWorkspaceConfiguration
  = SlackWorkspaceConfiguration {teamId :: (Value Prelude.Text),
                                 versionId :: (Prelude.Maybe (Value Prelude.Text))}
mkSlackWorkspaceConfiguration ::
  Value Prelude.Text -> SlackWorkspaceConfiguration
mkSlackWorkspaceConfiguration teamId
  = SlackWorkspaceConfiguration
      {teamId = teamId, versionId = Prelude.Nothing}
instance ToResourceProperties SlackWorkspaceConfiguration where
  toResourceProperties SlackWorkspaceConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SupportApp::SlackWorkspaceConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TeamId" JSON..= teamId]
                           (Prelude.catMaybes [(JSON..=) "VersionId" Prelude.<$> versionId]))}
instance JSON.ToJSON SlackWorkspaceConfiguration where
  toJSON SlackWorkspaceConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TeamId" JSON..= teamId]
              (Prelude.catMaybes [(JSON..=) "VersionId" Prelude.<$> versionId])))
instance Property "TeamId" SlackWorkspaceConfiguration where
  type PropertyType "TeamId" SlackWorkspaceConfiguration = Value Prelude.Text
  set newValue SlackWorkspaceConfiguration {..}
    = SlackWorkspaceConfiguration {teamId = newValue, ..}
instance Property "VersionId" SlackWorkspaceConfiguration where
  type PropertyType "VersionId" SlackWorkspaceConfiguration = Value Prelude.Text
  set newValue SlackWorkspaceConfiguration {..}
    = SlackWorkspaceConfiguration
        {versionId = Prelude.pure newValue, ..}