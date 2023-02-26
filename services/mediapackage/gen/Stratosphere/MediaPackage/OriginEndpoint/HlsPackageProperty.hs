module Stratosphere.MediaPackage.OriginEndpoint.HlsPackageProperty (
        module Exports, HlsPackageProperty(..), mkHlsPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.HlsEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsPackageProperty
  = HlsPackageProperty {adMarkers :: (Prelude.Maybe (Value Prelude.Text)),
                        adTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
                        adsOnDeliveryRestrictions :: (Prelude.Maybe (Value Prelude.Text)),
                        encryption :: (Prelude.Maybe HlsEncryptionProperty),
                        includeDvbSubtitles :: (Prelude.Maybe (Value Prelude.Bool)),
                        includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                        playlistType :: (Prelude.Maybe (Value Prelude.Text)),
                        playlistWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        streamSelection :: (Prelude.Maybe StreamSelectionProperty),
                        useAudioRenditionGroup :: (Prelude.Maybe (Value Prelude.Bool))}
mkHlsPackageProperty :: HlsPackageProperty
mkHlsPackageProperty
  = HlsPackageProperty
      {adMarkers = Prelude.Nothing, adTriggers = Prelude.Nothing,
       adsOnDeliveryRestrictions = Prelude.Nothing,
       encryption = Prelude.Nothing,
       includeDvbSubtitles = Prelude.Nothing,
       includeIframeOnlyStream = Prelude.Nothing,
       playlistType = Prelude.Nothing,
       playlistWindowSeconds = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       streamSelection = Prelude.Nothing,
       useAudioRenditionGroup = Prelude.Nothing}
instance ToResourceProperties HlsPackageProperty where
  toResourceProperties HlsPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.HlsPackage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                            (JSON..=) "AdTriggers" Prelude.<$> adTriggers,
                            (JSON..=) "AdsOnDeliveryRestrictions"
                              Prelude.<$> adsOnDeliveryRestrictions,
                            (JSON..=) "Encryption" Prelude.<$> encryption,
                            (JSON..=) "IncludeDvbSubtitles" Prelude.<$> includeDvbSubtitles,
                            (JSON..=) "IncludeIframeOnlyStream"
                              Prelude.<$> includeIframeOnlyStream,
                            (JSON..=) "PlaylistType" Prelude.<$> playlistType,
                            (JSON..=) "PlaylistWindowSeconds"
                              Prelude.<$> playlistWindowSeconds,
                            (JSON..=) "ProgramDateTimeIntervalSeconds"
                              Prelude.<$> programDateTimeIntervalSeconds,
                            (JSON..=) "SegmentDurationSeconds"
                              Prelude.<$> segmentDurationSeconds,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection,
                            (JSON..=) "UseAudioRenditionGroup"
                              Prelude.<$> useAudioRenditionGroup])}
instance JSON.ToJSON HlsPackageProperty where
  toJSON HlsPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
               (JSON..=) "AdTriggers" Prelude.<$> adTriggers,
               (JSON..=) "AdsOnDeliveryRestrictions"
                 Prelude.<$> adsOnDeliveryRestrictions,
               (JSON..=) "Encryption" Prelude.<$> encryption,
               (JSON..=) "IncludeDvbSubtitles" Prelude.<$> includeDvbSubtitles,
               (JSON..=) "IncludeIframeOnlyStream"
                 Prelude.<$> includeIframeOnlyStream,
               (JSON..=) "PlaylistType" Prelude.<$> playlistType,
               (JSON..=) "PlaylistWindowSeconds"
                 Prelude.<$> playlistWindowSeconds,
               (JSON..=) "ProgramDateTimeIntervalSeconds"
                 Prelude.<$> programDateTimeIntervalSeconds,
               (JSON..=) "SegmentDurationSeconds"
                 Prelude.<$> segmentDurationSeconds,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection,
               (JSON..=) "UseAudioRenditionGroup"
                 Prelude.<$> useAudioRenditionGroup]))
instance Property "AdMarkers" HlsPackageProperty where
  type PropertyType "AdMarkers" HlsPackageProperty = Value Prelude.Text
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {adMarkers = Prelude.pure newValue, ..}
instance Property "AdTriggers" HlsPackageProperty where
  type PropertyType "AdTriggers" HlsPackageProperty = ValueList Prelude.Text
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {adTriggers = Prelude.pure newValue, ..}
instance Property "AdsOnDeliveryRestrictions" HlsPackageProperty where
  type PropertyType "AdsOnDeliveryRestrictions" HlsPackageProperty = Value Prelude.Text
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {adsOnDeliveryRestrictions = Prelude.pure newValue, ..}
instance Property "Encryption" HlsPackageProperty where
  type PropertyType "Encryption" HlsPackageProperty = HlsEncryptionProperty
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "IncludeDvbSubtitles" HlsPackageProperty where
  type PropertyType "IncludeDvbSubtitles" HlsPackageProperty = Value Prelude.Bool
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {includeDvbSubtitles = Prelude.pure newValue, ..}
instance Property "IncludeIframeOnlyStream" HlsPackageProperty where
  type PropertyType "IncludeIframeOnlyStream" HlsPackageProperty = Value Prelude.Bool
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {includeIframeOnlyStream = Prelude.pure newValue, ..}
instance Property "PlaylistType" HlsPackageProperty where
  type PropertyType "PlaylistType" HlsPackageProperty = Value Prelude.Text
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {playlistType = Prelude.pure newValue, ..}
instance Property "PlaylistWindowSeconds" HlsPackageProperty where
  type PropertyType "PlaylistWindowSeconds" HlsPackageProperty = Value Prelude.Integer
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {playlistWindowSeconds = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" HlsPackageProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" HlsPackageProperty = Value Prelude.Integer
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" HlsPackageProperty where
  type PropertyType "SegmentDurationSeconds" HlsPackageProperty = Value Prelude.Integer
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "StreamSelection" HlsPackageProperty where
  type PropertyType "StreamSelection" HlsPackageProperty = StreamSelectionProperty
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {streamSelection = Prelude.pure newValue, ..}
instance Property "UseAudioRenditionGroup" HlsPackageProperty where
  type PropertyType "UseAudioRenditionGroup" HlsPackageProperty = Value Prelude.Bool
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {useAudioRenditionGroup = Prelude.pure newValue, ..}