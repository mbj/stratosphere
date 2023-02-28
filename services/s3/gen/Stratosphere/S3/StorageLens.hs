module Stratosphere.S3.StorageLens (
        module Exports, StorageLens(..), mkStorageLens
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.StorageLensConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
data StorageLens
  = StorageLens {storageLensConfiguration :: StorageLensConfigurationProperty,
                 tags :: (Prelude.Maybe [Tag])}
mkStorageLens :: StorageLensConfigurationProperty -> StorageLens
mkStorageLens storageLensConfiguration
  = StorageLens
      {storageLensConfiguration = storageLensConfiguration,
       tags = Prelude.Nothing}
instance ToResourceProperties StorageLens where
  toResourceProperties StorageLens {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StorageLensConfiguration" JSON..= storageLensConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StorageLens where
  toJSON StorageLens {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StorageLensConfiguration" JSON..= storageLensConfiguration]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "StorageLensConfiguration" StorageLens where
  type PropertyType "StorageLensConfiguration" StorageLens = StorageLensConfigurationProperty
  set newValue StorageLens {..}
    = StorageLens {storageLensConfiguration = newValue, ..}
instance Property "Tags" StorageLens where
  type PropertyType "Tags" StorageLens = [Tag]
  set newValue StorageLens {..}
    = StorageLens {tags = Prelude.pure newValue, ..}