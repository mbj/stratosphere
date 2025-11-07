module Stratosphere.MediaTailor.PlaybackConfiguration.ManifestServiceInteractionLogProperty (
        ManifestServiceInteractionLogProperty(..),
        mkManifestServiceInteractionLogProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManifestServiceInteractionLogProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-manifestserviceinteractionlog.html>
    ManifestServiceInteractionLogProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-manifestserviceinteractionlog.html#cfn-mediatailor-playbackconfiguration-manifestserviceinteractionlog-excludeeventtypes>
                                           excludeEventTypes :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestServiceInteractionLogProperty ::
  ManifestServiceInteractionLogProperty
mkManifestServiceInteractionLogProperty
  = ManifestServiceInteractionLogProperty
      {haddock_workaround_ = (), excludeEventTypes = Prelude.Nothing}
instance ToResourceProperties ManifestServiceInteractionLogProperty where
  toResourceProperties ManifestServiceInteractionLogProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.ManifestServiceInteractionLog",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExcludeEventTypes" Prelude.<$> excludeEventTypes])}
instance JSON.ToJSON ManifestServiceInteractionLogProperty where
  toJSON ManifestServiceInteractionLogProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExcludeEventTypes" Prelude.<$> excludeEventTypes]))
instance Property "ExcludeEventTypes" ManifestServiceInteractionLogProperty where
  type PropertyType "ExcludeEventTypes" ManifestServiceInteractionLogProperty = ValueList Prelude.Text
  set newValue ManifestServiceInteractionLogProperty {..}
    = ManifestServiceInteractionLogProperty
        {excludeEventTypes = Prelude.pure newValue, ..}