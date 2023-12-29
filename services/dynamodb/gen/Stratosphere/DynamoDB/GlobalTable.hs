module Stratosphere.DynamoDB.GlobalTable (
        module Exports, GlobalTable(..), mkGlobalTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.AttributeDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.GlobalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.LocalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.SSESpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.StreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.TimeToLiveSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WriteProvisionedThroughputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalTable
  = GlobalTable {attributeDefinitions :: [AttributeDefinitionProperty],
                 billingMode :: (Prelude.Maybe (Value Prelude.Text)),
                 globalSecondaryIndexes :: (Prelude.Maybe [GlobalSecondaryIndexProperty]),
                 keySchema :: [KeySchemaProperty],
                 localSecondaryIndexes :: (Prelude.Maybe [LocalSecondaryIndexProperty]),
                 replicas :: [ReplicaSpecificationProperty],
                 sSESpecification :: (Prelude.Maybe SSESpecificationProperty),
                 streamSpecification :: (Prelude.Maybe StreamSpecificationProperty),
                 tableName :: (Prelude.Maybe (Value Prelude.Text)),
                 timeToLiveSpecification :: (Prelude.Maybe TimeToLiveSpecificationProperty),
                 writeProvisionedThroughputSettings :: (Prelude.Maybe WriteProvisionedThroughputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalTable ::
  [AttributeDefinitionProperty]
  -> [KeySchemaProperty]
     -> [ReplicaSpecificationProperty] -> GlobalTable
mkGlobalTable attributeDefinitions keySchema replicas
  = GlobalTable
      {attributeDefinitions = attributeDefinitions,
       keySchema = keySchema, replicas = replicas,
       billingMode = Prelude.Nothing,
       globalSecondaryIndexes = Prelude.Nothing,
       localSecondaryIndexes = Prelude.Nothing,
       sSESpecification = Prelude.Nothing,
       streamSpecification = Prelude.Nothing, tableName = Prelude.Nothing,
       timeToLiveSpecification = Prelude.Nothing,
       writeProvisionedThroughputSettings = Prelude.Nothing}
instance ToResourceProperties GlobalTable where
  toResourceProperties GlobalTable {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeDefinitions" JSON..= attributeDefinitions,
                            "KeySchema" JSON..= keySchema, "Replicas" JSON..= replicas]
                           (Prelude.catMaybes
                              [(JSON..=) "BillingMode" Prelude.<$> billingMode,
                               (JSON..=) "GlobalSecondaryIndexes"
                                 Prelude.<$> globalSecondaryIndexes,
                               (JSON..=) "LocalSecondaryIndexes"
                                 Prelude.<$> localSecondaryIndexes,
                               (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                               (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                               (JSON..=) "TableName" Prelude.<$> tableName,
                               (JSON..=) "TimeToLiveSpecification"
                                 Prelude.<$> timeToLiveSpecification,
                               (JSON..=) "WriteProvisionedThroughputSettings"
                                 Prelude.<$> writeProvisionedThroughputSettings]))}
instance JSON.ToJSON GlobalTable where
  toJSON GlobalTable {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeDefinitions" JSON..= attributeDefinitions,
               "KeySchema" JSON..= keySchema, "Replicas" JSON..= replicas]
              (Prelude.catMaybes
                 [(JSON..=) "BillingMode" Prelude.<$> billingMode,
                  (JSON..=) "GlobalSecondaryIndexes"
                    Prelude.<$> globalSecondaryIndexes,
                  (JSON..=) "LocalSecondaryIndexes"
                    Prelude.<$> localSecondaryIndexes,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "TimeToLiveSpecification"
                    Prelude.<$> timeToLiveSpecification,
                  (JSON..=) "WriteProvisionedThroughputSettings"
                    Prelude.<$> writeProvisionedThroughputSettings])))
instance Property "AttributeDefinitions" GlobalTable where
  type PropertyType "AttributeDefinitions" GlobalTable = [AttributeDefinitionProperty]
  set newValue GlobalTable {..}
    = GlobalTable {attributeDefinitions = newValue, ..}
instance Property "BillingMode" GlobalTable where
  type PropertyType "BillingMode" GlobalTable = Value Prelude.Text
  set newValue GlobalTable {..}
    = GlobalTable {billingMode = Prelude.pure newValue, ..}
instance Property "GlobalSecondaryIndexes" GlobalTable where
  type PropertyType "GlobalSecondaryIndexes" GlobalTable = [GlobalSecondaryIndexProperty]
  set newValue GlobalTable {..}
    = GlobalTable {globalSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "KeySchema" GlobalTable where
  type PropertyType "KeySchema" GlobalTable = [KeySchemaProperty]
  set newValue GlobalTable {..}
    = GlobalTable {keySchema = newValue, ..}
instance Property "LocalSecondaryIndexes" GlobalTable where
  type PropertyType "LocalSecondaryIndexes" GlobalTable = [LocalSecondaryIndexProperty]
  set newValue GlobalTable {..}
    = GlobalTable {localSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "Replicas" GlobalTable where
  type PropertyType "Replicas" GlobalTable = [ReplicaSpecificationProperty]
  set newValue GlobalTable {..}
    = GlobalTable {replicas = newValue, ..}
instance Property "SSESpecification" GlobalTable where
  type PropertyType "SSESpecification" GlobalTable = SSESpecificationProperty
  set newValue GlobalTable {..}
    = GlobalTable {sSESpecification = Prelude.pure newValue, ..}
instance Property "StreamSpecification" GlobalTable where
  type PropertyType "StreamSpecification" GlobalTable = StreamSpecificationProperty
  set newValue GlobalTable {..}
    = GlobalTable {streamSpecification = Prelude.pure newValue, ..}
instance Property "TableName" GlobalTable where
  type PropertyType "TableName" GlobalTable = Value Prelude.Text
  set newValue GlobalTable {..}
    = GlobalTable {tableName = Prelude.pure newValue, ..}
instance Property "TimeToLiveSpecification" GlobalTable where
  type PropertyType "TimeToLiveSpecification" GlobalTable = TimeToLiveSpecificationProperty
  set newValue GlobalTable {..}
    = GlobalTable {timeToLiveSpecification = Prelude.pure newValue, ..}
instance Property "WriteProvisionedThroughputSettings" GlobalTable where
  type PropertyType "WriteProvisionedThroughputSettings" GlobalTable = WriteProvisionedThroughputSettingsProperty
  set newValue GlobalTable {..}
    = GlobalTable
        {writeProvisionedThroughputSettings = Prelude.pure newValue, ..}