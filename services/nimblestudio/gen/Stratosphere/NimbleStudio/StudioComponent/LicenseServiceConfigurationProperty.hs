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
  = LicenseServiceConfigurationProperty {endpoint :: (Prelude.Maybe (Value Prelude.Text))}
mkLicenseServiceConfigurationProperty ::
  LicenseServiceConfigurationProperty
mkLicenseServiceConfigurationProperty
  = LicenseServiceConfigurationProperty {endpoint = Prelude.Nothing}
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
  set newValue LicenseServiceConfigurationProperty {}
    = LicenseServiceConfigurationProperty
        {endpoint = Prelude.pure newValue, ..}