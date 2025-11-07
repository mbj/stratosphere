module Stratosphere.IoT.Command.CommandParameterValueProperty (
        CommandParameterValueProperty(..), mkCommandParameterValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommandParameterValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html>
    CommandParameterValueProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-b>
                                   b :: (Prelude.Maybe (Value Prelude.Bool)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-bin>
                                   bIN :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-d>
                                   d :: (Prelude.Maybe (Value Prelude.Double)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-i>
                                   i :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-l>
                                   l :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-s>
                                   s :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-command-commandparametervalue.html#cfn-iot-command-commandparametervalue-ul>
                                   uL :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommandParameterValueProperty :: CommandParameterValueProperty
mkCommandParameterValueProperty
  = CommandParameterValueProperty
      {haddock_workaround_ = (), b = Prelude.Nothing,
       bIN = Prelude.Nothing, d = Prelude.Nothing, i = Prelude.Nothing,
       l = Prelude.Nothing, s = Prelude.Nothing, uL = Prelude.Nothing}
instance ToResourceProperties CommandParameterValueProperty where
  toResourceProperties CommandParameterValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::Command.CommandParameterValue",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "B" Prelude.<$> b, (JSON..=) "BIN" Prelude.<$> bIN,
                            (JSON..=) "D" Prelude.<$> d, (JSON..=) "I" Prelude.<$> i,
                            (JSON..=) "L" Prelude.<$> l, (JSON..=) "S" Prelude.<$> s,
                            (JSON..=) "UL" Prelude.<$> uL])}
instance JSON.ToJSON CommandParameterValueProperty where
  toJSON CommandParameterValueProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "B" Prelude.<$> b, (JSON..=) "BIN" Prelude.<$> bIN,
               (JSON..=) "D" Prelude.<$> d, (JSON..=) "I" Prelude.<$> i,
               (JSON..=) "L" Prelude.<$> l, (JSON..=) "S" Prelude.<$> s,
               (JSON..=) "UL" Prelude.<$> uL]))
instance Property "B" CommandParameterValueProperty where
  type PropertyType "B" CommandParameterValueProperty = Value Prelude.Bool
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {b = Prelude.pure newValue, ..}
instance Property "BIN" CommandParameterValueProperty where
  type PropertyType "BIN" CommandParameterValueProperty = Value Prelude.Text
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {bIN = Prelude.pure newValue, ..}
instance Property "D" CommandParameterValueProperty where
  type PropertyType "D" CommandParameterValueProperty = Value Prelude.Double
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {d = Prelude.pure newValue, ..}
instance Property "I" CommandParameterValueProperty where
  type PropertyType "I" CommandParameterValueProperty = Value Prelude.Integer
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {i = Prelude.pure newValue, ..}
instance Property "L" CommandParameterValueProperty where
  type PropertyType "L" CommandParameterValueProperty = Value Prelude.Text
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {l = Prelude.pure newValue, ..}
instance Property "S" CommandParameterValueProperty where
  type PropertyType "S" CommandParameterValueProperty = Value Prelude.Text
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {s = Prelude.pure newValue, ..}
instance Property "UL" CommandParameterValueProperty where
  type PropertyType "UL" CommandParameterValueProperty = Value Prelude.Text
  set newValue CommandParameterValueProperty {..}
    = CommandParameterValueProperty {uL = Prelude.pure newValue, ..}