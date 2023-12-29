module Stratosphere.IoTEvents.DetectorModel.DynamoDBv2Property (
        module Exports, DynamoDBv2Property(..), mkDynamoDBv2Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBv2Property
  = DynamoDBv2Property {payload :: (Prelude.Maybe PayloadProperty),
                        tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBv2Property :: Value Prelude.Text -> DynamoDBv2Property
mkDynamoDBv2Property tableName
  = DynamoDBv2Property
      {tableName = tableName, payload = Prelude.Nothing}
instance ToResourceProperties DynamoDBv2Property where
  toResourceProperties DynamoDBv2Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.DynamoDBv2",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TableName" JSON..= tableName]
                           (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload]))}
instance JSON.ToJSON DynamoDBv2Property where
  toJSON DynamoDBv2Property {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TableName" JSON..= tableName]
              (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload])))
instance Property "Payload" DynamoDBv2Property where
  type PropertyType "Payload" DynamoDBv2Property = PayloadProperty
  set newValue DynamoDBv2Property {..}
    = DynamoDBv2Property {payload = Prelude.pure newValue, ..}
instance Property "TableName" DynamoDBv2Property where
  type PropertyType "TableName" DynamoDBv2Property = Value Prelude.Text
  set newValue DynamoDBv2Property {..}
    = DynamoDBv2Property {tableName = newValue, ..}