module Stratosphere.IoTWireless.ServiceProfile.LoRaWANServiceProfileProperty (
        LoRaWANServiceProfileProperty(..), mkLoRaWANServiceProfileProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANServiceProfileProperty
  = LoRaWANServiceProfileProperty {addGwMetadata :: (Prelude.Maybe (Value Prelude.Bool)),
                                   channelMask :: (Prelude.Maybe (Value Prelude.Text)),
                                   devStatusReqFreq :: (Prelude.Maybe (Value Prelude.Integer)),
                                   dlBucketSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                   dlRate :: (Prelude.Maybe (Value Prelude.Integer)),
                                   dlRatePolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                   drMax :: (Prelude.Maybe (Value Prelude.Integer)),
                                   drMin :: (Prelude.Maybe (Value Prelude.Integer)),
                                   hrAllowed :: (Prelude.Maybe (Value Prelude.Bool)),
                                   minGwDiversity :: (Prelude.Maybe (Value Prelude.Integer)),
                                   nwkGeoLoc :: (Prelude.Maybe (Value Prelude.Bool)),
                                   prAllowed :: (Prelude.Maybe (Value Prelude.Bool)),
                                   raAllowed :: (Prelude.Maybe (Value Prelude.Bool)),
                                   reportDevStatusBattery :: (Prelude.Maybe (Value Prelude.Bool)),
                                   reportDevStatusMargin :: (Prelude.Maybe (Value Prelude.Bool)),
                                   targetPer :: (Prelude.Maybe (Value Prelude.Integer)),
                                   ulBucketSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                   ulRate :: (Prelude.Maybe (Value Prelude.Integer)),
                                   ulRatePolicy :: (Prelude.Maybe (Value Prelude.Text))}
mkLoRaWANServiceProfileProperty :: LoRaWANServiceProfileProperty
mkLoRaWANServiceProfileProperty
  = LoRaWANServiceProfileProperty
      {addGwMetadata = Prelude.Nothing, channelMask = Prelude.Nothing,
       devStatusReqFreq = Prelude.Nothing, dlBucketSize = Prelude.Nothing,
       dlRate = Prelude.Nothing, dlRatePolicy = Prelude.Nothing,
       drMax = Prelude.Nothing, drMin = Prelude.Nothing,
       hrAllowed = Prelude.Nothing, minGwDiversity = Prelude.Nothing,
       nwkGeoLoc = Prelude.Nothing, prAllowed = Prelude.Nothing,
       raAllowed = Prelude.Nothing,
       reportDevStatusBattery = Prelude.Nothing,
       reportDevStatusMargin = Prelude.Nothing,
       targetPer = Prelude.Nothing, ulBucketSize = Prelude.Nothing,
       ulRate = Prelude.Nothing, ulRatePolicy = Prelude.Nothing}
instance ToResourceProperties LoRaWANServiceProfileProperty where
  toResourceProperties LoRaWANServiceProfileProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::ServiceProfile.LoRaWANServiceProfile",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AddGwMetadata" Prelude.<$> addGwMetadata,
                            (JSON..=) "ChannelMask" Prelude.<$> channelMask,
                            (JSON..=) "DevStatusReqFreq" Prelude.<$> devStatusReqFreq,
                            (JSON..=) "DlBucketSize" Prelude.<$> dlBucketSize,
                            (JSON..=) "DlRate" Prelude.<$> dlRate,
                            (JSON..=) "DlRatePolicy" Prelude.<$> dlRatePolicy,
                            (JSON..=) "DrMax" Prelude.<$> drMax,
                            (JSON..=) "DrMin" Prelude.<$> drMin,
                            (JSON..=) "HrAllowed" Prelude.<$> hrAllowed,
                            (JSON..=) "MinGwDiversity" Prelude.<$> minGwDiversity,
                            (JSON..=) "NwkGeoLoc" Prelude.<$> nwkGeoLoc,
                            (JSON..=) "PrAllowed" Prelude.<$> prAllowed,
                            (JSON..=) "RaAllowed" Prelude.<$> raAllowed,
                            (JSON..=) "ReportDevStatusBattery"
                              Prelude.<$> reportDevStatusBattery,
                            (JSON..=) "ReportDevStatusMargin"
                              Prelude.<$> reportDevStatusMargin,
                            (JSON..=) "TargetPer" Prelude.<$> targetPer,
                            (JSON..=) "UlBucketSize" Prelude.<$> ulBucketSize,
                            (JSON..=) "UlRate" Prelude.<$> ulRate,
                            (JSON..=) "UlRatePolicy" Prelude.<$> ulRatePolicy])}
