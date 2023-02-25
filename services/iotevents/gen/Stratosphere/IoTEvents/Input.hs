module Stratosphere.IoTEvents.Input (
        module Exports, Input(..), mkInput
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.Input.InputDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Input
  = Input {inputDefinition :: InputDefinitionProperty,
           inputDescription :: (Prelude.Maybe (Value Prelude.Text)),
           inputName :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag])}
mkInput :: InputDefinitionProperty -> Input
mkInput inputDefinition
  = Input
      {inputDefinition = inputDefinition,
       inputDescription = Prelude.Nothing, inputName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Input where
  toResourceProperties Input {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::Input",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputDefinition" JSON..= inputDefinition]
                           (Prelude.catMaybes
                              [(JSON..=) "InputDescription" Prelude.<$> inputDescription,
                               (JSON..=) "InputName" Prelude.<$> inputName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Input where
  toJSON Input {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputDefinition" JSON..= inputDefinition]
              (Prelude.catMaybes
                 [(JSON..=) "InputDescription" Prelude.<$> inputDescription,
                  (JSON..=) "InputName" Prelude.<$> inputName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "InputDefinition" Input where
  type PropertyType "InputDefinition" Input = InputDefinitionProperty
  set newValue Input {..} = Input {inputDefinition = newValue, ..}
instance Property "InputDescription" Input where
  type PropertyType "InputDescription" Input = Value Prelude.Text
  set newValue Input {..}
    = Input {inputDescription = Prelude.pure newValue, ..}
instance Property "InputName" Input where
  type PropertyType "InputName" Input = Value Prelude.Text
  set newValue Input {..}
    = Input {inputName = Prelude.pure newValue, ..}
instance Property "Tags" Input where
  type PropertyType "Tags" Input = [Tag]
  set newValue Input {..} = Input {tags = Prelude.pure newValue, ..}