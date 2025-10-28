module Stratosphere.SageMaker.Domain.DockerSettingsProperty (
        DockerSettingsProperty(..), mkDockerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DockerSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-dockersettings.html>
    DockerSettingsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-dockersettings.html#cfn-sagemaker-domain-dockersettings-enabledockeraccess>
                            enableDockerAccess :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-domain-dockersettings.html#cfn-sagemaker-domain-dockersettings-vpconlytrustedaccounts>
                            vpcOnlyTrustedAccounts :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDockerSettingsProperty :: DockerSettingsProperty
mkDockerSettingsProperty
  = DockerSettingsProperty
      {haddock_workaround_ = (), enableDockerAccess = Prelude.Nothing,
       vpcOnlyTrustedAccounts = Prelude.Nothing}
instance ToResourceProperties DockerSettingsProperty where
  toResourceProperties DockerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Domain.DockerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EnableDockerAccess" Prelude.<$> enableDockerAccess,
                            (JSON..=) "VpcOnlyTrustedAccounts"
                              Prelude.<$> vpcOnlyTrustedAccounts])}
instance JSON.ToJSON DockerSettingsProperty where
  toJSON DockerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EnableDockerAccess" Prelude.<$> enableDockerAccess,
               (JSON..=) "VpcOnlyTrustedAccounts"
                 Prelude.<$> vpcOnlyTrustedAccounts]))
instance Property "EnableDockerAccess" DockerSettingsProperty where
  type PropertyType "EnableDockerAccess" DockerSettingsProperty = Value Prelude.Text
  set newValue DockerSettingsProperty {..}
    = DockerSettingsProperty
        {enableDockerAccess = Prelude.pure newValue, ..}
instance Property "VpcOnlyTrustedAccounts" DockerSettingsProperty where
  type PropertyType "VpcOnlyTrustedAccounts" DockerSettingsProperty = ValueList Prelude.Text
  set newValue DockerSettingsProperty {..}
    = DockerSettingsProperty
        {vpcOnlyTrustedAccounts = Prelude.pure newValue, ..}