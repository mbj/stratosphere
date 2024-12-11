module Stratosphere.Bedrock.Agent.FunctionProperty (
        module Exports, FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.ParameterDetailProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = FunctionProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                      name :: (Value Prelude.Text),
                      parameters :: (Prelude.Maybe (Prelude.Map Prelude.Text ParameterDetailProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunctionProperty :: Value Prelude.Text -> FunctionProperty
mkFunctionProperty name
  = FunctionProperty
      {name = name, description = Prelude.Nothing,
       parameters = Prelude.Nothing}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.Function",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "Description" FunctionProperty where
  type PropertyType "Description" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {description = Prelude.pure newValue, ..}
instance Property "Name" FunctionProperty where
  type PropertyType "Name" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {name = newValue, ..}
instance Property "Parameters" FunctionProperty where
  type PropertyType "Parameters" FunctionProperty = Prelude.Map Prelude.Text ParameterDetailProperty
  set newValue FunctionProperty {..}
    = FunctionProperty {parameters = Prelude.pure newValue, ..}