module Stratosphere.MediaTailor.PlaybackConfiguration.ManifestProcessingRulesProperty (
        module Exports, ManifestProcessingRulesProperty(..),
        mkManifestProcessingRulesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaTailor.PlaybackConfiguration.AdMarkerPassthroughProperty as Exports
import Stratosphere.ResourceProperties
data ManifestProcessingRulesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-manifestprocessingrules.html>
    ManifestProcessingRulesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediatailor-playbackconfiguration-manifestprocessingrules.html#cfn-mediatailor-playbackconfiguration-manifestprocessingrules-admarkerpassthrough>
                                     adMarkerPassthrough :: (Prelude.Maybe AdMarkerPassthroughProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManifestProcessingRulesProperty ::
  ManifestProcessingRulesProperty
mkManifestProcessingRulesProperty
  = ManifestProcessingRulesProperty
      {haddock_workaround_ = (), adMarkerPassthrough = Prelude.Nothing}
instance ToResourceProperties ManifestProcessingRulesProperty where
  toResourceProperties ManifestProcessingRulesProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaTailor::PlaybackConfiguration.ManifestProcessingRules",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkerPassthrough" Prelude.<$> adMarkerPassthrough])}
instance JSON.ToJSON ManifestProcessingRulesProperty where
  toJSON ManifestProcessingRulesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkerPassthrough" Prelude.<$> adMarkerPassthrough]))
instance Property "AdMarkerPassthrough" ManifestProcessingRulesProperty where
  type PropertyType "AdMarkerPassthrough" ManifestProcessingRulesProperty = AdMarkerPassthroughProperty
  set newValue ManifestProcessingRulesProperty {..}
    = ManifestProcessingRulesProperty
        {adMarkerPassthrough = Prelude.pure newValue, ..}