module Stratosphere.Cassandra.Table.ReplicaSpecificationProperty (
        module Exports, ReplicaSpecificationProperty(..),
        mkReplicaSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.AutoScalingSettingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicaSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-replicaspecification.html>
    ReplicaSpecificationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-replicaspecification.html#cfn-cassandra-table-replicaspecification-readcapacityautoscaling>
                                  readCapacityAutoScaling :: (Prelude.Maybe AutoScalingSettingProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-replicaspecification.html#cfn-cassandra-table-replicaspecification-readcapacityunits>
                                  readCapacityUnits :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-replicaspecification.html#cfn-cassandra-table-replicaspecification-region>
                                  region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicaSpecificationProperty ::
  Value Prelude.Text -> ReplicaSpecificationProperty
mkReplicaSpecificationProperty region
  = ReplicaSpecificationProperty
      {haddock_workaround_ = (), region = region,
       readCapacityAutoScaling = Prelude.Nothing,
       readCapacityUnits = Prelude.Nothing}
instance ToResourceProperties ReplicaSpecificationProperty where
  toResourceProperties ReplicaSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.ReplicaSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Region" JSON..= region]
                           (Prelude.catMaybes
                              [(JSON..=) "ReadCapacityAutoScaling"
                                 Prelude.<$> readCapacityAutoScaling,
                               (JSON..=) "ReadCapacityUnits" Prelude.<$> readCapacityUnits]))}
instance JSON.ToJSON ReplicaSpecificationProperty where
  toJSON ReplicaSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Region" JSON..= region]
              (Prelude.catMaybes
                 [(JSON..=) "ReadCapacityAutoScaling"
                    Prelude.<$> readCapacityAutoScaling,
                  (JSON..=) "ReadCapacityUnits" Prelude.<$> readCapacityUnits])))
instance Property "ReadCapacityAutoScaling" ReplicaSpecificationProperty where
  type PropertyType "ReadCapacityAutoScaling" ReplicaSpecificationProperty = AutoScalingSettingProperty
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {readCapacityAutoScaling = Prelude.pure newValue, ..}
instance Property "ReadCapacityUnits" ReplicaSpecificationProperty where
  type PropertyType "ReadCapacityUnits" ReplicaSpecificationProperty = Value Prelude.Integer
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty
        {readCapacityUnits = Prelude.pure newValue, ..}
instance Property "Region" ReplicaSpecificationProperty where
  type PropertyType "Region" ReplicaSpecificationProperty = Value Prelude.Text
  set newValue ReplicaSpecificationProperty {..}
    = ReplicaSpecificationProperty {region = newValue, ..}