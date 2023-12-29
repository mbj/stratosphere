module Stratosphere.AutoScalingPlans.ScalingPlan (
        module Exports, ScalingPlan(..), mkScalingPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.ApplicationSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.ScalingInstructionProperty as Exports
import Stratosphere.ResourceProperties
data ScalingPlan
  = ScalingPlan {applicationSource :: ApplicationSourceProperty,
                 scalingInstructions :: [ScalingInstructionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingPlan ::
  ApplicationSourceProperty
  -> [ScalingInstructionProperty] -> ScalingPlan
mkScalingPlan applicationSource scalingInstructions
  = ScalingPlan
      {applicationSource = applicationSource,
       scalingInstructions = scalingInstructions}
instance ToResourceProperties ScalingPlan where
  toResourceProperties ScalingPlan {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan",
         supportsTags = Prelude.False,
         properties = ["ApplicationSource" JSON..= applicationSource,
                       "ScalingInstructions" JSON..= scalingInstructions]}
instance JSON.ToJSON ScalingPlan where
  toJSON ScalingPlan {..}
    = JSON.object
        ["ApplicationSource" JSON..= applicationSource,
         "ScalingInstructions" JSON..= scalingInstructions]
instance Property "ApplicationSource" ScalingPlan where
  type PropertyType "ApplicationSource" ScalingPlan = ApplicationSourceProperty
  set newValue ScalingPlan {..}
    = ScalingPlan {applicationSource = newValue, ..}
instance Property "ScalingInstructions" ScalingPlan where
  type PropertyType "ScalingInstructions" ScalingPlan = [ScalingInstructionProperty]
  set newValue ScalingPlan {..}
    = ScalingPlan {scalingInstructions = newValue, ..}