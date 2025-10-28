module Stratosphere.MediaTailor.PlaybackConfiguration.AdMarkerPassthroughProperty (
        AdMarkerPassthroughProperty(..), mkAdMarkerPassthroughProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdMarkerPassthroughProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-admarkerpassthrough.html>
    AdMarkerPassthroughProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-admarkerpassthrough.html#cfn-mediatailor-playbackconfiguration-admarkerpassthrough-enabled>
                                 enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdMarkerPassthroughProperty :: AdMarkerPassthroughProperty
mkAdMarkerPassthroughProperty
  = AdMarkerPassthroughProperty
      {haddock_workaround_ = (), enabled = Prelude.Nothing}
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
  set newValue AdMarkerPassthroughProperty {..}
    = AdMarkerPassthroughProperty {enabled = Prelude.pure newValue, ..}