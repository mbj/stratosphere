module Stratosphere.SageMaker.ModelCard.ObjectiveFunctionProperty (
        module Exports, ObjectiveFunctionProperty(..),
        mkObjectiveFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelCard.FunctionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObjectiveFunctionProperty
  = ObjectiveFunctionProperty {function :: (Prelude.Maybe FunctionProperty),
                               notes :: (Prelude.Maybe (Value Prelude.Text))}
mkObjectiveFunctionProperty :: ObjectiveFunctionProperty
mkObjectiveFunctionProperty
  = ObjectiveFunctionProperty
      {function = Prelude.Nothing, notes = Prelude.Nothing}
instance ToResourceProperties ObjectiveFunctionProperty where
  toResourceProperties ObjectiveFunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.ObjectiveFunction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Function" Prelude.<$> function,
                            (JSON..=) "Notes" Prelude.<$> notes])}
instance JSON.ToJSON ObjectiveFunctionProperty where
  toJSON ObjectiveFunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Function" Prelude.<$> function,
               (JSON..=) "Notes" Prelude.<$> notes]))
instance Property "Function" ObjectiveFunctionProperty where
  type PropertyType "Function" ObjectiveFunctionProperty = FunctionProperty
  set newValue ObjectiveFunctionProperty {..}
    = ObjectiveFunctionProperty {function = Prelude.pure newValue, ..}
instance Property "Notes" ObjectiveFunctionProperty where
  type PropertyType "Notes" ObjectiveFunctionProperty = Value Prelude.Text
  set newValue ObjectiveFunctionProperty {..}
    = ObjectiveFunctionProperty {notes = Prelude.pure newValue, ..}