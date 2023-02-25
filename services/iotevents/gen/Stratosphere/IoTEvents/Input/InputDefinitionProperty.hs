module Stratosphere.IoTEvents.Input.InputDefinitionProperty (
        module Exports, InputDefinitionProperty(..),
        mkInputDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.Input.AttributeProperty as Exports
import Stratosphere.ResourceProperties
data InputDefinitionProperty
  = InputDefinitionProperty {attributes :: [AttributeProperty]}
mkInputDefinitionProperty ::
  [AttributeProperty] -> InputDefinitionProperty
mkInputDefinitionProperty attributes
  = InputDefinitionProperty {attributes = attributes}
instance ToResourceProperties InputDefinitionProperty where
  toResourceProperties InputDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::Input.InputDefinition",
         properties = ["Attributes" JSON..= attributes]}
instance JSON.ToJSON InputDefinitionProperty where
  toJSON InputDefinitionProperty {..}
    = JSON.object ["Attributes" JSON..= attributes]
instance Property "Attributes" InputDefinitionProperty where
  type PropertyType "Attributes" InputDefinitionProperty = [AttributeProperty]
  set newValue InputDefinitionProperty {}
    = InputDefinitionProperty {attributes = newValue, ..}