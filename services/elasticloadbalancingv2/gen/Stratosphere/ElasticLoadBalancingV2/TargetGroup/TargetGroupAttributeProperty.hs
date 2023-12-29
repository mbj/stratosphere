module Stratosphere.ElasticLoadBalancingV2.TargetGroup.TargetGroupAttributeProperty (
        TargetGroupAttributeProperty(..), mkTargetGroupAttributeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupAttributeProperty
  = TargetGroupAttributeProperty {key :: (Prelude.Maybe (Value Prelude.Text)),
                                  value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupAttributeProperty :: TargetGroupAttributeProperty
mkTargetGroupAttributeProperty
  = TargetGroupAttributeProperty
      {key = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties TargetGroupAttributeProperty where
  toResourceProperties TargetGroupAttributeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::TargetGroup.TargetGroupAttribute",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Key" Prelude.<$> key,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON TargetGroupAttributeProperty where
  toJSON TargetGroupAttributeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Key" Prelude.<$> key,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Key" TargetGroupAttributeProperty where
  type PropertyType "Key" TargetGroupAttributeProperty = Value Prelude.Text
  set newValue TargetGroupAttributeProperty {..}
    = TargetGroupAttributeProperty {key = Prelude.pure newValue, ..}
instance Property "Value" TargetGroupAttributeProperty where
  type PropertyType "Value" TargetGroupAttributeProperty = Value Prelude.Text
  set newValue TargetGroupAttributeProperty {..}
    = TargetGroupAttributeProperty {value = Prelude.pure newValue, ..}