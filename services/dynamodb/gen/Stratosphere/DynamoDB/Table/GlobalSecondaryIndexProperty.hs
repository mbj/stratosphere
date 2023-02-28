module Stratosphere.DynamoDB.Table.GlobalSecondaryIndexProperty (
        module Exports, GlobalSecondaryIndexProperty(..),
        mkGlobalSecondaryIndexProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ContributorInsightsSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.KeySchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ProjectionProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.Table.ProvisionedThroughputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GlobalSecondaryIndexProperty
  = GlobalSecondaryIndexProperty {contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
                                  indexName :: (Value Prelude.Text),
                                  keySchema :: [KeySchemaProperty],
                                  projection :: ProjectionProperty,
                                  provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty)}
mkGlobalSecondaryIndexProperty ::
  Value Prelude.Text
  -> [KeySchemaProperty]
     -> ProjectionProperty -> GlobalSecondaryIndexProperty
mkGlobalSecondaryIndexProperty indexName keySchema projection
  = GlobalSecondaryIndexProperty
      {indexName = indexName, keySchema = keySchema,
       projection = projection,
       contributorInsightsSpecification = Prelude.Nothing,
       provisionedThroughput = Prelude.Nothing}
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
                               (JSON..=) "ProvisionedThroughput"
                                 Prelude.<$> provisionedThroughput]))}
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
                  (JSON..=) "ProvisionedThroughput"
                    Prelude.<$> provisionedThroughput])))
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
instance Property "Projection" GlobalSecondaryIndexProperty where
  type PropertyType "Projection" GlobalSecondaryIndexProperty = ProjectionProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty {projection = newValue, ..}
instance Property "ProvisionedThroughput" GlobalSecondaryIndexProperty where
  type PropertyType "ProvisionedThroughput" GlobalSecondaryIndexProperty = ProvisionedThroughputProperty
  set newValue GlobalSecondaryIndexProperty {..}
    = GlobalSecondaryIndexProperty
        {provisionedThroughput = Prelude.pure newValue, ..}