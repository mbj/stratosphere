module Stratosphere.EMR.Cluster.ManagedScalingPolicyProperty (
        module Exports, ManagedScalingPolicyProperty(..),
        mkManagedScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ComputeLimitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedScalingPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html>
    ManagedScalingPolicyProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html#cfn-elasticmapreduce-cluster-managedscalingpolicy-computelimits>
                                  computeLimits :: (Prelude.Maybe ComputeLimitsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html#cfn-elasticmapreduce-cluster-managedscalingpolicy-scalingstrategy>
                                  scalingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html#cfn-elasticmapreduce-cluster-managedscalingpolicy-utilizationperformanceindex>
                                  utilizationPerformanceIndex :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedScalingPolicyProperty :: ManagedScalingPolicyProperty
mkManagedScalingPolicyProperty
  = ManagedScalingPolicyProperty
      {haddock_workaround_ = (), computeLimits = Prelude.Nothing,
       scalingStrategy = Prelude.Nothing,
       utilizationPerformanceIndex = Prelude.Nothing}
instance ToResourceProperties ManagedScalingPolicyProperty where
  toResourceProperties ManagedScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ManagedScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeLimits" Prelude.<$> computeLimits,
                            (JSON..=) "ScalingStrategy" Prelude.<$> scalingStrategy,
                            (JSON..=) "UtilizationPerformanceIndex"
                              Prelude.<$> utilizationPerformanceIndex])}
instance JSON.ToJSON ManagedScalingPolicyProperty where
  toJSON ManagedScalingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeLimits" Prelude.<$> computeLimits,
               (JSON..=) "ScalingStrategy" Prelude.<$> scalingStrategy,
               (JSON..=) "UtilizationPerformanceIndex"
                 Prelude.<$> utilizationPerformanceIndex]))
instance Property "ComputeLimits" ManagedScalingPolicyProperty where
  type PropertyType "ComputeLimits" ManagedScalingPolicyProperty = ComputeLimitsProperty
  set newValue ManagedScalingPolicyProperty {..}
    = ManagedScalingPolicyProperty
        {computeLimits = Prelude.pure newValue, ..}
instance Property "ScalingStrategy" ManagedScalingPolicyProperty where
  type PropertyType "ScalingStrategy" ManagedScalingPolicyProperty = Value Prelude.Text
  set newValue ManagedScalingPolicyProperty {..}
    = ManagedScalingPolicyProperty
        {scalingStrategy = Prelude.pure newValue, ..}
instance Property "UtilizationPerformanceIndex" ManagedScalingPolicyProperty where
  type PropertyType "UtilizationPerformanceIndex" ManagedScalingPolicyProperty = Value Prelude.Integer
  set newValue ManagedScalingPolicyProperty {..}
    = ManagedScalingPolicyProperty
        {utilizationPerformanceIndex = Prelude.pure newValue, ..}