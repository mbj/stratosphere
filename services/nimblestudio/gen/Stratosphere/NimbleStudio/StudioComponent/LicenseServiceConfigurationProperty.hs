module Stratosphere.NimbleStudio.StudioComponent.LicenseServiceConfigurationProperty (
        LicenseServiceConfigurationProperty(..),
        mkLicenseServiceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseServiceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-licenseserviceconfiguration.html>
    LicenseServiceConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-licenseserviceconfiguration.html#cfn-nimblestudio-studiocomponent-licenseserviceconfiguration-endpoint>
                                         endpoint :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLicenseServiceConfigurationProperty ::
  LicenseServiceConfigurationProperty
mkLicenseServiceConfigurationProperty
  = LicenseServiceConfigurationProperty
      {haddock_workaround_ = (), endpoint = Prelude.Nothing}
instance ToResourceProperties LicenseServiceConfigurationProperty where
  toResourceProperties LicenseServiceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.LicenseServiceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Endpoint" Prelude.<$> endpoint])}
instance JSON.ToJSON LicenseServiceConfigurationProperty where
  toJSON LicenseServiceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Endpoint" Prelude.<$> endpoint]))
instance Property "Endpoint" LicenseServiceConfigurationProperty where
  type PropertyType "Endpoint" LicenseServiceConfigurationProperty = Value Prelude.Text
  set newValue LicenseServiceConfigurationProperty {..}
    = LicenseServiceConfigurationProperty
        {endpoint = Prelude.pure newValue, ..}