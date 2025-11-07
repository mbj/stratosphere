module Stratosphere.IoT.Command.CommandParameterProperty (
        module Exports, CommandParameterProperty(..),
        mkCommandParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.Command.CommandParameterValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommandParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparameter.html>
    CommandParameterProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparameter.html#cfn-iot-command-commandparameter-defaultvalue>
                              defaultValue :: (Prelude.Maybe CommandParameterValueProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparameter.html#cfn-iot-command-commandparameter-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparameter.html#cfn-iot-command-commandparameter-name>
                              name :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparameter.html#cfn-iot-command-commandparameter-value>
                              value :: (Prelude.Maybe CommandParameterValueProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommandParameterProperty ::
  Value Prelude.Text -> CommandParameterProperty
mkCommandParameterProperty name
  = CommandParameterProperty
      {haddock_workaround_ = (), name = name,
       defaultValue = Prelude.Nothing, description = Prelude.Nothing,
       value = Prelude.Nothing}
instance ToResourceProperties CommandParameterProperty where
  toResourceProperties CommandParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Command.CommandParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Value" Prelude.<$> value]))}
instance JSON.ToJSON CommandParameterProperty where
  toJSON CommandParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Value" Prelude.<$> value])))
instance Property "DefaultValue" CommandParameterProperty where
  type PropertyType "DefaultValue" CommandParameterProperty = CommandParameterValueProperty
  set newValue CommandParameterProperty {..}
    = CommandParameterProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Description" CommandParameterProperty where
  type PropertyType "Description" CommandParameterProperty = Value Prelude.Text
  set newValue CommandParameterProperty {..}
    = CommandParameterProperty
        {description = Prelude.pure newValue, ..}
instance Property "Name" CommandParameterProperty where
  type PropertyType "Name" CommandParameterProperty = Value Prelude.Text
  set newValue CommandParameterProperty {..}
    = CommandParameterProperty {name = newValue, ..}
instance Property "Value" CommandParameterProperty where
  type PropertyType "Value" CommandParameterProperty = CommandParameterValueProperty
  set newValue CommandParameterProperty {..}
    = CommandParameterProperty {value = Prelude.pure newValue, ..}