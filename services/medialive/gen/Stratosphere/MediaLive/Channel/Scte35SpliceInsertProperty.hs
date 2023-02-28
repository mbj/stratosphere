module Stratosphere.MediaLive.Channel.Scte35SpliceInsertProperty (
        Scte35SpliceInsertProperty(..), mkScte35SpliceInsertProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Scte35SpliceInsertProperty
  = Scte35SpliceInsertProperty {adAvailOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                                noRegionalBlackoutFlag :: (Prelude.Maybe (Value Prelude.Text)),
                                webDeliveryAllowedFlag :: (Prelude.Maybe (Value Prelude.Text))}
mkScte35SpliceInsertProperty :: Scte35SpliceInsertProperty
mkScte35SpliceInsertProperty
  = Scte35SpliceInsertProperty
      {adAvailOffset = Prelude.Nothing,
       noRegionalBlackoutFlag = Prelude.Nothing,
       webDeliveryAllowedFlag = Prelude.Nothing}
instance ToResourceProperties Scte35SpliceInsertProperty where
  toResourceProperties Scte35SpliceInsertProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte35SpliceInsert",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
                            (JSON..=) "NoRegionalBlackoutFlag"
                              Prelude.<$> noRegionalBlackoutFlag,
                            (JSON..=) "WebDeliveryAllowedFlag"
                              Prelude.<$> webDeliveryAllowedFlag])}
instance JSON.ToJSON Scte35SpliceInsertProperty where
  toJSON Scte35SpliceInsertProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdAvailOffset" Prelude.<$> adAvailOffset,
               (JSON..=) "NoRegionalBlackoutFlag"
                 Prelude.<$> noRegionalBlackoutFlag,
               (JSON..=) "WebDeliveryAllowedFlag"
                 Prelude.<$> webDeliveryAllowedFlag]))
instance Property "AdAvailOffset" Scte35SpliceInsertProperty where
  type PropertyType "AdAvailOffset" Scte35SpliceInsertProperty = Value Prelude.Integer
  set newValue Scte35SpliceInsertProperty {..}
    = Scte35SpliceInsertProperty
        {adAvailOffset = Prelude.pure newValue, ..}
instance Property "NoRegionalBlackoutFlag" Scte35SpliceInsertProperty where
  type PropertyType "NoRegionalBlackoutFlag" Scte35SpliceInsertProperty = Value Prelude.Text
  set newValue Scte35SpliceInsertProperty {..}
    = Scte35SpliceInsertProperty
        {noRegionalBlackoutFlag = Prelude.pure newValue, ..}
instance Property "WebDeliveryAllowedFlag" Scte35SpliceInsertProperty where
  type PropertyType "WebDeliveryAllowedFlag" Scte35SpliceInsertProperty = Value Prelude.Text
  set newValue Scte35SpliceInsertProperty {..}
    = Scte35SpliceInsertProperty
        {webDeliveryAllowedFlag = Prelude.pure newValue, ..}