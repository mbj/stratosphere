module Stratosphere.DynamoDB.Table.GlobalSecondaryIndexProperty (
        module Exports, GlobalSecondaryIndexProperty(..),
        mkGlobalSecondaryIndexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ContributorInsightsSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.OnDemandThroughputProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ProjectionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ProvisionedThroughputProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.WarmThroughputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalSecondaryIndexProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html>
    GlobalSecondaryIndexProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-contributorinsightsspecification>
                                  contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-indexname>
                                  indexName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-keyschema>
                                  keySchema :: [KeySchemaProperty],
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-ondemandthroughput>
                                  onDemandThroughput :: (Prelude.Maybe OnDemandThroughputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-projection>
                                  projection :: ProjectionProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-provisionedthroughput>
                                  provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-globalsecondaryindex.html#cfn-dynamodb-table-globalsecondaryindex-warmthroughput>
                                  warmThroughput :: (Prelude.Maybe WarmThroughputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGlobalSecondaryIndexProperty ::
  Value Prelude.Text
  -> [KeySchemaProperty]
     -> ProjectionProperty -> GlobalSecondaryIndexProperty
mkGlobalSecondaryIndexProperty indexName keySchema projection
  = GlobalSecondaryIndexProperty
      {haddock_workaround_ = (), indexName = indexName,
       keySchema = keySchema, projection = projection,
       contributorInsightsSpecification = Prelude.Nothing,
       onDemandThroughput = Prelude.Nothing,
       provisionedThroughput = Prelude.Nothing,
       warmThroughput = Prelude.Nothing}
instance ToResourceProperties GlobalSecondaryIndexProperty where
  toResourceProperties GlobalSecondaryIndexProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.GlobalSecondaryIndex",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName, "KeySchema" JSON..= keySchema,
                            "Projection" JSON..= projection]
                           (Prelude.catMaybes
                              [(JSON..=) "ContributorInsightsSpecification"
                                 Prelude.<$> contributorInsightsSpecification,
                               (JSON..=) "OnDemandThroughput" Prelude.<$> onDemandThroughput,
                               (JSON..=) "ProvisionedThroughput"
                                 Prelude.<$> provisionedThroughput,
                               (JSON..=) "WarmThroughput" Prelude.<$> warmThroughput]))}
instance JSON.ToJSON GlobalSecondaryIndexProperty where
  toJSON GlobalSecondaryIndexProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexName" JSON..= indexName, "KeySchema" JSON..= keySchema,
               "Projection" JSON..= projection]
              (Prelude.catMaybes
                 [(JSON..=) "ContributorInsightsSpecification"
                    Prelude.<$> contributorInsightsSpecification,
                  (JSON..=) "OnDemandThroughput" Prelude.<$> onDemandThroughput,
                  (JSON..=) "ProvisionedThroughput"
                    Prelude.<$> provisionedThroughput,
                  (JSON..=) "WarmThroughput" Prelude.<$> warmThroughput])))
instance Property "ContributorInsightsSpecification" GlobalSecondaryIndexProperty where
  type PropertyType "ContributorInsightsSpecification" GlobalSecondaryIndexProperty = ContributorInsightsSpecificationProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {contributorInsightsSpecification = Prelude.pure newValue, ..}
instance Property "IndexName" GlobalSecondaryIndexProperty where
  type PropertyType "IndexName" GlobalSecondaryIndexProperty = Value Prelude.Text
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {indexName = newValue, ..}
instance Property "KeySchema" GlobalSecondaryIndexProperty where
  type PropertyType "KeySchema" GlobalSecondaryIndexProperty = [KeySchemaProperty]
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {keySchema = newValue, ..}
instance Property "OnDemandThroughput" GlobalSecondaryIndexProperty where
  type PropertyType "OnDemandThroughput" GlobalSecondaryIndexProperty = OnDemandThroughputProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {onDemandThroughput = Prelude.pure newValue, ..}
instance Property "Projection" GlobalSecondaryIndexProperty where
  type PropertyType "Projection" GlobalSecondaryIndexProperty = ProjectionProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {projection = newValue, ..}
instance Property "ProvisionedThroughput" GlobalSecondaryIndexProperty where
  type PropertyType "ProvisionedThroughput" GlobalSecondaryIndexProperty = ProvisionedThroughputProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {provisionedThroughput = Prelude.pure newValue, ..}
instance Property "WarmThroughput" GlobalSecondaryIndexProperty where
  type PropertyType "WarmThroughput" GlobalSecondaryIndexProperty = WarmThroughputProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {warmThroughput = Prelude.pure newValue, ..}