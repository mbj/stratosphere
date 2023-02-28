module Stratosphere.MediaLive.Channel.UdpGroupSettingsProperty (
        UdpGroupSettingsProperty(..), mkUdpGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UdpGroupSettingsProperty
  = UdpGroupSettingsProperty {inputLossAction :: (Prelude.Maybe (Value Prelude.Text)),
                              timedMetadataId3Frame :: (Prelude.Maybe (Value Prelude.Text)),
                              timedMetadataId3Period :: (Prelude.Maybe (Value Prelude.Integer))}
mkUdpGroupSettingsProperty :: UdpGroupSettingsProperty
mkUdpGroupSettingsProperty
  = UdpGroupSettingsProperty
      {inputLossAction = Prelude.Nothing,
       timedMetadataId3Frame = Prelude.Nothing,
       timedMetadataId3Period = Prelude.Nothing}
instance ToResourceProperties UdpGroupSettingsProperty where
  toResourceProperties UdpGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.UdpGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
                            (JSON..=) "TimedMetadataId3Frame"
                              Prelude.<$> timedMetadataId3Frame,
                            (JSON..=) "TimedMetadataId3Period"
                              Prelude.<$> timedMetadataId3Period])}
instance JSON.ToJSON UdpGroupSettingsProperty where
  toJSON UdpGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputLossAction" Prelude.<$> inputLossAction,
               (JSON..=) "TimedMetadataId3Frame"
                 Prelude.<$> timedMetadataId3Frame,
               (JSON..=) "TimedMetadataId3Period"
                 Prelude.<$> timedMetadataId3Period]))
instance Property "InputLossAction" UdpGroupSettingsProperty where
  type PropertyType "InputLossAction" UdpGroupSettingsProperty = Value Prelude.Text
  set newValue UdpGroupSettingsProperty {..}
    = UdpGroupSettingsProperty
        {inputLossAction = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Frame" UdpGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Frame" UdpGroupSettingsProperty = Value Prelude.Text
  set newValue UdpGroupSettingsProperty {..}
    = UdpGroupSettingsProperty
        {timedMetadataId3Frame = Prelude.pure newValue, ..}
instance Property "TimedMetadataId3Period" UdpGroupSettingsProperty where
  type PropertyType "TimedMetadataId3Period" UdpGroupSettingsProperty = Value Prelude.Integer
  set newValue UdpGroupSettingsProperty {..}
    = UdpGroupSettingsProperty
        {timedMetadataId3Period = Prelude.pure newValue, ..}