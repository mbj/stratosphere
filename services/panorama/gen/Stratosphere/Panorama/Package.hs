module Stratosphere.Panorama.Package (
        module Exports, Package(..), mkPackage
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Panorama.Package.StorageLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Package
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-package.html>
    Package {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-package.html#cfn-panorama-package-packagename>
             packageName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-package.html#cfn-panorama-package-storagelocation>
             storageLocation :: (Prelude.Maybe StorageLocationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-panorama-package.html#cfn-panorama-package-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPackage :: Value Prelude.Text -> Package
mkPackage packageName
  = Package
      {haddock_workaround_ = (), packageName = packageName,
       storageLocation = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Package where
  toResourceProperties Package {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::Package", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PackageName" JSON..= packageName]
                           (Prelude.catMaybes
                              [(JSON..=) "StorageLocation" Prelude.<$> storageLocation,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Package where
  toJSON Package {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PackageName" JSON..= packageName]
              (Prelude.catMaybes
                 [(JSON..=) "StorageLocation" Prelude.<$> storageLocation,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "PackageName" Package where
  type PropertyType "PackageName" Package = Value Prelude.Text
  set newValue Package {..} = Package {packageName = newValue, ..}
instance Property "StorageLocation" Package where
  type PropertyType "StorageLocation" Package = StorageLocationProperty
  set newValue Package {..}
    = Package {storageLocation = Prelude.pure newValue, ..}
instance Property "Tags" Package where
  type PropertyType "Tags" Package = [Tag]
  set newValue Package {..}
    = Package {tags = Prelude.pure newValue, ..}