module Stratosphere.EMR.Cluster.PlacementGroupConfigProperty (
        PlacementGroupConfigProperty(..), mkPlacementGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PlacementGroupConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementgroupconfig.html>
    PlacementGroupConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementgroupconfig.html#cfn-elasticmapreduce-cluster-placementgroupconfig-instancerole>
                                  instanceRole :: (Value Prelude.Text),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementgroupconfig.html#cfn-elasticmapreduce-cluster-placementgroupconfig-placementstrategy>
                                  placementStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPlacementGroupConfigProperty ::
  Value Prelude.Text -> PlacementGroupConfigProperty
mkPlacementGroupConfigProperty instanceRole
  = PlacementGroupConfigProperty
      {instanceRole = instanceRole, placementStrategy = Prelude.Nothing}
instance ToResourceProperties PlacementGroupConfigProperty where
  toResourceProperties PlacementGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.PlacementGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceRole" JSON..= instanceRole]
                           (Prelude.catMaybes
                              [(JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy]))}
instance JSON.ToJSON PlacementGroupConfigProperty where
  toJSON PlacementGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceRole" JSON..= instanceRole]
              (Prelude.catMaybes
                 [(JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy])))
instance Property "InstanceRole" PlacementGroupConfigProperty where
  type PropertyType "InstanceRole" PlacementGroupConfigProperty = Value Prelude.Text
  set newValue PlacementGroupConfigProperty {..}
    = PlacementGroupConfigProperty {instanceRole = newValue, ..}
instance Property "PlacementStrategy" PlacementGroupConfigProperty where
  type PropertyType "PlacementStrategy" PlacementGroupConfigProperty = Value Prelude.Text
  set newValue PlacementGroupConfigProperty {..}
    = PlacementGroupConfigProperty
        {placementStrategy = Prelude.pure newValue, ..}