module Stratosphere.DynamoDB.Table (
        module Exports, Table(..), mkTable
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.AttributeDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ContributorInsightsSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.GlobalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ImportSourceSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.KinesisStreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.LocalSecondaryIndexProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.PointInTimeRecoverySpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ProvisionedThroughputProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.SSESpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.StreamSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.TimeToLiveSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Table
  = Table {attributeDefinitions :: (Prelude.Maybe [AttributeDefinitionProperty]),
           billingMode :: (Prelude.Maybe (Value Prelude.Text)),
           contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
           globalSecondaryIndexes :: (Prelude.Maybe [GlobalSecondaryIndexProperty]),
           importSourceSpecification :: (Prelude.Maybe ImportSourceSpecificationProperty),
           keySchema :: [KeySchemaProperty],
           kinesisStreamSpecification :: (Prelude.Maybe KinesisStreamSpecificationProperty),
           localSecondaryIndexes :: (Prelude.Maybe [LocalSecondaryIndexProperty]),
           pointInTimeRecoverySpecification :: (Prelude.Maybe PointInTimeRecoverySpecificationProperty),
           provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty),
           sSESpecification :: (Prelude.Maybe SSESpecificationProperty),
           streamSpecification :: (Prelude.Maybe StreamSpecificationProperty),
           tableClass :: (Prelude.Maybe (Value Prelude.Text)),
           tableName :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag]),
           timeToLiveSpecification :: (Prelude.Maybe TimeToLiveSpecificationProperty)}
mkTable :: [KeySchemaProperty] -> Table
mkTable keySchema
  = Table
      {keySchema = keySchema, attributeDefinitions = Prelude.Nothing,
       billingMode = Prelude.Nothing,
       contributorInsightsSpecification = Prelude.Nothing,
       globalSecondaryIndexes = Prelude.Nothing,
       importSourceSpecification = Prelude.Nothing,
       kinesisStreamSpecification = Prelude.Nothing,
       localSecondaryIndexes = Prelude.Nothing,
       pointInTimeRecoverySpecification = Prelude.Nothing,
       provisionedThroughput = Prelude.Nothing,
       sSESpecification = Prelude.Nothing,
       streamSpecification = Prelude.Nothing,
       tableClass = Prelude.Nothing, tableName = Prelude.Nothing,
       tags = Prelude.Nothing, timeToLiveSpecification = Prelude.Nothing}
instance ToResourceProperties Table where
  toResourceProperties Table {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeySchema" JSON..= keySchema]
                           (Prelude.catMaybes
                              [(JSON..=) "AttributeDefinitions" Prelude.<$> attributeDefinitions,
                               (JSON..=) "BillingMode" Prelude.<$> billingMode,
                               (JSON..=) "ContributorInsightsSpecification"
                                 Prelude.<$> contributorInsightsSpecification,
                               (JSON..=) "GlobalSecondaryIndexes"
                                 Prelude.<$> globalSecondaryIndexes,
                               (JSON..=) "ImportSourceSpecification"
                                 Prelude.<$> importSourceSpecification,
                               (JSON..=) "KinesisStreamSpecification"
                                 Prelude.<$> kinesisStreamSpecification,
                               (JSON..=) "LocalSecondaryIndexes"
                                 Prelude.<$> localSecondaryIndexes,
                               (JSON..=) "PointInTimeRecoverySpecification"
                                 Prelude.<$> pointInTimeRecoverySpecification,
                               (JSON..=) "ProvisionedThroughput"
                                 Prelude.<$> provisionedThroughput,
                               (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                               (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                               (JSON..=) "TableClass" Prelude.<$> tableClass,
                               (JSON..=) "TableName" Prelude.<$> tableName,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeToLiveSpecification"
                                 Prelude.<$> timeToLiveSpecification]))}
instance JSON.ToJSON Table where
  toJSON Table {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeySchema" JSON..= keySchema]
              (Prelude.catMaybes
                 [(JSON..=) "AttributeDefinitions" Prelude.<$> attributeDefinitions,
                  (JSON..=) "BillingMode" Prelude.<$> billingMode,
                  (JSON..=) "ContributorInsightsSpecification"
                    Prelude.<$> contributorInsightsSpecification,
                  (JSON..=) "GlobalSecondaryIndexes"
                    Prelude.<$> globalSecondaryIndexes,
                  (JSON..=) "ImportSourceSpecification"
                    Prelude.<$> importSourceSpecification,
                  (JSON..=) "KinesisStreamSpecification"
                    Prelude.<$> kinesisStreamSpecification,
                  (JSON..=) "LocalSecondaryIndexes"
                    Prelude.<$> localSecondaryIndexes,
                  (JSON..=) "PointInTimeRecoverySpecification"
                    Prelude.<$> pointInTimeRecoverySpecification,
                  (JSON..=) "ProvisionedThroughput"
                    Prelude.<$> provisionedThroughput,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "StreamSpecification" Prelude.<$> streamSpecification,
                  (JSON..=) "TableClass" Prelude.<$> tableClass,
                  (JSON..=) "TableName" Prelude.<$> tableName,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeToLiveSpecification"
                    Prelude.<$> timeToLiveSpecification])))
