module Stratosphere.Glue.Table.IcebergInputProperty (
        module Exports, IcebergInputProperty(..), mkIcebergInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Table.MetadataOperationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcebergInputProperty
  = IcebergInputProperty {metadataOperation :: (Prelude.Maybe MetadataOperationProperty),
                          version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergInputProperty :: IcebergInputProperty
mkIcebergInputProperty
  = IcebergInputProperty
      {metadataOperation = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties IcebergInputProperty where
  toResourceProperties IcebergInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Table.IcebergInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MetadataOperation" Prelude.<$> metadataOperation,
                            (JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON IcebergInputProperty where
  toJSON IcebergInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MetadataOperation" Prelude.<$> metadataOperation,
               (JSON..=) "Version" Prelude.<$> version]))
instance Property "MetadataOperation" IcebergInputProperty where
  type PropertyType "MetadataOperation" IcebergInputProperty = MetadataOperationProperty
  set newValue IcebergInputProperty {..}
    = IcebergInputProperty
        {metadataOperation = Prelude.pure newValue, ..}
instance Property "Version" IcebergInputProperty where
  type PropertyType "Version" IcebergInputProperty = Value Prelude.Text
  set newValue IcebergInputProperty {..}
    = IcebergInputProperty {version = Prelude.pure newValue, ..}