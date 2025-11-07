module Stratosphere.IoT.SoftwarePackageVersion (
        module Exports, SoftwarePackageVersion(..),
        mkSoftwarePackageVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.SoftwarePackageVersion.PackageVersionArtifactProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.SoftwarePackageVersion.SbomProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SoftwarePackageVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html>
    SoftwarePackageVersion {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-artifact>
                            artifact :: (Prelude.Maybe PackageVersionArtifactProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-attributes>
                            attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-description>
                            description :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-packagename>
                            packageName :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-recipe>
                            recipe :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-sbom>
                            sbom :: (Prelude.Maybe SbomProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-tags>
                            tags :: (Prelude.Maybe [Tag]),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-softwarepackageversion.html#cfn-iot-softwarepackageversion-versionname>
                            versionName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSoftwarePackageVersion ::
  Value Prelude.Text -> SoftwarePackageVersion
mkSoftwarePackageVersion packageName
  = SoftwarePackageVersion
      {haddock_workaround_ = (), packageName = packageName,
       artifact = Prelude.Nothing, attributes = Prelude.Nothing,
       description = Prelude.Nothing, recipe = Prelude.Nothing,
       sbom = Prelude.Nothing, tags = Prelude.Nothing,
       versionName = Prelude.Nothing}
instance ToResourceProperties SoftwarePackageVersion where
  toResourceProperties SoftwarePackageVersion {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SoftwarePackageVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PackageName" JSON..= packageName]
                           (Prelude.catMaybes
                              [(JSON..=) "Artifact" Prelude.<$> artifact,
                               (JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Recipe" Prelude.<$> recipe,
                               (JSON..=) "Sbom" Prelude.<$> sbom,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionName" Prelude.<$> versionName]))}
instance JSON.ToJSON SoftwarePackageVersion where
  toJSON SoftwarePackageVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PackageName" JSON..= packageName]
              (Prelude.catMaybes
                 [(JSON..=) "Artifact" Prelude.<$> artifact,
                  (JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Recipe" Prelude.<$> recipe,
                  (JSON..=) "Sbom" Prelude.<$> sbom,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionName" Prelude.<$> versionName])))
instance Property "Artifact" SoftwarePackageVersion where
  type PropertyType "Artifact" SoftwarePackageVersion = PackageVersionArtifactProperty
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {artifact = Prelude.pure newValue, ..}
instance Property "Attributes" SoftwarePackageVersion where
  type PropertyType "Attributes" SoftwarePackageVersion = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {attributes = Prelude.pure newValue, ..}
instance Property "Description" SoftwarePackageVersion where
  type PropertyType "Description" SoftwarePackageVersion = Value Prelude.Text
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {description = Prelude.pure newValue, ..}
instance Property "PackageName" SoftwarePackageVersion where
  type PropertyType "PackageName" SoftwarePackageVersion = Value Prelude.Text
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {packageName = newValue, ..}
instance Property "Recipe" SoftwarePackageVersion where
  type PropertyType "Recipe" SoftwarePackageVersion = Value Prelude.Text
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {recipe = Prelude.pure newValue, ..}
instance Property "Sbom" SoftwarePackageVersion where
  type PropertyType "Sbom" SoftwarePackageVersion = SbomProperty
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {sbom = Prelude.pure newValue, ..}
instance Property "Tags" SoftwarePackageVersion where
  type PropertyType "Tags" SoftwarePackageVersion = [Tag]
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {tags = Prelude.pure newValue, ..}
instance Property "VersionName" SoftwarePackageVersion where
  type PropertyType "VersionName" SoftwarePackageVersion = Value Prelude.Text
  set newValue SoftwarePackageVersion {..}
    = SoftwarePackageVersion {versionName = Prelude.pure newValue, ..}