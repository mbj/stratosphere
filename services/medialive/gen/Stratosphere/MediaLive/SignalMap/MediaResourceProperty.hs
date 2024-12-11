module Stratosphere.MediaLive.SignalMap.MediaResourceProperty (
        module Exports, MediaResourceProperty(..), mkMediaResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.SignalMap.MediaResourceNeighborProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaResourceProperty
  = MediaResourceProperty {destinations :: (Prelude.Maybe [MediaResourceNeighborProperty]),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           sources :: (Prelude.Maybe [MediaResourceNeighborProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaResourceProperty :: MediaResourceProperty
mkMediaResourceProperty
  = MediaResourceProperty
      {destinations = Prelude.Nothing, name = Prelude.Nothing,
       sources = Prelude.Nothing}
instance ToResourceProperties MediaResourceProperty where
  toResourceProperties MediaResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SignalMap.MediaResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destinations" Prelude.<$> destinations,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Sources" Prelude.<$> sources])}
instance JSON.ToJSON MediaResourceProperty where
  toJSON MediaResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destinations" Prelude.<$> destinations,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Sources" Prelude.<$> sources]))
instance Property "Destinations" MediaResourceProperty where
  type PropertyType "Destinations" MediaResourceProperty = [MediaResourceNeighborProperty]
  set newValue MediaResourceProperty {..}
    = MediaResourceProperty {destinations = Prelude.pure newValue, ..}
instance Property "Name" MediaResourceProperty where
  type PropertyType "Name" MediaResourceProperty = Value Prelude.Text
  set newValue MediaResourceProperty {..}
    = MediaResourceProperty {name = Prelude.pure newValue, ..}
instance Property "Sources" MediaResourceProperty where
  type PropertyType "Sources" MediaResourceProperty = [MediaResourceNeighborProperty]
  set newValue MediaResourceProperty {..}
    = MediaResourceProperty {sources = Prelude.pure newValue, ..}