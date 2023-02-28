module Stratosphere.DynamoDB.GlobalTable.LocalSecondaryIndexProperty (
        module Exports, LocalSecondaryIndexProperty(..),
        mkLocalSecondaryIndexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ProjectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocalSecondaryIndexProperty
  = LocalSecondaryIndexProperty {indexName :: (Value Prelude.Text),
                                 keySchema :: [KeySchemaProperty],
                                 projection :: ProjectionProperty}
mkLocalSecondaryIndexProperty ::
  Value Prelude.Text
  -> [KeySchemaProperty]
     -> ProjectionProperty -> LocalSecondaryIndexProperty
mkLocalSecondaryIndexProperty indexName keySchema projection
  = LocalSecondaryIndexProperty
      {indexName = indexName, keySchema = keySchema,
       projection = projection}
instance ToResourceProperties LocalSecondaryIndexProperty where
  toResourceProperties LocalSecondaryIndexProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.LocalSecondaryIndex",
         supportsTags = Prelude.False,
         properties = ["IndexName" JSON..= indexName,
                       "KeySchema" JSON..= keySchema, "Projection" JSON..= projection]}
instance JSON.ToJSON LocalSecondaryIndexProperty where
  toJSON LocalSecondaryIndexProperty {..}
    = JSON.object
        ["IndexName" JSON..= indexName, "KeySchema" JSON..= keySchema,
         "Projection" JSON..= projection]
instance Property "IndexName" LocalSecondaryIndexProperty where
  type PropertyType "IndexName" LocalSecondaryIndexProperty = Value Prelude.Text
  set newValue LocalSecondaryIndexProperty {..}
    = LocalSecondaryIndexProperty {indexName = newValue, ..}
instance Property "KeySchema" LocalSecondaryIndexProperty where
  type PropertyType "KeySchema" LocalSecondaryIndexProperty = [KeySchemaProperty]
  set newValue LocalSecondaryIndexProperty {..}
    = LocalSecondaryIndexProperty {keySchema = newValue, ..}
instance Property "Projection" LocalSecondaryIndexProperty where
  type PropertyType "Projection" LocalSecondaryIndexProperty = ProjectionProperty
  set newValue LocalSecondaryIndexProperty {..}
    = LocalSecondaryIndexProperty {projection = newValue, ..}