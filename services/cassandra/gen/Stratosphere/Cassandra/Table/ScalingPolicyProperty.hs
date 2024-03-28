module Stratosphere.Cassandra.Table.ScalingPolicyProperty (
        module Exports, ScalingPolicyProperty(..), mkScalingPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cassandra.Table.TargetTrackingScalingPolicyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ScalingPolicyProperty
  = ScalingPolicyProperty {targetTrackingScalingPolicyConfiguration :: (Prelude.Maybe TargetTrackingScalingPolicyConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingPolicyProperty :: ScalingPolicyProperty
mkScalingPolicyProperty
  = ScalingPolicyProperty
      {targetTrackingScalingPolicyConfiguration = Prelude.Nothing}
instance ToResourceProperties ScalingPolicyProperty where
  toResourceProperties ScalingPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.ScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TargetTrackingScalingPolicyConfiguration"
                              Prelude.<$> targetTrackingScalingPolicyConfiguration])}
instance JSON.ToJSON ScalingPolicyProperty where
  toJSON ScalingPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TargetTrackingScalingPolicyConfiguration"
                 Prelude.<$> targetTrackingScalingPolicyConfiguration]))
instance Property "TargetTrackingScalingPolicyConfiguration" ScalingPolicyProperty where
  type PropertyType "TargetTrackingScalingPolicyConfiguration" ScalingPolicyProperty = TargetTrackingScalingPolicyConfigurationProperty
  set newValue ScalingPolicyProperty {}
    = ScalingPolicyProperty
        {targetTrackingScalingPolicyConfiguration = Prelude.pure newValue,
         ..}