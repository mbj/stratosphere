module Stratosphere.IoTFleetWise.DecoderManifest.CanInterfaceProperty (
        CanInterfaceProperty(..), mkCanInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanInterfaceProperty
  = CanInterfaceProperty {name :: (Value Prelude.Text),
                          protocolName :: (Prelude.Maybe (Value Prelude.Text)),
                          protocolVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCanInterfaceProperty ::
  Value Prelude.Text -> CanInterfaceProperty
mkCanInterfaceProperty name
  = CanInterfaceProperty
      {name = name, protocolName = Prelude.Nothing,
       protocolVersion = Prelude.Nothing}
instance ToResourceProperties CanInterfaceProperty where
  toResourceProperties CanInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.CanInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ProtocolName" Prelude.<$> protocolName,
                               (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion]))}
instance JSON.ToJSON CanInterfaceProperty where
  toJSON CanInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ProtocolName" Prelude.<$> protocolName,
                  (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion])))
instance Property "Name" CanInterfaceProperty where
  type PropertyType "Name" CanInterfaceProperty = Value Prelude.Text
  set newValue CanInterfaceProperty {..}
    = CanInterfaceProperty {name = newValue, ..}
instance Property "ProtocolName" CanInterfaceProperty where
  type PropertyType "ProtocolName" CanInterfaceProperty = Value Prelude.Text
  set newValue CanInterfaceProperty {..}
    = CanInterfaceProperty {protocolName = Prelude.pure newValue, ..}
instance Property "ProtocolVersion" CanInterfaceProperty where
  type PropertyType "ProtocolVersion" CanInterfaceProperty = Value Prelude.Text
  set newValue CanInterfaceProperty {..}
    = CanInterfaceProperty
        {protocolVersion = Prelude.pure newValue, ..}