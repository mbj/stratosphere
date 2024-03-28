module Stratosphere.Timestream.Table.SchemaProperty (
        module Exports, SchemaProperty(..), mkSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.Table.PartitionKeyProperty as Exports
import Stratosphere.ResourceProperties
data SchemaProperty
  = SchemaProperty {compositePartitionKey :: (Prelude.Maybe [PartitionKeyProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaProperty :: SchemaProperty
mkSchemaProperty
  = SchemaProperty {compositePartitionKey = Prelude.Nothing}
instance ToResourceProperties SchemaProperty where
  toResourceProperties SchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::Table.Schema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CompositePartitionKey"
                              Prelude.<$> compositePartitionKey])}
instance JSON.ToJSON SchemaProperty where
  toJSON SchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CompositePartitionKey"
                 Prelude.<$> compositePartitionKey]))
instance Property "CompositePartitionKey" SchemaProperty where
  type PropertyType "CompositePartitionKey" SchemaProperty = [PartitionKeyProperty]
  set newValue SchemaProperty {}
    = SchemaProperty
        {compositePartitionKey = Prelude.pure newValue, ..}