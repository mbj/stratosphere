module Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateGitHubIntegrationDetailProperty (
        UpdateGitHubIntegrationDetailProperty(..),
        mkUpdateGitHubIntegrationDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateGitHubIntegrationDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updategithubintegrationdetail.html>
    UpdateGitHubIntegrationDetailProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updategithubintegrationdetail.html#cfn-inspectorv2-codesecurityintegration-updategithubintegrationdetail-code>
                                           code :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updategithubintegrationdetail.html#cfn-inspectorv2-codesecurityintegration-updategithubintegrationdetail-installationid>
                                           installationId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateGitHubIntegrationDetailProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> UpdateGitHubIntegrationDetailProperty
mkUpdateGitHubIntegrationDetailProperty code installationId
  = UpdateGitHubIntegrationDetailProperty
      {haddock_workaround_ = (), code = code,
       installationId = installationId}
instance ToResourceProperties UpdateGitHubIntegrationDetailProperty where
  toResourceProperties UpdateGitHubIntegrationDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration.UpdateGitHubIntegrationDetail",
         supportsTags = Prelude.False,
         properties = ["code" JSON..= code,
                       "installationId" JSON..= installationId]}
instance JSON.ToJSON UpdateGitHubIntegrationDetailProperty where
  toJSON UpdateGitHubIntegrationDetailProperty {..}
    = JSON.object
        ["code" JSON..= code, "installationId" JSON..= installationId]
instance Property "code" UpdateGitHubIntegrationDetailProperty where
  type PropertyType "code" UpdateGitHubIntegrationDetailProperty = Value Prelude.Text
  set newValue UpdateGitHubIntegrationDetailProperty {..}
    = UpdateGitHubIntegrationDetailProperty {code = newValue, ..}
instance Property "installationId" UpdateGitHubIntegrationDetailProperty where
  type PropertyType "installationId" UpdateGitHubIntegrationDetailProperty = Value Prelude.Text
  set newValue UpdateGitHubIntegrationDetailProperty {..}
    = UpdateGitHubIntegrationDetailProperty
        {installationId = newValue, ..}