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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html>
    Input {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdefinition>
           inputDefinition :: InputDefinitionProperty,
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputdescription>
           inputDescription :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-inputname>
           inputName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotevents-input.html#cfn-iotevents-input-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInput :: InputDefinitionProperty -> Input
mkInput inputDefinition
  = Input
      {haddock_workaround_ = (), inputDefinition = inputDefinition,
       inputDescription = Prelude.Nothing, inputName = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Input where
  toResourceProperties Input {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::Input", supportsTags = Prelude.True,
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