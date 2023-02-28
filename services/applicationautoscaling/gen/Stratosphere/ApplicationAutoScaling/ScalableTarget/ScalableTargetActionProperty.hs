module Stratosphere.ApplicationAutoScaling.ScalableTarget.ScalableTargetActionProperty (
        ScalableTargetActionProperty(..), mkScalableTargetActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalableTargetActionProperty
  = ScalableTargetActionProperty {maxCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                  minCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
mkScalableTargetActionProperty :: ScalableTargetActionProperty
mkScalableTargetActionProperty
  = ScalableTargetActionProperty
      {maxCapacity = Prelude.Nothing, minCapacity = Prelude.Nothing}
instance ToResourceProperties ScalableTargetActionProperty where
  toResourceProperties ScalableTargetActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget.ScalableTargetAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
                            (JSON..=) "MinCapacity" Prelude.<$> minCapacity])}
instance JSON.ToJSON ScalableTargetActionProperty where
  toJSON ScalableTargetActionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxCapacity" Prelude.<$> maxCapacity,
               (JSON..=) "MinCapacity" Prelude.<$> minCapacity]))
instance Property "MaxCapacity" ScalableTargetActionProperty where
  type PropertyType "MaxCapacity" ScalableTargetActionProperty = Value Prelude.Integer
  set newValue ScalableTargetActionProperty {..}
    = ScalableTargetActionProperty
        {maxCapacity = Prelude.pure newValue, ..}
instance Property "MinCapacity" ScalableTargetActionProperty where
  type PropertyType "MinCapacity" ScalableTargetActionProperty = Value Prelude.Integer
  set newValue ScalableTargetActionProperty {..}
    = ScalableTargetActionProperty
        {minCapacity = Prelude.pure newValue, ..}