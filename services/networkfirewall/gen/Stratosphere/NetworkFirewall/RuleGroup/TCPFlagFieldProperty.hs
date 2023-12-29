module Stratosphere.NetworkFirewall.RuleGroup.TCPFlagFieldProperty (
        TCPFlagFieldProperty(..), mkTCPFlagFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TCPFlagFieldProperty
  = TCPFlagFieldProperty {flags :: (ValueList Prelude.Text),
                          masks :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTCPFlagFieldProperty ::
  ValueList Prelude.Text -> TCPFlagFieldProperty
mkTCPFlagFieldProperty flags
  = TCPFlagFieldProperty {flags = flags, masks = Prelude.Nothing}
instance ToResourceProperties TCPFlagFieldProperty where
  toResourceProperties TCPFlagFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.TCPFlagField",
         supportsTags = Prelude.False,
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
  type PropertyType "Flags" TCPFlagFieldProperty = ValueList Prelude.Text
  set newValue TCPFlagFieldProperty {..}
    = TCPFlagFieldProperty {flags = newValue, ..}
instance Property "Masks" TCPFlagFieldProperty where
  type PropertyType "Masks" TCPFlagFieldProperty = ValueList Prelude.Text
  set newValue TCPFlagFieldProperty {..}
    = TCPFlagFieldProperty {masks = Prelude.pure newValue, ..}