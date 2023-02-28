module Stratosphere.IoTFleetWise.DecoderManifest.ObdInterfaceProperty (
        ObdInterfaceProperty(..), mkObdInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ObdInterfaceProperty
  = ObdInterfaceProperty {dtcRequestIntervalSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                          hasTransmissionEcu :: (Prelude.Maybe (Value Prelude.Text)),
                          name :: (Value Prelude.Text),
                          obdStandard :: (Prelude.Maybe (Value Prelude.Text)),
                          pidRequestIntervalSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                          requestMessageId :: (Value Prelude.Text),
                          useExtendedIds :: (Prelude.Maybe (Value Prelude.Text))}
mkObdInterfaceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ObdInterfaceProperty
mkObdInterfaceProperty name requestMessageId
  = ObdInterfaceProperty
      {name = name, requestMessageId = requestMessageId,
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