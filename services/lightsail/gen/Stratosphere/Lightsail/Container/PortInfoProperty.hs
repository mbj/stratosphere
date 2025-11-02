module Stratosphere.Lightsail.Container.PortInfoProperty (
        PortInfoProperty(..), mkPortInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-portinfo.html>
    PortInfoProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-portinfo.html#cfn-lightsail-container-portinfo-port>
                      port :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-container-portinfo.html#cfn-lightsail-container-portinfo-protocol>
                      protocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortInfoProperty :: PortInfoProperty
mkPortInfoProperty
  = PortInfoProperty
      {haddock_workaround_ = (), port = Prelude.Nothing,
       protocol = Prelude.Nothing}
instance ToResourceProperties PortInfoProperty where
  toResourceProperties PortInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Container.PortInfo",
         supportsTags = Prelude.False,
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