module Stratosphere.InspectorV2.CodeSecurityIntegration.CreateGitLabSelfManagedIntegrationDetailProperty (
        CreateGitLabSelfManagedIntegrationDetailProperty(..),
        mkCreateGitLabSelfManagedIntegrationDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CreateGitLabSelfManagedIntegrationDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-creategitlabselfmanagedintegrationdetail.html>
    CreateGitLabSelfManagedIntegrationDetailProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-creategitlabselfmanagedintegrationdetail.html#cfn-inspectorv2-codesecurityintegration-creategitlabselfmanagedintegrationdetail-accesstoken>
                                                      accessToken :: (Value Prelude.Text),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-codesecurityintegration-creategitlabselfmanagedintegrationdetail.html#cfn-inspectorv2-codesecurityintegration-creategitlabselfmanagedintegrationdetail-instanceurl>
                                                      instanceUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCreateGitLabSelfManagedIntegrationDetailProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> CreateGitLabSelfManagedIntegrationDetailProperty
mkCreateGitLabSelfManagedIntegrationDetailProperty
  accessToken
  instanceUrl
  = CreateGitLabSelfManagedIntegrationDetailProperty
      {haddock_workaround_ = (), accessToken = accessToken,
       instanceUrl = instanceUrl}
instance ToResourceProperties CreateGitLabSelfManagedIntegrationDetailProperty where
  toResourceProperties
    CreateGitLabSelfManagedIntegrationDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CodeSecurityIntegration.CreateGitLabSelfManagedIntegrationDetail",
         supportsTags = Prelude.False,
         properties = ["accessToken" JSON..= accessToken,
                       "instanceUrl" JSON..= instanceUrl]}
instance JSON.ToJSON CreateGitLabSelfManagedIntegrationDetailProperty where
  toJSON CreateGitLabSelfManagedIntegrationDetailProperty {..}
    = JSON.object
        ["accessToken" JSON..= accessToken,
         "instanceUrl" JSON..= instanceUrl]
instance Property "accessToken" CreateGitLabSelfManagedIntegrationDetailProperty where
  type PropertyType "accessToken" CreateGitLabSelfManagedIntegrationDetailProperty = Value Prelude.Text
  set newValue CreateGitLabSelfManagedIntegrationDetailProperty {..}
    = CreateGitLabSelfManagedIntegrationDetailProperty
        {accessToken = newValue, ..}
instance Property "instanceUrl" CreateGitLabSelfManagedIntegrationDetailProperty where
  type PropertyType "instanceUrl" CreateGitLabSelfManagedIntegrationDetailProperty = Value Prelude.Text
  set newValue CreateGitLabSelfManagedIntegrationDetailProperty {..}
    = CreateGitLabSelfManagedIntegrationDetailProperty
        {instanceUrl = newValue, ..}