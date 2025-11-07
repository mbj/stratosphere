module Stratosphere.InspectorV2.CodeSecurityIntegration.UpdateGitLabSelfManagedIntegrationDetailProperty (
        UpdateGitLabSelfManagedIntegrationDetailProperty(..),
        mkUpdateGitLabSelfManagedIntegrationDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UpdateGitLabSelfManagedIntegrationDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updategitlabselfmanagedintegrationdetail.html>
    UpdateGitLabSelfManagedIntegrationDetailProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-updategitlabselfmanagedintegrationdetail.html#cfn-inspectorv2-codesecurityintegration-updategitlabselfmanagedintegrationdetail-authcode>
                                                      authCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUpdateGitLabSelfManagedIntegrationDetailProperty ::
  Value Prelude.Text
  -> UpdateGitLabSelfManagedIntegrationDetailProperty
mkUpdateGitLabSelfManagedIntegrationDetailProperty authCode
  = UpdateGitLabSelfManagedIntegrationDetailProperty
      {haddock_workaround_ = (), authCode = authCode}
instance ToResourceProperties UpdateGitLabSelfManagedIntegrationDetailProperty where
  toResourceProperties
    UpdateGitLabSelfManagedIntegrationDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration.UpdateGitLabSelfManagedIntegrationDetail",
         supportsTags = Prelude.False,
         properties = ["authCode" JSON..= authCode]}
instance JSON.ToJSON UpdateGitLabSelfManagedIntegrationDetailProperty where
  toJSON UpdateGitLabSelfManagedIntegrationDetailProperty {..}
    = JSON.object ["authCode" JSON..= authCode]
instance Property "authCode" UpdateGitLabSelfManagedIntegrationDetailProperty where
  type PropertyType "authCode" UpdateGitLabSelfManagedIntegrationDetailProperty = Value Prelude.Text
  set newValue UpdateGitLabSelfManagedIntegrationDetailProperty {..}
    = UpdateGitLabSelfManagedIntegrationDetailProperty
        {authCode = newValue, ..}