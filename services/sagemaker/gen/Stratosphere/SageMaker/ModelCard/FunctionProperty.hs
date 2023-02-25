module Stratosphere.SageMaker.ModelCard.FunctionProperty (
        FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = FunctionProperty {condition :: (Prelude.Maybe (Value Prelude.Text)),
                      facet :: (Prelude.Maybe (Value Prelude.Text)),
                      function :: (Prelude.Maybe (Value Prelude.Text))}
mkFunctionProperty :: FunctionProperty
mkFunctionProperty
  = FunctionProperty
      {condition = Prelude.Nothing, facet = Prelude.Nothing,
       function = Prelude.Nothing}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.Function",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "Facet" Prelude.<$> facet,
                            (JSON..=) "Function" Prelude.<$> function])}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "Facet" Prelude.<$> facet,
               (JSON..=) "Function" Prelude.<$> function]))
instance Property "Condition" FunctionProperty where
  type PropertyType "Condition" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {condition = Prelude.pure newValue, ..}
instance Property "Facet" FunctionProperty where
  type PropertyType "Facet" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {facet = Prelude.pure newValue, ..}
instance Property "Function" FunctionProperty where
  type PropertyType "Function" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {function = Prelude.pure newValue, ..}