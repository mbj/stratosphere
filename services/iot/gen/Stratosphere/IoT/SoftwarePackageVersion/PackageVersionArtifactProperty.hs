module Stratosphere.IoT.SoftwarePackageVersion.PackageVersionArtifactProperty (
        module Exports, PackageVersionArtifactProperty(..),
        mkPackageVersionArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SoftwarePackageVersion.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data PackageVersionArtifactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-packageversionartifact.html>
    PackageVersionArtifactProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-packageversionartifact.html#cfn-iot-softwarepackageversion-packageversionartifact-s3location>
                                    s3Location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackageVersionArtifactProperty ::
  S3LocationProperty -> PackageVersionArtifactProperty
mkPackageVersionArtifactProperty s3Location
  = PackageVersionArtifactProperty
      {haddock_workaround_ = (), s3Location = s3Location}
instance ToResourceProperties PackageVersionArtifactProperty where
  toResourceProperties PackageVersionArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SoftwarePackageVersion.PackageVersionArtifact",
         supportsTags = Prelude.False,
         properties = ["S3Location" JSON..= s3Location]}
instance JSON.ToJSON PackageVersionArtifactProperty where
  toJSON PackageVersionArtifactProperty {..}
    = JSON.object ["S3Location" JSON..= s3Location]
instance Property "S3Location" PackageVersionArtifactProperty where
  type PropertyType "S3Location" PackageVersionArtifactProperty = S3LocationProperty
  set newValue PackageVersionArtifactProperty {..}
    = PackageVersionArtifactProperty {s3Location = newValue, ..}