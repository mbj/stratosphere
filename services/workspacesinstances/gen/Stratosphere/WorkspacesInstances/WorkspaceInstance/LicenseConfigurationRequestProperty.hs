module Stratosphere.WorkspacesInstances.WorkspaceInstance.LicenseConfigurationRequestProperty (
        LicenseConfigurationRequestProperty(..),
        mkLicenseConfigurationRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseConfigurationRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-licenseconfigurationrequest.html>
    LicenseConfigurationRequestProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-licenseconfigurationrequest.html#cfn-workspacesinstances-workspaceinstance-licenseconfigurationrequest-licenseconfigurationarn>
                                         licenseConfigurationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLicenseConfigurationRequestProperty ::
  LicenseConfigurationRequestProperty
mkLicenseConfigurationRequestProperty
  = LicenseConfigurationRequestProperty
      {haddock_workaround_ = (),
       licenseConfigurationArn = Prelude.Nothing}
instance ToResourceProperties LicenseConfigurationRequestProperty where
  toResourceProperties LicenseConfigurationRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.LicenseConfigurationRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LicenseConfigurationArn"
                              Prelude.<$> licenseConfigurationArn])}
instance JSON.ToJSON LicenseConfigurationRequestProperty where
  toJSON LicenseConfigurationRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LicenseConfigurationArn"
                 Prelude.<$> licenseConfigurationArn]))
instance Property "LicenseConfigurationArn" LicenseConfigurationRequestProperty where
  type PropertyType "LicenseConfigurationArn" LicenseConfigurationRequestProperty = Value Prelude.Text
  set newValue LicenseConfigurationRequestProperty {..}
    = LicenseConfigurationRequestProperty
        {licenseConfigurationArn = Prelude.pure newValue, ..}