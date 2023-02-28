module Stratosphere.MediaLive.Channel.BlackoutSlateProperty (
        module Exports, BlackoutSlateProperty(..), mkBlackoutSlateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlackoutSlateProperty
  = BlackoutSlateProperty {blackoutSlateImage :: (Prelude.Maybe InputLocationProperty),
                           networkEndBlackout :: (Prelude.Maybe (Value Prelude.Text)),
                           networkEndBlackoutImage :: (Prelude.Maybe InputLocationProperty),
                           networkId :: (Prelude.Maybe (Value Prelude.Text)),
                           state :: (Prelude.Maybe (Value Prelude.Text))}
mkBlackoutSlateProperty :: BlackoutSlateProperty
mkBlackoutSlateProperty
  = BlackoutSlateProperty
      {blackoutSlateImage = Prelude.Nothing,
       networkEndBlackout = Prelude.Nothing,
       networkEndBlackoutImage = Prelude.Nothing,
       networkId = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties BlackoutSlateProperty where
  toResourceProperties BlackoutSlateProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.BlackoutSlate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlackoutSlateImage" Prelude.<$> blackoutSlateImage,
                            (JSON..=) "NetworkEndBlackout" Prelude.<$> networkEndBlackout,
                            (JSON..=) "NetworkEndBlackoutImage"
                              Prelude.<$> networkEndBlackoutImage,
                            (JSON..=) "NetworkId" Prelude.<$> networkId,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON BlackoutSlateProperty where
  toJSON BlackoutSlateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlackoutSlateImage" Prelude.<$> blackoutSlateImage,
               (JSON..=) "NetworkEndBlackout" Prelude.<$> networkEndBlackout,
               (JSON..=) "NetworkEndBlackoutImage"
                 Prelude.<$> networkEndBlackoutImage,
               (JSON..=) "NetworkId" Prelude.<$> networkId,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "BlackoutSlateImage" BlackoutSlateProperty where
  type PropertyType "BlackoutSlateImage" BlackoutSlateProperty = InputLocationProperty
  set newValue BlackoutSlateProperty {..}
    = BlackoutSlateProperty
        {blackoutSlateImage = Prelude.pure newValue, ..}
instance Property "NetworkEndBlackout" BlackoutSlateProperty where
  type PropertyType "NetworkEndBlackout" BlackoutSlateProperty = Value Prelude.Text
  set newValue BlackoutSlateProperty {..}
    = BlackoutSlateProperty
        {networkEndBlackout = Prelude.pure newValue, ..}
instance Property "NetworkEndBlackoutImage" BlackoutSlateProperty where
  type PropertyType "NetworkEndBlackoutImage" BlackoutSlateProperty = InputLocationProperty
  set newValue BlackoutSlateProperty {..}
    = BlackoutSlateProperty
        {networkEndBlackoutImage = Prelude.pure newValue, ..}
instance Property "NetworkId" BlackoutSlateProperty where
  type PropertyType "NetworkId" BlackoutSlateProperty = Value Prelude.Text
  set newValue BlackoutSlateProperty {..}
    = BlackoutSlateProperty {networkId = Prelude.pure newValue, ..}
instance Property "State" BlackoutSlateProperty where
  type PropertyType "State" BlackoutSlateProperty = Value Prelude.Text
  set newValue BlackoutSlateProperty {..}
    = BlackoutSlateProperty {state = Prelude.pure newValue, ..}