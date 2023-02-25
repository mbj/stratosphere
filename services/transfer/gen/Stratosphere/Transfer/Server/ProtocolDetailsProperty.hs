module Stratosphere.Transfer.Server.ProtocolDetailsProperty (
        module Exports, ProtocolDetailsProperty(..),
        mkProtocolDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Server.As2TransportProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProtocolDetailsProperty
  = ProtocolDetailsProperty {as2Transports :: (Prelude.Maybe [As2TransportProperty]),
                             passiveIp :: (Prelude.Maybe (Value Prelude.Text)),
                             setStatOption :: (Prelude.Maybe (Value Prelude.Text)),
                             tlsSessionResumptionMode :: (Prelude.Maybe (Value Prelude.Text))}
mkProtocolDetailsProperty :: ProtocolDetailsProperty
mkProtocolDetailsProperty
  = ProtocolDetailsProperty
      {as2Transports = Prelude.Nothing, passiveIp = Prelude.Nothing,
       setStatOption = Prelude.Nothing,
       tlsSessionResumptionMode = Prelude.Nothing}
instance ToResourceProperties ProtocolDetailsProperty where
  toResourceProperties ProtocolDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.ProtocolDetails",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "As2Transports" Prelude.<$> as2Transports,
                            (JSON..=) "PassiveIp" Prelude.<$> passiveIp,
                            (JSON..=) "SetStatOption" Prelude.<$> setStatOption,
                            (JSON..=) "TlsSessionResumptionMode"
                              Prelude.<$> tlsSessionResumptionMode])}
instance JSON.ToJSON ProtocolDetailsProperty where
  toJSON ProtocolDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "As2Transports" Prelude.<$> as2Transports,
               (JSON..=) "PassiveIp" Prelude.<$> passiveIp,
               (JSON..=) "SetStatOption" Prelude.<$> setStatOption,
               (JSON..=) "TlsSessionResumptionMode"
                 Prelude.<$> tlsSessionResumptionMode]))
instance Property "As2Transports" ProtocolDetailsProperty where
  type PropertyType "As2Transports" ProtocolDetailsProperty = [As2TransportProperty]
  set newValue ProtocolDetailsProperty {..}
    = ProtocolDetailsProperty
        {as2Transports = Prelude.pure newValue, ..}
instance Property "PassiveIp" ProtocolDetailsProperty where
  type PropertyType "PassiveIp" ProtocolDetailsProperty = Value Prelude.Text
  set newValue ProtocolDetailsProperty {..}
    = ProtocolDetailsProperty {passiveIp = Prelude.pure newValue, ..}
instance Property "SetStatOption" ProtocolDetailsProperty where
  type PropertyType "SetStatOption" ProtocolDetailsProperty = Value Prelude.Text
  set newValue ProtocolDetailsProperty {..}
    = ProtocolDetailsProperty
        {setStatOption = Prelude.pure newValue, ..}
instance Property "TlsSessionResumptionMode" ProtocolDetailsProperty where
  type PropertyType "TlsSessionResumptionMode" ProtocolDetailsProperty = Value Prelude.Text
  set newValue ProtocolDetailsProperty {..}
    = ProtocolDetailsProperty
        {tlsSessionResumptionMode = Prelude.pure newValue, ..}