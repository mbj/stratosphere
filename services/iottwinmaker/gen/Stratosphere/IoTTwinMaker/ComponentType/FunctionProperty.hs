module Stratosphere.IoTTwinMaker.ComponentType.FunctionProperty (
        module Exports, FunctionProperty(..), mkFunctionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTTwinMaker.ComponentType.DataConnectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionProperty
  = FunctionProperty {implementedBy :: (Prelude.Maybe DataConnectorProperty),
                      requiredProperties :: (Prelude.Maybe (ValueList Prelude.Text)),
                      scope :: (Prelude.Maybe (Value Prelude.Text))}
mkFunctionProperty :: FunctionProperty
mkFunctionProperty
  = FunctionProperty
      {implementedBy = Prelude.Nothing,
       requiredProperties = Prelude.Nothing, scope = Prelude.Nothing}
instance ToResourceProperties FunctionProperty where
  toResourceProperties FunctionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::ComponentType.Function",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImplementedBy" Prelude.<$> implementedBy,
                            (JSON..=) "RequiredProperties" Prelude.<$> requiredProperties,
                            (JSON..=) "Scope" Prelude.<$> scope])}
instance JSON.ToJSON FunctionProperty where
  toJSON FunctionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImplementedBy" Prelude.<$> implementedBy,
               (JSON..=) "RequiredProperties" Prelude.<$> requiredProperties,
               (JSON..=) "Scope" Prelude.<$> scope]))
instance Property "ImplementedBy" FunctionProperty where
  type PropertyType "ImplementedBy" FunctionProperty = DataConnectorProperty
  set newValue FunctionProperty {..}
    = FunctionProperty {implementedBy = Prelude.pure newValue, ..}
instance Property "RequiredProperties" FunctionProperty where
  type PropertyType "RequiredProperties" FunctionProperty = ValueList Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {requiredProperties = Prelude.pure newValue, ..}
instance Property "Scope" FunctionProperty where
  type PropertyType "Scope" FunctionProperty = Value Prelude.Text
  set newValue FunctionProperty {..}
    = FunctionProperty {scope = Prelude.pure newValue, ..}