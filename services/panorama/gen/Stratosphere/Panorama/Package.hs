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
  = Package {packageName :: (Value Prelude.Text),
             storageLocation :: (Prelude.Maybe StorageLocationProperty),
             tags :: (Prelude.Maybe [Tag])}
mkPackage :: Value Prelude.Text -> Package
mkPackage packageName
  = Package
      {packageName = packageName, storageLocation = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Package where
  toResourceProperties Package {..}
    = ResourceProperties
        {awsType = "AWS::Panorama::Package",
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