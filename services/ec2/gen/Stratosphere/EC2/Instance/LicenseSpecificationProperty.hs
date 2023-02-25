module Stratosphere.EC2.Instance.LicenseSpecificationProperty (
        LicenseSpecificationProperty(..), mkLicenseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseSpecificationProperty
  = LicenseSpecificationProperty {licenseConfigurationArn :: (Value Prelude.Text)}
mkLicenseSpecificationProperty ::
  Value Prelude.Text -> LicenseSpecificationProperty
mkLicenseSpecificationProperty licenseConfigurationArn
  = LicenseSpecificationProperty
      {licenseConfigurationArn = licenseConfigurationArn}
instance ToResourceProperties LicenseSpecificationProperty where
  toResourceProperties LicenseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.LicenseSpecification",
         properties = ["LicenseConfigurationArn"
                         JSON..= licenseConfigurationArn]}
instance JSON.ToJSON LicenseSpecificationProperty where
  toJSON LicenseSpecificationProperty {..}
    = JSON.object
        ["LicenseConfigurationArn" JSON..= licenseConfigurationArn]
instance Property "LicenseConfigurationArn" LicenseSpecificationProperty where
  type PropertyType "LicenseConfigurationArn" LicenseSpecificationProperty = Value Prelude.Text
  set newValue LicenseSpecificationProperty {}
    = LicenseSpecificationProperty
        {licenseConfigurationArn = newValue, ..}