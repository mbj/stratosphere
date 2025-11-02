module Stratosphere.Panorama.Package.StorageLocationProperty (
        StorageLocationProperty(..), mkStorageLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StorageLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html>
    StorageLocationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html#cfn-panorama-package-storagelocation-binaryprefixlocation>
                             binaryPrefixLocation :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html#cfn-panorama-package-storagelocation-bucket>
                             bucket :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html#cfn-panorama-package-storagelocation-generatedprefixlocation>
                             generatedPrefixLocation :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html#cfn-panorama-package-storagelocation-manifestprefixlocation>
                             manifestPrefixLocation :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-panorama-package-storagelocation.html#cfn-panorama-package-storagelocation-repoprefixlocation>
                             repoPrefixLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageLocationProperty :: StorageLocationProperty
mkStorageLocationProperty
  = StorageLocationProperty
      {haddock_workaround_ = (), binaryPrefixLocation = Prelude.Nothing,
       bucket = Prelude.Nothing,
       generatedPrefixLocation = Prelude.Nothing,
       manifestPrefixLocation = Prelude.Nothing,
       repoPrefixLocation = Prelude.Nothing}
instance ToResourceProperties StorageLocationProperty where
  toResourceProperties StorageLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::Package.StorageLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BinaryPrefixLocation" Prelude.<$> binaryPrefixLocation,
                            (JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "GeneratedPrefixLocation"
                              Prelude.<$> generatedPrefixLocation,
                            (JSON..=) "ManifestPrefixLocation"
                              Prelude.<$> manifestPrefixLocation,
                            (JSON..=) "RepoPrefixLocation" Prelude.<$> repoPrefixLocation])}
instance JSON.ToJSON StorageLocationProperty where
  toJSON StorageLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BinaryPrefixLocation" Prelude.<$> binaryPrefixLocation,
               (JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "GeneratedPrefixLocation"
                 Prelude.<$> generatedPrefixLocation,
               (JSON..=) "ManifestPrefixLocation"
                 Prelude.<$> manifestPrefixLocation,
               (JSON..=) "RepoPrefixLocation" Prelude.<$> repoPrefixLocation]))
instance Property "BinaryPrefixLocation" StorageLocationProperty where
  type PropertyType "BinaryPrefixLocation" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty
        {binaryPrefixLocation = Prelude.pure newValue, ..}
instance Property "Bucket" StorageLocationProperty where
  type PropertyType "Bucket" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty {bucket = Prelude.pure newValue, ..}
instance Property "GeneratedPrefixLocation" StorageLocationProperty where
  type PropertyType "GeneratedPrefixLocation" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty
        {generatedPrefixLocation = Prelude.pure newValue, ..}
instance Property "ManifestPrefixLocation" StorageLocationProperty where
  type PropertyType "ManifestPrefixLocation" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty
        {manifestPrefixLocation = Prelude.pure newValue, ..}
instance Property "RepoPrefixLocation" StorageLocationProperty where
  type PropertyType "RepoPrefixLocation" StorageLocationProperty = Value Prelude.Text
  set newValue StorageLocationProperty {..}
    = StorageLocationProperty
        {repoPrefixLocation = Prelude.pure newValue, ..}