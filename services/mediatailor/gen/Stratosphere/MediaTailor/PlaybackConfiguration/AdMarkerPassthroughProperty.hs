module Stratosphere.MediaTailor.PlaybackConfiguration.AdMarkerPassthroughProperty (
        AdMarkerPassthroughProperty(..), mkAdMarkerPassthroughProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdMarkerPassthroughProperty
  = AdMarkerPassthroughProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkAdMarkerPassthroughProperty :: AdMarkerPassthroughProperty
mkAdMarkerPassthroughProperty
  = AdMarkerPassthroughProperty {enabled = Prelude.Nothing}
instance ToResourceProperties AdMarkerPassthroughProperty where
  toResourceProperties AdMarkerPassthroughProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.AdMarkerPassthrough",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])}
instance JSON.ToJSON AdMarkerPassthroughProperty where
  toJSON AdMarkerPassthroughProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))
instance Property "Enabled" AdMarkerPassthroughProperty where
  type PropertyType "Enabled" AdMarkerPassthroughProperty = Value Prelude.Bool
  set newValue AdMarkerPassthroughProperty {}
    = AdMarkerPassthroughProperty {enabled = Prelude.pure newValue, ..}