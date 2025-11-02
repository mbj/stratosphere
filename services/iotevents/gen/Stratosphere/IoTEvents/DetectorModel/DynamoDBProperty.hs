module Stratosphere.IoTEvents.DetectorModel.DynamoDBProperty (
        module Exports, DynamoDBProperty(..), mkDynamoDBProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html>
    DynamoDBProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeyfield>
                      hashKeyField :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeytype>
                      hashKeyType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-hashkeyvalue>
                      hashKeyValue :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-operation>
                      operation :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-payload>
                      payload :: (Prelude.Maybe PayloadProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-payloadfield>
                      payloadField :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeyfield>
                      rangeKeyField :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeytype>
                      rangeKeyType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-rangekeyvalue>
                      rangeKeyValue :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-dynamodb.html#cfn-iotevents-detectormodel-dynamodb-tablename>
                      tableName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDynamoDBProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> DynamoDBProperty
mkDynamoDBProperty hashKeyField hashKeyValue tableName
  = DynamoDBProperty
      {haddock_workaround_ = (), hashKeyField = hashKeyField,
       hashKeyValue = hashKeyValue, tableName = tableName,
       hashKeyType = Prelude.Nothing, operation = Prelude.Nothing,
       payload = Prelude.Nothing, payloadField = Prelude.Nothing,
       rangeKeyField = Prelude.Nothing, rangeKeyType = Prelude.Nothing,
       rangeKeyValue = Prelude.Nothing}
instance ToResourceProperties DynamoDBProperty where
  toResourceProperties DynamoDBProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.DynamoDB",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HashKeyField" JSON..= hashKeyField,
                            "HashKeyValue" JSON..= hashKeyValue, "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "HashKeyType" Prelude.<$> hashKeyType,
                               (JSON..=) "Operation" Prelude.<$> operation,
                               (JSON..=) "Payload" Prelude.<$> payload,
                               (JSON..=) "PayloadField" Prelude.<$> payloadField,
                               (JSON..=) "RangeKeyField" Prelude.<$> rangeKeyField,
                               (JSON..=) "RangeKeyType" Prelude.<$> rangeKeyType,
                               (JSON..=) "RangeKeyValue" Prelude.<$> rangeKeyValue]))}
instance JSON.ToJSON DynamoDBProperty where
  toJSON DynamoDBProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HashKeyField" JSON..= hashKeyField,
               "HashKeyValue" JSON..= hashKeyValue, "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "HashKeyType" Prelude.<$> hashKeyType,
                  (JSON..=) "Operation" Prelude.<$> operation,
                  (JSON..=) "Payload" Prelude.<$> payload,
                  (JSON..=) "PayloadField" Prelude.<$> payloadField,
                  (JSON..=) "RangeKeyField" Prelude.<$> rangeKeyField,
                  (JSON..=) "RangeKeyType" Prelude.<$> rangeKeyType,
                  (JSON..=) "RangeKeyValue" Prelude.<$> rangeKeyValue])))
instance Property "HashKeyField" DynamoDBProperty where
  type PropertyType "HashKeyField" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {hashKeyField = newValue, ..}
instance Property "HashKeyType" DynamoDBProperty where
  type PropertyType "HashKeyType" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {hashKeyType = Prelude.pure newValue, ..}
instance Property "HashKeyValue" DynamoDBProperty where
  type PropertyType "HashKeyValue" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {hashKeyValue = newValue, ..}
instance Property "Operation" DynamoDBProperty where
  type PropertyType "Operation" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {operation = Prelude.pure newValue, ..}
instance Property "Payload" DynamoDBProperty where
  type PropertyType "Payload" DynamoDBProperty = PayloadProperty
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {payload = Prelude.pure newValue, ..}
instance Property "PayloadField" DynamoDBProperty where
  type PropertyType "PayloadField" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {payloadField = Prelude.pure newValue, ..}
instance Property "RangeKeyField" DynamoDBProperty where
  type PropertyType "RangeKeyField" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {rangeKeyField = Prelude.pure newValue, ..}
instance Property "RangeKeyType" DynamoDBProperty where
  type PropertyType "RangeKeyType" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {rangeKeyType = Prelude.pure newValue, ..}
instance Property "RangeKeyValue" DynamoDBProperty where
  type PropertyType "RangeKeyValue" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {rangeKeyValue = Prelude.pure newValue, ..}
instance Property "TableName" DynamoDBProperty where
  type PropertyType "TableName" DynamoDBProperty = Value Prelude.Text
  set newValue DynamoDBProperty {..}
    = DynamoDBProperty {tableName = newValue, ..}