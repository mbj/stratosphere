module Stratosphere.IoTFleetWise.DecoderManifest.ObdInterfaceProperty (
        ObdInterfaceProperty(..), mkObdInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObdInterfaceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html>
    ObdInterfaceProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-dtcrequestintervalseconds>
                          dtcRequestIntervalSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-hastransmissionecu>
                          hasTransmissionEcu :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-name>
                          name :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-obdstandard>
                          obdStandard :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-pidrequestintervalseconds>
                          pidRequestIntervalSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-requestmessageid>
                          requestMessageId :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-decodermanifest-obdinterface.html#cfn-iotfleetwise-decodermanifest-obdinterface-useextendedids>
                          useExtendedIds :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObdInterfaceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ObdInterfaceProperty
mkObdInterfaceProperty name requestMessageId
  = ObdInterfaceProperty
      {haddock_workaround_ = (), name = name,
       requestMessageId = requestMessageId,
       dtcRequestIntervalSeconds = Prelude.Nothing,
       hasTransmissionEcu = Prelude.Nothing,
       obdStandard = Prelude.Nothing,
       pidRequestIntervalSeconds = Prelude.Nothing,
       useExtendedIds = Prelude.Nothing}
instance ToResourceProperties ObdInterfaceProperty where
  toResourceProperties ObdInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::DecoderManifest.ObdInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RequestMessageId" JSON..= requestMessageId]
                           (Prelude.catMaybes
                              [(JSON..=) "DtcRequestIntervalSeconds"
                                 Prelude.<$> dtcRequestIntervalSeconds,
                               (JSON..=) "HasTransmissionEcu" Prelude.<$> hasTransmissionEcu,
                               (JSON..=) "ObdStandard" Prelude.<$> obdStandard,
                               (JSON..=) "PidRequestIntervalSeconds"
                                 Prelude.<$> pidRequestIntervalSeconds,
                               (JSON..=) "UseExtendedIds" Prelude.<$> useExtendedIds]))}
instance JSON.ToJSON ObdInterfaceProperty where
  toJSON ObdInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RequestMessageId" JSON..= requestMessageId]
              (Prelude.catMaybes
                 [(JSON..=) "DtcRequestIntervalSeconds"
                    Prelude.<$> dtcRequestIntervalSeconds,
                  (JSON..=) "HasTransmissionEcu" Prelude.<$> hasTransmissionEcu,
                  (JSON..=) "ObdStandard" Prelude.<$> obdStandard,
                  (JSON..=) "PidRequestIntervalSeconds"
                    Prelude.<$> pidRequestIntervalSeconds,
                  (JSON..=) "UseExtendedIds" Prelude.<$> useExtendedIds])))
instance Property "DtcRequestIntervalSeconds" ObdInterfaceProperty where
  type PropertyType "DtcRequestIntervalSeconds" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty
        {dtcRequestIntervalSeconds = Prelude.pure newValue, ..}
instance Property "HasTransmissionEcu" ObdInterfaceProperty where
  type PropertyType "HasTransmissionEcu" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty
        {hasTransmissionEcu = Prelude.pure newValue, ..}
instance Property "Name" ObdInterfaceProperty where
  type PropertyType "Name" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty {name = newValue, ..}
instance Property "ObdStandard" ObdInterfaceProperty where
  type PropertyType "ObdStandard" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty {obdStandard = Prelude.pure newValue, ..}
instance Property "PidRequestIntervalSeconds" ObdInterfaceProperty where
  type PropertyType "PidRequestIntervalSeconds" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty
        {pidRequestIntervalSeconds = Prelude.pure newValue, ..}
instance Property "RequestMessageId" ObdInterfaceProperty where
  type PropertyType "RequestMessageId" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty {requestMessageId = newValue, ..}
instance Property "UseExtendedIds" ObdInterfaceProperty where
  type PropertyType "UseExtendedIds" ObdInterfaceProperty = Value Prelude.Text
  set newValue ObdInterfaceProperty {..}
    = ObdInterfaceProperty {useExtendedIds = Prelude.pure newValue, ..}