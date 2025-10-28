module Stratosphere.DynamoDB.GlobalTable.ReplicaGlobalSecondaryIndexSpecificationProperty (
        module Exports,
        ReplicaGlobalSecondaryIndexSpecificationProperty(..),
        mkReplicaGlobalSecondaryIndexSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ContributorInsightsSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReadOnDemandThroughputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.ReadProvisionedThroughputSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicaGlobalSecondaryIndexSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html>
    ReplicaGlobalSecondaryIndexSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-contributorinsightsspecification>
                                                      contributorInsightsSpecification :: (Prelude.Maybe ContributorInsightsSpecificationProperty),
                                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-indexname>
                                                      indexName :: (Value Prelude.Text),
                                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-readondemandthroughputsettings>
                                                      readOnDemandThroughputSettings :: (Prelude.Maybe ReadOnDemandThroughputSettingsProperty),
                                                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-replicaglobalsecondaryindexspecification.html#cfn-dynamodb-globaltable-replicaglobalsecondaryindexspecification-readprovisionedthroughputsettings>
                                                      readProvisionedThroughputSettings :: (Prelude.Maybe ReadProvisionedThroughputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaGlobalSecondaryIndexSpecificationProperty ::
  Value Prelude.Text
  -> ReplicaGlobalSecondaryIndexSpecificationProperty
mkReplicaGlobalSecondaryIndexSpecificationProperty indexName
  = ReplicaGlobalSecondaryIndexSpecificationProperty
      {indexName = indexName,
       contributorInsightsSpecification = Prelude.Nothing,
       readOnDemandThroughputSettings = Prelude.Nothing,
       readProvisionedThroughputSettings = Prelude.Nothing}
instance ToResourceProperties ReplicaGlobalSecondaryIndexSpecificationProperty where
  toResourceProperties
    ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.ReplicaGlobalSecondaryIndexSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName]
                           (Prelude.catMaybes
                              [(JSON..=) "ContributorInsightsSpecification"
                                 Prelude.<$> contributorInsightsSpecification,
                               (JSON..=) "ReadOnDemandThroughputSettings"
                                 Prelude.<$> readOnDemandThroughputSettings,
                               (JSON..=) "ReadProvisionedThroughputSettings"
                                 Prelude.<$> readProvisionedThroughputSettings]))}
instance JSON.ToJSON ReplicaGlobalSecondaryIndexSpecificationProperty where
  toJSON ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexName" JSON..= indexName]
              (Prelude.catMaybes
                 [(JSON..=) "ContributorInsightsSpecification"
                    Prelude.<$> contributorInsightsSpecification,
                  (JSON..=) "ReadOnDemandThroughputSettings"
                    Prelude.<$> readOnDemandThroughputSettings,
                  (JSON..=) "ReadProvisionedThroughputSettings"
                    Prelude.<$> readProvisionedThroughputSettings])))
instance Property "ContributorInsightsSpecification" ReplicaGlobalSecondaryIndexSpecificationProperty where
  type PropertyType "ContributorInsightsSpecification" ReplicaGlobalSecondaryIndexSpecificationProperty = ContributorInsightsSpecificationProperty
  set newValue ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = ReplicaGlobalSecondaryIndexSpecificationProperty
        {contributorInsightsSpecification = Prelude.pure newValue, ..}
instance Property "IndexName" ReplicaGlobalSecondaryIndexSpecificationProperty where
  type PropertyType "IndexName" ReplicaGlobalSecondaryIndexSpecificationProperty = Value Prelude.Text
  set newValue ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = ReplicaGlobalSecondaryIndexSpecificationProperty
        {indexName = newValue, ..}
instance Property "ReadOnDemandThroughputSettings" ReplicaGlobalSecondaryIndexSpecificationProperty where
  type PropertyType "ReadOnDemandThroughputSettings" ReplicaGlobalSecondaryIndexSpecificationProperty = ReadOnDemandThroughputSettingsProperty
  set newValue ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = ReplicaGlobalSecondaryIndexSpecificationProperty
        {readOnDemandThroughputSettings = Prelude.pure newValue, ..}
instance Property "ReadProvisionedThroughputSettings" ReplicaGlobalSecondaryIndexSpecificationProperty where
  type PropertyType "ReadProvisionedThroughputSettings" ReplicaGlobalSecondaryIndexSpecificationProperty = ReadProvisionedThroughputSettingsProperty
  set newValue ReplicaGlobalSecondaryIndexSpecificationProperty {..}
    = ReplicaGlobalSecondaryIndexSpecificationProperty
        {readProvisionedThroughputSettings = Prelude.pure newValue, ..}