instance JSON.ToJSON LoRaWANServiceProfileProperty where
  toJSON LoRaWANServiceProfileProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AddGwMetadata" Prelude.<$> addGwMetadata,
               (JSON..=) "ChannelMask" Prelude.<$> channelMask,
               (JSON..=) "DevStatusReqFreq" Prelude.<$> devStatusReqFreq,
               (JSON..=) "DlBucketSize" Prelude.<$> dlBucketSize,
               (JSON..=) "DlRate" Prelude.<$> dlRate,
               (JSON..=) "DlRatePolicy" Prelude.<$> dlRatePolicy,
               (JSON..=) "DrMax" Prelude.<$> drMax,
               (JSON..=) "DrMin" Prelude.<$> drMin,
               (JSON..=) "HrAllowed" Prelude.<$> hrAllowed,
               (JSON..=) "MinGwDiversity" Prelude.<$> minGwDiversity,
               (JSON..=) "NwkGeoLoc" Prelude.<$> nwkGeoLoc,
               (JSON..=) "PrAllowed" Prelude.<$> prAllowed,
               (JSON..=) "RaAllowed" Prelude.<$> raAllowed,
               (JSON..=) "ReportDevStatusBattery"
                 Prelude.<$> reportDevStatusBattery,
               (JSON..=) "ReportDevStatusMargin"
                 Prelude.<$> reportDevStatusMargin,
               (JSON..=) "TargetPer" Prelude.<$> targetPer,
               (JSON..=) "UlBucketSize" Prelude.<$> ulBucketSize,
               (JSON..=) "UlRate" Prelude.<$> ulRate,
               (JSON..=) "UlRatePolicy" Prelude.<$> ulRatePolicy]))
instance Property "AddGwMetadata" LoRaWANServiceProfileProperty where
  type PropertyType "AddGwMetadata" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {addGwMetadata = Prelude.pure newValue, ..}
instance Property "ChannelMask" LoRaWANServiceProfileProperty where
  type PropertyType "ChannelMask" LoRaWANServiceProfileProperty = Value Prelude.Text
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {channelMask = Prelude.pure newValue, ..}
instance Property "DevStatusReqFreq" LoRaWANServiceProfileProperty where
  type PropertyType "DevStatusReqFreq" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {devStatusReqFreq = Prelude.pure newValue, ..}
instance Property "DlBucketSize" LoRaWANServiceProfileProperty where
  type PropertyType "DlBucketSize" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {dlBucketSize = Prelude.pure newValue, ..}
instance Property "DlRate" LoRaWANServiceProfileProperty where
  type PropertyType "DlRate" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {dlRate = Prelude.pure newValue, ..}
instance Property "DlRatePolicy" LoRaWANServiceProfileProperty where
  type PropertyType "DlRatePolicy" LoRaWANServiceProfileProperty = Value Prelude.Text
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {dlRatePolicy = Prelude.pure newValue, ..}
instance Property "DrMax" LoRaWANServiceProfileProperty where
  type PropertyType "DrMax" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty {drMax = Prelude.pure newValue, ..}
instance Property "DrMin" LoRaWANServiceProfileProperty where
  type PropertyType "DrMin" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty {drMin = Prelude.pure newValue, ..}
instance Property "HrAllowed" LoRaWANServiceProfileProperty where
  type PropertyType "HrAllowed" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {hrAllowed = Prelude.pure newValue, ..}
instance Property "MinGwDiversity" LoRaWANServiceProfileProperty where
  type PropertyType "MinGwDiversity" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {minGwDiversity = Prelude.pure newValue, ..}
instance Property "NwkGeoLoc" LoRaWANServiceProfileProperty where
  type PropertyType "NwkGeoLoc" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {nwkGeoLoc = Prelude.pure newValue, ..}
instance Property "PrAllowed" LoRaWANServiceProfileProperty where
  type PropertyType "PrAllowed" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {prAllowed = Prelude.pure newValue, ..}
instance Property "RaAllowed" LoRaWANServiceProfileProperty where
  type PropertyType "RaAllowed" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {raAllowed = Prelude.pure newValue, ..}
instance Property "ReportDevStatusBattery" LoRaWANServiceProfileProperty where
  type PropertyType "ReportDevStatusBattery" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {reportDevStatusBattery = Prelude.pure newValue, ..}
instance Property "ReportDevStatusMargin" LoRaWANServiceProfileProperty where
  type PropertyType "ReportDevStatusMargin" LoRaWANServiceProfileProperty = Value Prelude.Bool
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {reportDevStatusMargin = Prelude.pure newValue, ..}
instance Property "TargetPer" LoRaWANServiceProfileProperty where
  type PropertyType "TargetPer" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {targetPer = Prelude.pure newValue, ..}
instance Property "UlBucketSize" LoRaWANServiceProfileProperty where
  type PropertyType "UlBucketSize" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {ulBucketSize = Prelude.pure newValue, ..}
instance Property "UlRate" LoRaWANServiceProfileProperty where
  type PropertyType "UlRate" LoRaWANServiceProfileProperty = Value Prelude.Integer
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {ulRate = Prelude.pure newValue, ..}
instance Property "UlRatePolicy" LoRaWANServiceProfileProperty where
  type PropertyType "UlRatePolicy" LoRaWANServiceProfileProperty = Value Prelude.Text
  set newValue LoRaWANServiceProfileProperty {..}
    = LoRaWANServiceProfileProperty
        {ulRatePolicy = Prelude.pure newValue, ..}