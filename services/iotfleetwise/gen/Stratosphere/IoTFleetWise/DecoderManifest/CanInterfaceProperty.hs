module Stratosphere.IoTFleetWise.DecoderManifest.CanInterfaceProperty (
        CanInterfaceProperty(..), mkCanInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CanInterfaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-caninterface.html>
    CanInterfaceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-caninterface.html#cfn-iotfleetwise-decodermanifest-caninterface-name>
                          name :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-caninterface.html#cfn-iotfleetwise-decodermanifest-caninterface-protocolname>
                          protocolName :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-caninterface.html#cfn-iotfleetwise-decodermanifest-caninterface-protocolversion>
                          protocolVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCanInterfaceProperty ::
  Value Prelude.Text -> CanInterfaceProperty
mkCanInterfaceProperty name
  = CanInterfaceProperty
      {haddock_workaround_ = (), name = name,
       protocolName = Prelude.Nothing, protocolVersion = Prelude.Nothing}
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