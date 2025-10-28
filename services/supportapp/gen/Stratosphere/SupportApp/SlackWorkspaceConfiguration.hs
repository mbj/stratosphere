module Stratosphere.SupportApp.SlackWorkspaceConfiguration (
        SlackWorkspaceConfiguration(..), mkSlackWorkspaceConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackWorkspaceConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-supportapp-slackworkspaceconfiguration.html>
    SlackWorkspaceConfiguration {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-supportapp-slackworkspaceconfiguration.html#cfn-supportapp-slackworkspaceconfiguration-teamid>
                                 teamId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-supportapp-slackworkspaceconfiguration.html#cfn-supportapp-slackworkspaceconfiguration-versionid>
                                 versionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSlackWorkspaceConfiguration ::
  Value Prelude.Text -> SlackWorkspaceConfiguration
mkSlackWorkspaceConfiguration teamId
  = SlackWorkspaceConfiguration
      {haddock_workaround_ = (), teamId = teamId,
       versionId = Prelude.Nothing}
instance ToResourceProperties SlackWorkspaceConfiguration where
  toResourceProperties SlackWorkspaceConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::SupportApp::SlackWorkspaceConfiguration",
         supportsTags = Prelude.False,
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