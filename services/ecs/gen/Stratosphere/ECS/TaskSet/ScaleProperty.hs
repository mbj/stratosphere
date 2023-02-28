module Stratosphere.ECS.TaskSet.ScaleProperty (
        ScaleProperty(..), mkScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScaleProperty
  = ScaleProperty {unit :: (Prelude.Maybe (Value Prelude.Text)),
                   value :: (Prelude.Maybe (Value Prelude.Double))}
mkScaleProperty :: ScaleProperty
mkScaleProperty
  = ScaleProperty {unit = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties ScaleProperty where
  toResourceProperties ScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet.Scale", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Unit" Prelude.<$> unit,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON ScaleProperty where
  toJSON ScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Unit" Prelude.<$> unit,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Unit" ScaleProperty where
  type PropertyType "Unit" ScaleProperty = Value Prelude.Text
  set newValue ScaleProperty {..}
    = ScaleProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" ScaleProperty where
  type PropertyType "Value" ScaleProperty = Value Prelude.Double
  set newValue ScaleProperty {..}
    = ScaleProperty {value = Prelude.pure newValue, ..}