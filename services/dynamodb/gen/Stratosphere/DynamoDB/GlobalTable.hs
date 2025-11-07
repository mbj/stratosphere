module Stratosphere.DynamoDB.GlobalTable (
        module Exports, GlobalTable(..), mkGlobalTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.AttributeDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.GlobalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.GlobalTableWitnessProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.LocalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReplicaSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.SSESpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.StreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.TimeToLiveSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WarmThroughputProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WriteOnDemandThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WriteProvisionedThroughputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalTable
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html>
    GlobalTable {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-attributedefinitions>
                 attributeDefinitions :: [AttributeDefinitionProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-billingmode>
                 billingMode :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-globalsecondaryindexes>
                 globalSecondaryIndexes :: (Prelude.Maybe [GlobalSecondaryIndexProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-globaltablewitnesses>
                 globalTableWitnesses :: (Prelude.Maybe [GlobalTableWitnessProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-keyschema>
                 keySchema :: [KeySchemaProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-localsecondaryindexes>
                 localSecondaryIndexes :: (Prelude.Maybe [LocalSecondaryIndexProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-multiregionconsistency>
                 multiRegionConsistency :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-replicas>
                 replicas :: [ReplicaSpecificationProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-ssespecification>
                 sSESpecification :: (Prelude.Maybe SSESpecificationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-streamspecification>
                 streamSpecification :: (Prelude.Maybe StreamSpecificationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-tablename>
                 tableName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-timetolivespecification>
                 timeToLiveSpecification :: (Prelude.Maybe TimeToLiveSpecificationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-warmthroughput>
                 warmThroughput :: (Prelude.Maybe WarmThroughputProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-writeondemandthroughputsettings>
                 writeOnDemandThroughputSettings :: (Prelude.Maybe WriteOnDemandThroughputSettingsProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-globaltable.html#cfn-dynamodb-globaltable-writeprovisionedthroughputsettings>
                 writeProvisionedThroughputSettings :: (Prelude.Maybe WriteProvisionedThroughputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalTable ::
  [AttributeDefinitionProperty]
  -> [KeySchemaProperty]
     -> [ReplicaSpecificationProperty] -> GlobalTable
mkGlobalTable attributeDefinitions keySchema replicas
  = GlobalTable
      {haddock_workaround_ = (),
       attributeDefinitions = attributeDefinitions, keySchema = keySchema,
       replicas = replicas, billingMode = Prelude.Nothing,
       globalSecondaryIndexes = Prelude.Nothing,
       globalTableWitnesses = Prelude.Nothing,
       localSecondaryIndexes = Prelude.Nothing,
       multiRegionConsistency = Prelude.Nothing,
       sSESpecification = Prelude.Nothing,
       streamSpecification = Prelude.Nothing, tableName = Prelude.Nothing,
       timeToLiveSpecification = Prelude.Nothing,
       warmThroughput = Prelude.Nothing,
       writeOnDemandThroughputSettings = Prelude.Nothing,
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
                               (JSON..=) "GlobalTableWitnesses" Prelude.<$> globalTableWitnesses,
                               (JSON..=) "LocalSecondaryIndexes"
                                 Prelude.<$> localSecondaryIndexes,
                               (JSON..=) "MultiRegionConsistency"
                                 Prelude.<$> multiRegionConsistency,
                               (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                               (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                               (JSON..=) "TableName" Prelude.<$> tableName,
                               (JSON..=) "TimeToLiveSpecification"
                                 Prelude.<$> timeToLiveSpecification,
                               (JSON..=) "WarmThroughput" Prelude.<$> warmThroughput,
                               (JSON..=) "WriteOnDemandThroughputSettings"
                                 Prelude.<$> writeOnDemandThroughputSettings,
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
                  (JSON..=) "GlobalTableWitnesses" Prelude.<$> globalTableWitnesses,
                  (JSON..=) "LocalSecondaryIndexes"
                    Prelude.<$> localSecondaryIndexes,
                  (JSON..=) "MultiRegionConsistency"
                    Prelude.<$> multiRegionConsistency,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "TimeToLiveSpecification"
                    Prelude.<$> timeToLiveSpecification,
                  (JSON..=) "WarmThroughput" Prelude.<$> warmThroughput,
                  (JSON..=) "WriteOnDemandThroughputSettings"
                    Prelude.<$> writeOnDemandThroughputSettings,
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
instance Property "GlobalTableWitnesses" GlobalTable where
  type PropertyType "GlobalTableWitnesses" GlobalTable = [GlobalTableWitnessProperty]
  set newValue GlobalTable {..}
    = GlobalTable {globalTableWitnesses = Prelude.pure newValue, ..}
instance Property "KeySchema" GlobalTable where
  type PropertyType "KeySchema" GlobalTable = [KeySchemaProperty]
  set newValue GlobalTable {..}
    = GlobalTable {keySchema = newValue, ..}
instance Property "LocalSecondaryIndexes" GlobalTable where
  type PropertyType "LocalSecondaryIndexes" GlobalTable = [LocalSecondaryIndexProperty]
  set newValue GlobalTable {..}
    = GlobalTable {localSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "MultiRegionConsistency" GlobalTable where
  type PropertyType "MultiRegionConsistency" GlobalTable = Value Prelude.Text
  set newValue GlobalTable {..}
    = GlobalTable {multiRegionConsistency = Prelude.pure newValue, ..}
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
instance Property "WarmThroughput" GlobalTable where
  type PropertyType "WarmThroughput" GlobalTable = WarmThroughputProperty
  set newValue GlobalTable {..}
    = GlobalTable {warmThroughput = Prelude.pure newValue, ..}
instance Property "WriteOnDemandThroughputSettings" GlobalTable where
  type PropertyType "WriteOnDemandThroughputSettings" GlobalTable = WriteOnDemandThroughputSettingsProperty
  set newValue GlobalTable {..}
    = GlobalTable
        {writeOnDemandThroughputSettings = Prelude.pure newValue, ..}
instance Property "WriteProvisionedThroughputSettings" GlobalTable where
  type PropertyType "WriteProvisionedThroughputSettings" GlobalTable = WriteProvisionedThroughputSettingsProperty
  set newValue GlobalTable {..}
    = GlobalTable
        {writeProvisionedThroughputSettings = Prelude.pure newValue, ..}