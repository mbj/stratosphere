module Stratosphere.MediaPackage.PackagingConfiguration.HlsPackageProperty (
        module Exports, HlsPackageProperty(..), mkHlsPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.HlsEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.HlsManifestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsPackageProperty
  = HlsPackageProperty {encryption :: (Prelude.Maybe HlsEncryptionProperty),
                        hlsManifests :: [HlsManifestProperty],
                        includeDvbSubtitles :: (Prelude.Maybe (Value Prelude.Bool)),
                        segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        useAudioRenditionGroup :: (Prelude.Maybe (Value Prelude.Bool))}
mkHlsPackageProperty :: [HlsManifestProperty] -> HlsPackageProperty
mkHlsPackageProperty hlsManifests
  = HlsPackageProperty
      {hlsManifests = hlsManifests, encryption = Prelude.Nothing,
       includeDvbSubtitles = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       useAudioRenditionGroup = Prelude.Nothing}
instance ToResourceProperties HlsPackageProperty where
  toResourceProperties HlsPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.HlsPackage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HlsManifests" JSON..= hlsManifests]
                           (Prelude.catMaybes
                              [(JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "IncludeDvbSubtitles" Prelude.<$> includeDvbSubtitles,
                               (JSON..=) "SegmentDurationSeconds"
                                 Prelude.<$> segmentDurationSeconds,
                               (JSON..=) "UseAudioRenditionGroup"
                                 Prelude.<$> useAudioRenditionGroup]))}
instance JSON.ToJSON HlsPackageProperty where
  toJSON HlsPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HlsManifests" JSON..= hlsManifests]
              (Prelude.catMaybes
                 [(JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "IncludeDvbSubtitles" Prelude.<$> includeDvbSubtitles,
                  (JSON..=) "SegmentDurationSeconds"
                    Prelude.<$> segmentDurationSeconds,
                  (JSON..=) "UseAudioRenditionGroup"
                    Prelude.<$> useAudioRenditionGroup])))
instance Property "Encryption" HlsPackageProperty where
  type PropertyType "Encryption" HlsPackageProperty = HlsEncryptionProperty
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "HlsManifests" HlsPackageProperty where
  type PropertyType "HlsManifests" HlsPackageProperty = [HlsManifestProperty]
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty {hlsManifests = newValue, ..}
instance Property "IncludeDvbSubtitles" HlsPackageProperty where
  type PropertyType "IncludeDvbSubtitles" HlsPackageProperty = Value Prelude.Bool
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {includeDvbSubtitles = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" HlsPackageProperty where
  type PropertyType "SegmentDurationSeconds" HlsPackageProperty = Value Prelude.Integer
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "UseAudioRenditionGroup" HlsPackageProperty where
  type PropertyType "UseAudioRenditionGroup" HlsPackageProperty = Value Prelude.Bool
  set newValue HlsPackageProperty {..}
    = HlsPackageProperty
        {useAudioRenditionGroup = Prelude.pure newValue, ..}