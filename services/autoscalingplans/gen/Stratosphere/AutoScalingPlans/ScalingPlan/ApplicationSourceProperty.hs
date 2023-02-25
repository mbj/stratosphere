module Stratosphere.AutoScalingPlans.ScalingPlan.ApplicationSourceProperty (
        module Exports, ApplicationSourceProperty(..),
        mkApplicationSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.TagFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApplicationSourceProperty
  = ApplicationSourceProperty {cloudFormationStackARN :: (Prelude.Maybe (Value Prelude.Text)),
                               tagFilters :: (Prelude.Maybe [TagFilterProperty])}
mkApplicationSourceProperty :: ApplicationSourceProperty
mkApplicationSourceProperty
  = ApplicationSourceProperty
      {cloudFormationStackARN = Prelude.Nothing,
       tagFilters = Prelude.Nothing}
instance ToResourceProperties ApplicationSourceProperty where
  toResourceProperties ApplicationSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.ApplicationSource",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudFormationStackARN"
                              Prelude.<$> cloudFormationStackARN,
                            (JSON..=) "TagFilters" Prelude.<$> tagFilters])}
instance JSON.ToJSON ApplicationSourceProperty where
  toJSON ApplicationSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudFormationStackARN"
                 Prelude.<$> cloudFormationStackARN,
               (JSON..=) "TagFilters" Prelude.<$> tagFilters]))
instance Property "CloudFormationStackARN" ApplicationSourceProperty where
  type PropertyType "CloudFormationStackARN" ApplicationSourceProperty = Value Prelude.Text
  set newValue ApplicationSourceProperty {..}
    = ApplicationSourceProperty
        {cloudFormationStackARN = Prelude.pure newValue, ..}
instance Property "TagFilters" ApplicationSourceProperty where
  type PropertyType "TagFilters" ApplicationSourceProperty = [TagFilterProperty]
  set newValue ApplicationSourceProperty {..}
    = ApplicationSourceProperty
        {tagFilters = Prelude.pure newValue, ..}