module Stratosphere.IoT.SoftwarePackageVersion.SbomProperty (
        module Exports, SbomProperty(..), mkSbomProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SoftwarePackageVersion.S3LocationProperty as Exports
import Stratosphere.ResourceProperties
data SbomProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-sbom.html>
    SbomProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-softwarepackageversion-sbom.html#cfn-iot-softwarepackageversion-sbom-s3location>
                  s3Location :: S3LocationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSbomProperty :: S3LocationProperty -> SbomProperty
mkSbomProperty s3Location
  = SbomProperty {haddock_workaround_ = (), s3Location = s3Location}
instance ToResourceProperties SbomProperty where
  toResourceProperties SbomProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SoftwarePackageVersion.Sbom",
         supportsTags = Prelude.False,
         properties = ["S3Location" JSON..= s3Location]}
instance JSON.ToJSON SbomProperty where
  toJSON SbomProperty {..}
    = JSON.object ["S3Location" JSON..= s3Location]
instance Property "S3Location" SbomProperty where
  type PropertyType "S3Location" SbomProperty = S3LocationProperty
  set newValue SbomProperty {..}
    = SbomProperty {s3Location = newValue, ..}