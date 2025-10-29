module Stratosphere.EMR.Cluster.ManagedScalingPolicyProperty (
        module Exports, ManagedScalingPolicyProperty(..),
        mkManagedScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.ComputeLimitsProperty as Exports
import Stratosphere.ResourceProperties
data ManagedScalingPolicyProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html>
    ManagedScalingPolicyProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-managedscalingpolicy.html#cfn-elasticmapreduce-cluster-managedscalingpolicy-computelimits>
                                  computeLimits :: (Prelude.Maybe ComputeLimitsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedScalingPolicyProperty :: ManagedScalingPolicyProperty
mkManagedScalingPolicyProperty
  = ManagedScalingPolicyProperty {computeLimits = Prelude.Nothing}
instance ToResourceProperties ManagedScalingPolicyProperty where
  toResourceProperties ManagedScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.ManagedScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComputeLimits" Prelude.<$> computeLimits])}
instance JSON.ToJSON ManagedScalingPolicyProperty where
  toJSON ManagedScalingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComputeLimits" Prelude.<$> computeLimits]))
instance Property "ComputeLimits" ManagedScalingPolicyProperty where
  type PropertyType "ComputeLimits" ManagedScalingPolicyProperty = ComputeLimitsProperty
  set newValue ManagedScalingPolicyProperty {}
    = ManagedScalingPolicyProperty
        {computeLimits = Prelude.pure newValue, ..}