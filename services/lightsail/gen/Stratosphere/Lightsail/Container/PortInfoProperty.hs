module Stratosphere.Lightsail.Container.PortInfoProperty (
        PortInfoProperty(..), mkPortInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortInfoProperty
  = PortInfoProperty {port :: (Prelude.Maybe (Value Prelude.Text)),
                      protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkPortInfoProperty :: PortInfoProperty
mkPortInfoProperty
  = PortInfoProperty
      {port = Prelude.Nothing, protocol = Prelude.Nothing}
instance ToResourceProperties PortInfoProperty where
  toResourceProperties PortInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.PortInfo",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON PortInfoProperty where
  toJSON PortInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "Port" PortInfoProperty where
  type PropertyType "Port" PortInfoProperty = Value Prelude.Text
  set newValue PortInfoProperty {..}
    = PortInfoProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" PortInfoProperty where
  type PropertyType "Protocol" PortInfoProperty = Value Prelude.Text
  set newValue PortInfoProperty {..}
    = PortInfoProperty {protocol = Prelude.pure newValue, ..}