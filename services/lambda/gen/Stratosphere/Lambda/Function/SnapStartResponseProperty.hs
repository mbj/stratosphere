module Stratosphere.Lambda.Function.SnapStartResponseProperty (
        SnapStartResponseProperty(..), mkSnapStartResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnapStartResponseProperty
  = SnapStartResponseProperty {applyOn :: (Prelude.Maybe (Value Prelude.Text)),
                               optimizationStatus :: (Prelude.Maybe (Value Prelude.Text))}
mkSnapStartResponseProperty :: SnapStartResponseProperty
mkSnapStartResponseProperty
  = SnapStartResponseProperty
      {applyOn = Prelude.Nothing, optimizationStatus = Prelude.Nothing}
instance ToResourceProperties SnapStartResponseProperty where
  toResourceProperties SnapStartResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::Function.SnapStartResponse",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplyOn" Prelude.<$> applyOn,
                            (JSON..=) "OptimizationStatus" Prelude.<$> optimizationStatus])}
instance JSON.ToJSON SnapStartResponseProperty where
  toJSON SnapStartResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplyOn" Prelude.<$> applyOn,
               (JSON..=) "OptimizationStatus" Prelude.<$> optimizationStatus]))
instance Property "ApplyOn" SnapStartResponseProperty where
  type PropertyType "ApplyOn" SnapStartResponseProperty = Value Prelude.Text
  set newValue SnapStartResponseProperty {..}
    = SnapStartResponseProperty {applyOn = Prelude.pure newValue, ..}
instance Property "OptimizationStatus" SnapStartResponseProperty where
  type PropertyType "OptimizationStatus" SnapStartResponseProperty = Value Prelude.Text
  set newValue SnapStartResponseProperty {..}
    = SnapStartResponseProperty
        {optimizationStatus = Prelude.pure newValue, ..}