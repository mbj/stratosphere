module Stratosphere.IoT.TopicRule.DynamoDBActionProperty (
        DynamoDBActionProperty(..), mkDynamoDBActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DynamoDBActionProperty
  = DynamoDBActionProperty {hashKeyField :: (Value Prelude.Text),
                            hashKeyType :: (Prelude.Maybe (Value Prelude.Text)),
                            hashKeyValue :: (Value Prelude.Text),
                            payloadField :: (Prelude.Maybe (Value Prelude.Text)),
                            rangeKeyField :: (Prelude.Maybe (Value Prelude.Text)),
                            rangeKeyType :: (Prelude.Maybe (Value Prelude.Text)),
                            rangeKeyValue :: (Prelude.Maybe (Value Prelude.Text)),
                            roleArn :: (Value Prelude.Text),
                            tableName :: (Value Prelude.Text)}
mkDynamoDBActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> DynamoDBActionProperty
mkDynamoDBActionProperty
  hashKeyField
  hashKeyValue
  roleArn
  tableName
  = DynamoDBActionProperty
      {hashKeyField = hashKeyField, hashKeyValue = hashKeyValue,
       roleArn = roleArn, tableName = tableName,
       hashKeyType = Prelude.Nothing, payloadField = Prelude.Nothing,
       rangeKeyField = Prelude.Nothing, rangeKeyType = Prelude.Nothing,
       rangeKeyValue = Prelude.Nothing}
instance ToResourceProperties DynamoDBActionProperty where
  toResourceProperties DynamoDBActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.DynamoDBAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HashKeyField" JSON..= hashKeyField,
                            "HashKeyValue" JSON..= hashKeyValue, "RoleArn" JSON..= roleArn,
                            "TableName" JSON..= tableName]
                           (Prelude.catMaybes
                              [(JSON..=) "HashKeyType" Prelude.<$> hashKeyType,
                               (JSON..=) "PayloadField" Prelude.<$> payloadField,
                               (JSON..=) "RangeKeyField" Prelude.<$> rangeKeyField,
                               (JSON..=) "RangeKeyType" Prelude.<$> rangeKeyType,
                               (JSON..=) "RangeKeyValue" Prelude.<$> rangeKeyValue]))}
instance JSON.ToJSON DynamoDBActionProperty where
  toJSON DynamoDBActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HashKeyField" JSON..= hashKeyField,
               "HashKeyValue" JSON..= hashKeyValue, "RoleArn" JSON..= roleArn,
               "TableName" JSON..= tableName]
              (Prelude.catMaybes
                 [(JSON..=) "HashKeyType" Prelude.<$> hashKeyType,
                  (JSON..=) "PayloadField" Prelude.<$> payloadField,
                  (JSON..=) "RangeKeyField" Prelude.<$> rangeKeyField,
                  (JSON..=) "RangeKeyType" Prelude.<$> rangeKeyType,
                  (JSON..=) "RangeKeyValue" Prelude.<$> rangeKeyValue])))
instance Property "HashKeyField" DynamoDBActionProperty where
  type PropertyType "HashKeyField" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {hashKeyField = newValue, ..}
instance Property "HashKeyType" DynamoDBActionProperty where
  type PropertyType "HashKeyType" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {hashKeyType = Prelude.pure newValue, ..}
instance Property "HashKeyValue" DynamoDBActionProperty where
  type PropertyType "HashKeyValue" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {hashKeyValue = newValue, ..}
instance Property "PayloadField" DynamoDBActionProperty where
  type PropertyType "PayloadField" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {payloadField = Prelude.pure newValue, ..}
instance Property "RangeKeyField" DynamoDBActionProperty where
  type PropertyType "RangeKeyField" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty
        {rangeKeyField = Prelude.pure newValue, ..}
instance Property "RangeKeyType" DynamoDBActionProperty where
  type PropertyType "RangeKeyType" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {rangeKeyType = Prelude.pure newValue, ..}
instance Property "RangeKeyValue" DynamoDBActionProperty where
  type PropertyType "RangeKeyValue" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty
        {rangeKeyValue = Prelude.pure newValue, ..}
instance Property "RoleArn" DynamoDBActionProperty where
  type PropertyType "RoleArn" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {roleArn = newValue, ..}
instance Property "TableName" DynamoDBActionProperty where
  type PropertyType "TableName" DynamoDBActionProperty = Value Prelude.Text
  set newValue DynamoDBActionProperty {..}
    = DynamoDBActionProperty {tableName = newValue, ..}