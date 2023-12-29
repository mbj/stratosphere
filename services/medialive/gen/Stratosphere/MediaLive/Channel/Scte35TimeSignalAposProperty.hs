module Stratosphere.MediaLive.Channel.Scte35TimeSignalAposProperty (
        Scte35TimeSignalAposProperty(..), mkScte35TimeSignalAposProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scte35TimeSignalAposProperty
  = Scte35TimeSignalAposProperty {adAvailOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                  noRegionalBlackoutFlag :: (Prelude.Maybe (Value Prelude.Text)),
                                  webDeliveryAllowedFlag :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScte35TimeSignalAposProperty :: Scte35TimeSignalAposProperty
mkScte35TimeSignalAposProperty
  = Scte35TimeSignalAposProperty
      {adAvailOffset = Prelude.Nothing,
       noRegionalBlackoutFlag = Prelude.Nothing,
       webDeliveryAllowedFlag = Prelude.Nothing}
instance ToResourceProperties Scte35TimeSignalAposProperty where
  toResourceProperties Scte35TimeSignalAposProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte35TimeSignalApos",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
                            (JSON..=) "NoRegionalBlackoutFlag"
                              Prelude.<$> noRegionalBlackoutFlag,
                            (JSON..=) "WebDeliveryAllowedFlag"
                              Prelude.<$> webDeliveryAllowedFlag])}
instance JSON.ToJSON Scte35TimeSignalAposProperty where
  toJSON Scte35TimeSignalAposProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
               (JSON..=) "NoRegionalBlackoutFlag"
                 Prelude.<$> noRegionalBlackoutFlag,
               (JSON..=) "WebDeliveryAllowedFlag"
                 Prelude.<$> webDeliveryAllowedFlag]))
instance Property "AdAvailOffset" Scte35TimeSignalAposProperty where
  type PropertyType "AdAvailOffset" Scte35TimeSignalAposProperty = Value Prelude.Integer
  set newValue Scte35TimeSignalAposProperty {..}
    = Scte35TimeSignalAposProperty
        {adAvailOffset = Prelude.pure newValue, ..}
instance Property "NoRegionalBlackoutFlag" Scte35TimeSignalAposProperty where
  type PropertyType "NoRegionalBlackoutFlag" Scte35TimeSignalAposProperty = Value Prelude.Text
  set newValue Scte35TimeSignalAposProperty {..}
    = Scte35TimeSignalAposProperty
        {noRegionalBlackoutFlag = Prelude.pure newValue, ..}
instance Property "WebDeliveryAllowedFlag" Scte35TimeSignalAposProperty where
  type PropertyType "WebDeliveryAllowedFlag" Scte35TimeSignalAposProperty = Value Prelude.Text
  set newValue Scte35TimeSignalAposProperty {..}
    = Scte35TimeSignalAposProperty
        {webDeliveryAllowedFlag = Prelude.pure newValue, ..}