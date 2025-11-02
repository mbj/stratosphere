module Stratosphere.DynamoDB.GlobalTable.GlobalSecondaryIndexProperty (
        module Exports, GlobalSecondaryIndexProperty(..),
        mkGlobalSecondaryIndexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ProjectionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WarmThroughputProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WriteOnDemandThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.WriteProvisionedThroughputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalSecondaryIndexProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html>
    GlobalSecondaryIndexProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-indexname>
                                  indexName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-keyschema>
                                  keySchema :: [KeySchemaProperty],
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-projection>
                                  projection :: ProjectionProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-warmthroughput>
                                  warmThroughput :: (Prelude.Maybe WarmThroughputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-writeondemandthroughputsettings>
                                  writeOnDemandThroughputSettings :: (Prelude.Maybe WriteOnDemandThroughputSettingsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-globalsecondaryindex.html#cfn-dynamodb-globaltable-globalsecondaryindex-writeprovisionedthroughputsettings>
                                  writeProvisionedThroughputSettings :: (Prelude.Maybe WriteProvisionedThroughputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalSecondaryIndexProperty ::
  Value Prelude.Text
  -> [KeySchemaProperty]
     -> ProjectionProperty -> GlobalSecondaryIndexProperty
mkGlobalSecondaryIndexProperty indexName keySchema projection
  = GlobalSecondaryIndexProperty
      {haddock_workaround_ = (), indexName = indexName,
       keySchema = keySchema, projection = projection,
       warmThroughput = Prelude.Nothing,
       writeOnDemandThroughputSettings = Prelude.Nothing,
       writeProvisionedThroughputSettings = Prelude.Nothing}
instance ToResourceProperties GlobalSecondaryIndexProperty where
  toResourceProperties GlobalSecondaryIndexProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.GlobalSecondaryIndex",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName, "KeySchema" JSON..= keySchema,
                            "Projection" JSON..= projection]
                           (Prelude.catMaybes
                              [(JSON..=) "WarmThroughput" Prelude.<$> warmThroughput,
                               (JSON..=) "WriteOnDemandThroughputSettings"
                                 Prelude.<$> writeOnDemandThroughputSettings,
                               (JSON..=) "WriteProvisionedThroughputSettings"
                                 Prelude.<$> writeProvisionedThroughputSettings]))}
instance JSON.ToJSON GlobalSecondaryIndexProperty where
  toJSON GlobalSecondaryIndexProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexName" JSON..= indexName, "KeySchema" JSON..= keySchema,
               "Projection" JSON..= projection]
              (Prelude.catMaybes
                 [(JSON..=) "WarmThroughput" Prelude.<$> warmThroughput,
                  (JSON..=) "WriteOnDemandThroughputSettings"
                    Prelude.<$> writeOnDemandThroughputSettings,
                  (JSON..=) "WriteProvisionedThroughputSettings"
                    Prelude.<$> writeProvisionedThroughputSettings])))
instance Property "IndexName" GlobalSecondaryIndexProperty where
  type PropertyType "IndexName" GlobalSecondaryIndexProperty = Value Prelude.Text
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {indexName = newValue, ..}
instance Property "KeySchema" GlobalSecondaryIndexProperty where
  type PropertyType "KeySchema" GlobalSecondaryIndexProperty = [KeySchemaProperty]
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {keySchema = newValue, ..}
instance Property "Projection" GlobalSecondaryIndexProperty where
  type PropertyType "Projection" GlobalSecondaryIndexProperty = ProjectionProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {projection = newValue, ..}
instance Property "WarmThroughput" GlobalSecondaryIndexProperty where
  type PropertyType "WarmThroughput" GlobalSecondaryIndexProperty = WarmThroughputProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {warmThroughput = Prelude.pure newValue, ..}
instance Property "WriteOnDemandThroughputSettings" GlobalSecondaryIndexProperty where
  type PropertyType "WriteOnDemandThroughputSettings" GlobalSecondaryIndexProperty = WriteOnDemandThroughputSettingsProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {writeOnDemandThroughputSettings = Prelude.pure newValue, ..}
instance Property "WriteProvisionedThroughputSettings" GlobalSecondaryIndexProperty where
  type PropertyType "WriteProvisionedThroughputSettings" GlobalSecondaryIndexProperty = WriteProvisionedThroughputSettingsProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {writeProvisionedThroughputSettings = Prelude.pure newValue, ..}