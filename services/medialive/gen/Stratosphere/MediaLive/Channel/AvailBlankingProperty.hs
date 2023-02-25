module Stratosphere.MediaLive.Channel.AvailBlankingProperty (
        module Exports, AvailBlankingProperty(..), mkAvailBlankingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailBlankingProperty
  = AvailBlankingProperty {availBlankingImage :: (Prelude.Maybe InputLocationProperty),
                           state :: (Prelude.Maybe (Value Prelude.Text))}
mkAvailBlankingProperty :: AvailBlankingProperty
mkAvailBlankingProperty
  = AvailBlankingProperty
      {availBlankingImage = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties AvailBlankingProperty where
  toResourceProperties AvailBlankingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AvailBlanking",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailBlankingImage" Prelude.<$> availBlankingImage,
                            (JSON..=) "State" Prelude.<$> state])}
instance JSON.ToJSON AvailBlankingProperty where
  toJSON AvailBlankingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailBlankingImage" Prelude.<$> availBlankingImage,
               (JSON..=) "State" Prelude.<$> state]))
instance Property "AvailBlankingImage" AvailBlankingProperty where
  type PropertyType "AvailBlankingImage" AvailBlankingProperty = InputLocationProperty
  set newValue AvailBlankingProperty {..}
    = AvailBlankingProperty
        {availBlankingImage = Prelude.pure newValue, ..}
instance Property "State" AvailBlankingProperty where
  type PropertyType "State" AvailBlankingProperty = Value Prelude.Text
  set newValue AvailBlankingProperty {..}
    = AvailBlankingProperty {state = Prelude.pure newValue, ..}