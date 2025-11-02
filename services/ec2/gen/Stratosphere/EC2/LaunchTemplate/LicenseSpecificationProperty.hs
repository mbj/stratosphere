module Stratosphere.EC2.LaunchTemplate.LicenseSpecificationProperty (
        LicenseSpecificationProperty(..), mkLicenseSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LicenseSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html>
    LicenseSpecificationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-licensespecification.html#cfn-ec2-launchtemplate-licensespecification-licenseconfigurationarn>
                                  licenseConfigurationArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLicenseSpecificationProperty :: LicenseSpecificationProperty
mkLicenseSpecificationProperty
  = LicenseSpecificationProperty
      {haddock_workaround_ = (),
       licenseConfigurationArn = Prelude.Nothing}
instance ToResourceProperties LicenseSpecificationProperty where
  toResourceProperties LicenseSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.LicenseSpecification",
         supportsTags = Prelude.False,
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
  set newValue LicenseSpecificationProperty {..}
    = LicenseSpecificationProperty
        {licenseConfigurationArn = Prelude.pure newValue, ..}