instance Property "AttributeDefinitions" Table where
  type PropertyType "AttributeDefinitions" Table = [AttributeDefinitionProperty]
  set newValue Table {..}
    = Table {attributeDefinitions = Prelude.pure newValue, ..}
instance Property "BillingMode" Table where
  type PropertyType "BillingMode" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {billingMode = Prelude.pure newValue, ..}
instance Property "ContributorInsightsSpecification" Table where
  type PropertyType "ContributorInsightsSpecification" Table = ContributorInsightsSpecificationProperty
  set newValue Table {..}
    = Table
        {contributorInsightsSpecification = Prelude.pure newValue, ..}
instance Property "GlobalSecondaryIndexes" Table where
  type PropertyType "GlobalSecondaryIndexes" Table = [GlobalSecondaryIndexProperty]
  set newValue Table {..}
    = Table {globalSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "ImportSourceSpecification" Table where
  type PropertyType "ImportSourceSpecification" Table = ImportSourceSpecificationProperty
  set newValue Table {..}
    = Table {importSourceSpecification = Prelude.pure newValue, ..}
instance Property "KeySchema" Table where
  type PropertyType "KeySchema" Table = [KeySchemaProperty]
  set newValue Table {..} = Table {keySchema = newValue, ..}
instance Property "KinesisStreamSpecification" Table where
  type PropertyType "KinesisStreamSpecification" Table = KinesisStreamSpecificationProperty
  set newValue Table {..}
    = Table {kinesisStreamSpecification = Prelude.pure newValue, ..}
instance Property "LocalSecondaryIndexes" Table where
  type PropertyType "LocalSecondaryIndexes" Table = [LocalSecondaryIndexProperty]
  set newValue Table {..}
    = Table {localSecondaryIndexes = Prelude.pure newValue, ..}
instance Property "PointInTimeRecoverySpecification" Table where
  type PropertyType "PointInTimeRecoverySpecification" Table = PointInTimeRecoverySpecificationProperty
  set newValue Table {..}
    = Table
        {pointInTimeRecoverySpecification = Prelude.pure newValue, ..}
instance Property "ProvisionedThroughput" Table where
  type PropertyType "ProvisionedThroughput" Table = ProvisionedThroughputProperty
  set newValue Table {..}
    = Table {provisionedThroughput = Prelude.pure newValue, ..}
instance Property "SSESpecification" Table where
  type PropertyType "SSESpecification" Table = SSESpecificationProperty
  set newValue Table {..}
    = Table {sSESpecification = Prelude.pure newValue, ..}
instance Property "StreamSpecification" Table where
  type PropertyType "StreamSpecification" Table = StreamSpecificationProperty
  set newValue Table {..}
    = Table {streamSpecification = Prelude.pure newValue, ..}
instance Property "TableClass" Table where
  type PropertyType "TableClass" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {tableClass = Prelude.pure newValue, ..}
instance Property "TableName" Table where
  type PropertyType "TableName" Table = Value Prelude.Text
  set newValue Table {..}
    = Table {tableName = Prelude.pure newValue, ..}
instance Property "Tags" Table where
  type PropertyType "Tags" Table = [Tag]
  set newValue Table {..} = Table {tags = Prelude.pure newValue, ..}
instance Property "TimeToLiveSpecification" Table where
  type PropertyType "TimeToLiveSpecification" Table = TimeToLiveSpecificationProperty
  set newValue Table {..}
    = Table {timeToLiveSpecification = Prelude.pure newValue, ..}