module Stratosphere.Transfer.Server.ProtocolDetailsProperty (
        ProtocolDetailsProperty(..), mkProtocolDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProtocolDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocoldetails.html>
    ProtocolDetailsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocoldetails.html#cfn-transfer-server-protocoldetails-as2transports>
                             as2Transports :: (Prelude.Maybe (ValueList Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocoldetails.html#cfn-transfer-server-protocoldetails-passiveip>
                             passiveIp :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocoldetails.html#cfn-transfer-server-protocoldetails-setstatoption>
                             setStatOption :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-protocoldetails.html#cfn-transfer-server-protocoldetails-tlssessionresumptionmode>
                             tlsSessionResumptionMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtocolDetailsProperty :: ProtocolDetailsProperty
mkProtocolDetailsProperty
  = ProtocolDetailsProperty
      {haddock_workaround_ = (), as2Transports = Prelude.Nothing,
       passiveIp = Prelude.Nothing, setStatOption = Prelude.Nothing,
       tlsSessionResumptionMode = Prelude.Nothing}
instance ToResourceProperties ProtocolDetailsProperty where
  toResourceProperties ProtocolDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.ProtocolDetails",
         supportsTags = Prelude.False,
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
  type PropertyType "As2Transports" ProtocolDetailsProperty = ValueList Prelude.Text
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