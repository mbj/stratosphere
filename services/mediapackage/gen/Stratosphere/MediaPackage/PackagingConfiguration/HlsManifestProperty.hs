module Stratosphere.MediaPackage.PackagingConfiguration.HlsManifestProperty (
        module Exports, HlsManifestProperty(..), mkHlsManifestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsManifestProperty
  = HlsManifestProperty {adMarkers :: (Prelude.Maybe (Value Prelude.Text)),
                         includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                         manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                         programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         repeatExtXKey :: (Prelude.Maybe (Value Prelude.Bool)),
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
mkHlsManifestProperty :: HlsManifestProperty
mkHlsManifestProperty
  = HlsManifestProperty
      {adMarkers = Prelude.Nothing,
       includeIframeOnlyStream = Prelude.Nothing,
       manifestName = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       repeatExtXKey = Prelude.Nothing, streamSelection = Prelude.Nothing}
instance ToResourceProperties HlsManifestProperty where
  toResourceProperties HlsManifestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.HlsManifest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                            (JSON..=) "IncludeIframeOnlyStream"
                              Prelude.<$> includeIframeOnlyStream,
                            (JSON..=) "ManifestName" Prelude.<$> manifestName,
                            (JSON..=) "ProgramDateTimeIntervalSeconds"
                              Prelude.<$> programDateTimeIntervalSeconds,
                            (JSON..=) "RepeatExtXKey" Prelude.<$> repeatExtXKey,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection])}
instance JSON.ToJSON HlsManifestProperty where
  toJSON HlsManifestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
               (JSON..=) "IncludeIframeOnlyStream"
                 Prelude.<$> includeIframeOnlyStream,
               (JSON..=) "ManifestName" Prelude.<$> manifestName,
               (JSON..=) "ProgramDateTimeIntervalSeconds"
                 Prelude.<$> programDateTimeIntervalSeconds,
               (JSON..=) "RepeatExtXKey" Prelude.<$> repeatExtXKey,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection]))
instance Property "AdMarkers" HlsManifestProperty where
  type PropertyType "AdMarkers" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {adMarkers = Prelude.pure newValue, ..}
instance Property "IncludeIframeOnlyStream" HlsManifestProperty where
  type PropertyType "IncludeIframeOnlyStream" HlsManifestProperty = Value Prelude.Bool
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {includeIframeOnlyStream = Prelude.pure newValue, ..}
instance Property "ManifestName" HlsManifestProperty where
  type PropertyType "ManifestName" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {manifestName = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" HlsManifestProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" HlsManifestProperty = Value Prelude.Integer
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "RepeatExtXKey" HlsManifestProperty where
  type PropertyType "RepeatExtXKey" HlsManifestProperty = Value Prelude.Bool
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {repeatExtXKey = Prelude.pure newValue, ..}
instance Property "StreamSelection" HlsManifestProperty where
  type PropertyType "StreamSelection" HlsManifestProperty = StreamSelectionProperty
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {streamSelection = Prelude.pure newValue, ..}