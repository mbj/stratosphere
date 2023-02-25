module Stratosphere.EC2.LaunchTemplate.LicenseSpecificationProperty (
        LicenseSpecificationProperty(..), mkLicenseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseSpecificationProperty
  = LicenseSpecificationProperty {licenseConfigurationArn :: (Prelude.Maybe (Value Prelude.Text))}
mkLicenseSpecificationProperty :: LicenseSpecificationProperty
mkLicenseSpecificationProperty
  = LicenseSpecificationProperty
      {licenseConfigurationArn = Prelude.Nothing}
instance ToResourceProperties LicenseSpecificationProperty where
  toResourceProperties LicenseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.LicenseSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LicenseConfigurationArn"
                              Prelude.<$> licenseConfigurationArn])}
instance JSON.ToJSON LicenseSpecificationProperty where
  toJSON LicenseSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LicenseConfigurationArn"
                 Prelude.<$> licenseConfigurationArn]))
instance Property "LicenseConfigurationArn" LicenseSpecificationProperty where
  type PropertyType "LicenseConfigurationArn" LicenseSpecificationProperty = Value Prelude.Text
  set newValue LicenseSpecificationProperty {}
    = LicenseSpecificationProperty
        {licenseConfigurationArn = Prelude.pure newValue, ..}