module Stratosphere.S3.Bucket.ReplicationRuleProperty (
        module Exports, ReplicationRuleProperty(..),
        mkReplicationRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.DeleteMarkerReplicationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationDestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationRuleFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.SourceSelectionCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationRuleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html>
    ReplicationRuleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-deletemarkerreplication>
                             deleteMarkerReplication :: (Prelude.Maybe DeleteMarkerReplicationProperty),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-destination>
                             destination :: ReplicationDestinationProperty,
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-filter>
                             filter :: (Prelude.Maybe ReplicationRuleFilterProperty),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-id>
                             id :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-prefix>
                             prefix :: (Prelude.Maybe (Value Prelude.Text)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-priority>
                             priority :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-sourceselectioncriteria>
                             sourceSelectionCriteria :: (Prelude.Maybe SourceSelectionCriteriaProperty),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationrule.html#cfn-s3-bucket-replicationrule-status>
                             status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationRuleProperty ::
  ReplicationDestinationProperty
  -> Value Prelude.Text -> ReplicationRuleProperty
mkReplicationRuleProperty destination status
  = ReplicationRuleProperty
      {destination = destination, status = status,
       deleteMarkerReplication = Prelude.Nothing,
       filter = Prelude.Nothing, id = Prelude.Nothing,
       prefix = Prelude.Nothing, priority = Prelude.Nothing,
       sourceSelectionCriteria = Prelude.Nothing}
instance ToResourceProperties ReplicationRuleProperty where
  toResourceProperties ReplicationRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Destination" JSON..= destination, "Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "DeleteMarkerReplication"
                                 Prelude.<$> deleteMarkerReplication,
                               (JSON..=) "Filter" Prelude.<$> filter,
                               (JSON..=) "Id" Prelude.<$> id,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "Priority" Prelude.<$> priority,
                               (JSON..=) "SourceSelectionCriteria"
                                 Prelude.<$> sourceSelectionCriteria]))}
instance JSON.ToJSON ReplicationRuleProperty where
  toJSON ReplicationRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Destination" JSON..= destination, "Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "DeleteMarkerReplication"
                    Prelude.<$> deleteMarkerReplication,
                  (JSON..=) "Filter" Prelude.<$> filter,
                  (JSON..=) "Id" Prelude.<$> id,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "Priority" Prelude.<$> priority,
                  (JSON..=) "SourceSelectionCriteria"
                    Prelude.<$> sourceSelectionCriteria])))
instance Property "DeleteMarkerReplication" ReplicationRuleProperty where
  type PropertyType "DeleteMarkerReplication" ReplicationRuleProperty = DeleteMarkerReplicationProperty
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty
        {deleteMarkerReplication = Prelude.pure newValue, ..}
instance Property "Destination" ReplicationRuleProperty where
  type PropertyType "Destination" ReplicationRuleProperty = ReplicationDestinationProperty
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {destination = newValue, ..}
instance Property "Filter" ReplicationRuleProperty where
  type PropertyType "Filter" ReplicationRuleProperty = ReplicationRuleFilterProperty
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {filter = Prelude.pure newValue, ..}
instance Property "Id" ReplicationRuleProperty where
  type PropertyType "Id" ReplicationRuleProperty = Value Prelude.Text
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {id = Prelude.pure newValue, ..}
instance Property "Prefix" ReplicationRuleProperty where
  type PropertyType "Prefix" ReplicationRuleProperty = Value Prelude.Text
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {prefix = Prelude.pure newValue, ..}
instance Property "Priority" ReplicationRuleProperty where
  type PropertyType "Priority" ReplicationRuleProperty = Value Prelude.Integer
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {priority = Prelude.pure newValue, ..}
instance Property "SourceSelectionCriteria" ReplicationRuleProperty where
  type PropertyType "SourceSelectionCriteria" ReplicationRuleProperty = SourceSelectionCriteriaProperty
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty
        {sourceSelectionCriteria = Prelude.pure newValue, ..}
instance Property "Status" ReplicationRuleProperty where
  type PropertyType "Status" ReplicationRuleProperty = Value Prelude.Text
  set newValue ReplicationRuleProperty {..}
    = ReplicationRuleProperty {status = newValue, ..}