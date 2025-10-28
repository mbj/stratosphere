module Stratosphere.EMR.Cluster.InstanceFleetConfigProperty (
        module Exports, InstanceFleetConfigProperty(..),
        mkInstanceFleetConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.InstanceFleetProvisioningSpecificationsProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.InstanceFleetResizingSpecificationsProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.InstanceTypeConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceFleetConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html>
    InstanceFleetConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-instancetypeconfigs>
                                 instanceTypeConfigs :: (Prelude.Maybe [InstanceTypeConfigProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-launchspecifications>
                                 launchSpecifications :: (Prelude.Maybe InstanceFleetProvisioningSpecificationsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-name>
                                 name :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-resizespecifications>
                                 resizeSpecifications :: (Prelude.Maybe InstanceFleetResizingSpecificationsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetondemandcapacity>
                                 targetOnDemandCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetconfig.html#cfn-elasticmapreduce-cluster-instancefleetconfig-targetspotcapacity>
                                 targetSpotCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceFleetConfigProperty :: InstanceFleetConfigProperty
mkInstanceFleetConfigProperty
  = InstanceFleetConfigProperty
      {haddock_workaround_ = (), instanceTypeConfigs = Prelude.Nothing,
       launchSpecifications = Prelude.Nothing, name = Prelude.Nothing,
       resizeSpecifications = Prelude.Nothing,
       targetOnDemandCapacity = Prelude.Nothing,
       targetSpotCapacity = Prelude.Nothing}
instance ToResourceProperties InstanceFleetConfigProperty where
  toResourceProperties InstanceFleetConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.InstanceFleetConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceTypeConfigs" Prelude.<$> instanceTypeConfigs,
                            (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ResizeSpecifications" Prelude.<$> resizeSpecifications,
                            (JSON..=) "TargetOnDemandCapacity"
                              Prelude.<$> targetOnDemandCapacity,
                            (JSON..=) "TargetSpotCapacity" Prelude.<$> targetSpotCapacity])}
instance JSON.ToJSON InstanceFleetConfigProperty where
  toJSON InstanceFleetConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceTypeConfigs" Prelude.<$> instanceTypeConfigs,
               (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ResizeSpecifications" Prelude.<$> resizeSpecifications,
               (JSON..=) "TargetOnDemandCapacity"
                 Prelude.<$> targetOnDemandCapacity,
               (JSON..=) "TargetSpotCapacity" Prelude.<$> targetSpotCapacity]))
instance Property "InstanceTypeConfigs" InstanceFleetConfigProperty where
  type PropertyType "InstanceTypeConfigs" InstanceFleetConfigProperty = [InstanceTypeConfigProperty]
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty
        {instanceTypeConfigs = Prelude.pure newValue, ..}
instance Property "LaunchSpecifications" InstanceFleetConfigProperty where
  type PropertyType "LaunchSpecifications" InstanceFleetConfigProperty = InstanceFleetProvisioningSpecificationsProperty
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty
        {launchSpecifications = Prelude.pure newValue, ..}
instance Property "Name" InstanceFleetConfigProperty where
  type PropertyType "Name" InstanceFleetConfigProperty = Value Prelude.Text
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty {name = Prelude.pure newValue, ..}
instance Property "ResizeSpecifications" InstanceFleetConfigProperty where
  type PropertyType "ResizeSpecifications" InstanceFleetConfigProperty = InstanceFleetResizingSpecificationsProperty
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty
        {resizeSpecifications = Prelude.pure newValue, ..}
instance Property "TargetOnDemandCapacity" InstanceFleetConfigProperty where
  type PropertyType "TargetOnDemandCapacity" InstanceFleetConfigProperty = Value Prelude.Integer
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty
        {targetOnDemandCapacity = Prelude.pure newValue, ..}
instance Property "TargetSpotCapacity" InstanceFleetConfigProperty where
  type PropertyType "TargetSpotCapacity" InstanceFleetConfigProperty = Value Prelude.Integer
  set newValue InstanceFleetConfigProperty {..}
    = InstanceFleetConfigProperty
        {targetSpotCapacity = Prelude.pure newValue, ..}