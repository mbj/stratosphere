module Stratosphere.MediaPackageV2.OriginEndpoint.SegmentProperty (
        module Exports, SegmentProperty(..), mkSegmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ScteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SegmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html>
    SegmentProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-encryption>
                     encryption :: (Prelude.Maybe EncryptionProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-includeiframeonlystreams>
                     includeIframeOnlyStreams :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-scte>
                     scte :: (Prelude.Maybe ScteProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-segmentdurationseconds>
                     segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-segmentname>
                     segmentName :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-tsincludedvbsubtitles>
                     tsIncludeDvbSubtitles :: (Prelude.Maybe (Value Prelude.Bool)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-segment.html#cfn-mediapackagev2-originendpoint-segment-tsuseaudiorenditiongroup>
                     tsUseAudioRenditionGroup :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSegmentProperty :: SegmentProperty
mkSegmentProperty
  = SegmentProperty
      {haddock_workaround_ = (), encryption = Prelude.Nothing,
       includeIframeOnlyStreams = Prelude.Nothing, scte = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       segmentName = Prelude.Nothing,
       tsIncludeDvbSubtitles = Prelude.Nothing,
       tsUseAudioRenditionGroup = Prelude.Nothing}
instance ToResourceProperties SegmentProperty where
  toResourceProperties SegmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.Segment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encryption" Prelude.<$> encryption,
                            (JSON..=) "IncludeIframeOnlyStreams"
                              Prelude.<$> includeIframeOnlyStreams,
                            (JSON..=) "Scte" Prelude.<$> scte,
                            (JSON..=) "SegmentDurationSeconds"
                              Prelude.<$> segmentDurationSeconds,
                            (JSON..=) "SegmentName" Prelude.<$> segmentName,
                            (JSON..=) "TsIncludeDvbSubtitles"
                              Prelude.<$> tsIncludeDvbSubtitles,
                            (JSON..=) "TsUseAudioRenditionGroup"
                              Prelude.<$> tsUseAudioRenditionGroup])}
instance JSON.ToJSON SegmentProperty where
  toJSON SegmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encryption" Prelude.<$> encryption,
               (JSON..=) "IncludeIframeOnlyStreams"
                 Prelude.<$> includeIframeOnlyStreams,
               (JSON..=) "Scte" Prelude.<$> scte,
               (JSON..=) "SegmentDurationSeconds"
                 Prelude.<$> segmentDurationSeconds,
               (JSON..=) "SegmentName" Prelude.<$> segmentName,
               (JSON..=) "TsIncludeDvbSubtitles"
                 Prelude.<$> tsIncludeDvbSubtitles,
               (JSON..=) "TsUseAudioRenditionGroup"
                 Prelude.<$> tsUseAudioRenditionGroup]))
instance Property "Encryption" SegmentProperty where
  type PropertyType "Encryption" SegmentProperty = EncryptionProperty
  set newValue SegmentProperty {..}
    = SegmentProperty {encryption = Prelude.pure newValue, ..}
instance Property "IncludeIframeOnlyStreams" SegmentProperty where
  type PropertyType "IncludeIframeOnlyStreams" SegmentProperty = Value Prelude.Bool
  set newValue SegmentProperty {..}
    = SegmentProperty
        {includeIframeOnlyStreams = Prelude.pure newValue, ..}
instance Property "Scte" SegmentProperty where
  type PropertyType "Scte" SegmentProperty = ScteProperty
  set newValue SegmentProperty {..}
    = SegmentProperty {scte = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" SegmentProperty where
  type PropertyType "SegmentDurationSeconds" SegmentProperty = Value Prelude.Integer
  set newValue SegmentProperty {..}
    = SegmentProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "SegmentName" SegmentProperty where
  type PropertyType "SegmentName" SegmentProperty = Value Prelude.Text
  set newValue SegmentProperty {..}
    = SegmentProperty {segmentName = Prelude.pure newValue, ..}
instance Property "TsIncludeDvbSubtitles" SegmentProperty where
  type PropertyType "TsIncludeDvbSubtitles" SegmentProperty = Value Prelude.Bool
  set newValue SegmentProperty {..}
    = SegmentProperty
        {tsIncludeDvbSubtitles = Prelude.pure newValue, ..}
instance Property "TsUseAudioRenditionGroup" SegmentProperty where
  type PropertyType "TsUseAudioRenditionGroup" SegmentProperty = Value Prelude.Bool
  set newValue SegmentProperty {..}
    = SegmentProperty
        {tsUseAudioRenditionGroup = Prelude.pure newValue, ..}