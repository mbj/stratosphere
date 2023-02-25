module Stratosphere.NetworkFirewall.RuleGroup.TCPFlagFieldProperty (
        TCPFlagFieldProperty(..), mkTCPFlagFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TCPFlagFieldProperty
  = TCPFlagFieldProperty {flags :: (ValueList (Value Prelude.Text)),
                          masks :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkTCPFlagFieldProperty ::
  ValueList (Value Prelude.Text) -> TCPFlagFieldProperty
mkTCPFlagFieldProperty flags
  = TCPFlagFieldProperty {flags = flags, masks = Prelude.Nothing}
instance ToResourceProperties TCPFlagFieldProperty where
  toResourceProperties TCPFlagFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.TCPFlagField",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Flags" JSON..= flags]
                           (Prelude.catMaybes [(JSON..=) "Masks" Prelude.<$> masks]))}
instance JSON.ToJSON TCPFlagFieldProperty where
  toJSON TCPFlagFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Flags" JSON..= flags]
              (Prelude.catMaybes [(JSON..=) "Masks" Prelude.<$> masks])))
instance Property "Flags" TCPFlagFieldProperty where
  type PropertyType "Flags" TCPFlagFieldProperty = ValueList (Value Prelude.Text)
  set newValue TCPFlagFieldProperty {..}
    = TCPFlagFieldProperty {flags = newValue, ..}
instance Property "Masks" TCPFlagFieldProperty where
  type PropertyType "Masks" TCPFlagFieldProperty = ValueList (Value Prelude.Text)
  set newValue TCPFlagFieldProperty {..}
    = TCPFlagFieldProperty {masks = Prelude.pure newValue, ..}