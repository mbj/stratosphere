module Stratosphere.MediaPackage.OriginEndpoint.DashPackageProperty (
        module Exports, DashPackageProperty(..), mkDashPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.DashEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashPackageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html>
    DashPackageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-adtriggers>
                         adTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-adsondeliveryrestrictions>
                         adsOnDeliveryRestrictions :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-encryption>
                         encryption :: (Prelude.Maybe DashEncryptionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-includeiframeonlystream>
                         includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-manifestlayout>
                         manifestLayout :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-manifestwindowseconds>
                         manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-minbuffertimeseconds>
                         minBufferTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-minupdateperiodseconds>
                         minUpdatePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-periodtriggers>
                         periodTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-profile>
                         profile :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-segmentdurationseconds>
                         segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-segmenttemplateformat>
                         segmentTemplateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-streamselection>
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-suggestedpresentationdelayseconds>
                         suggestedPresentationDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-utctiming>
                         utcTiming :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-dashpackage.html#cfn-mediapackage-originendpoint-dashpackage-utctiminguri>
                         utcTimingUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashPackageProperty :: DashPackageProperty
mkDashPackageProperty
  = DashPackageProperty
      {haddock_workaround_ = (), adTriggers = Prelude.Nothing,
       adsOnDeliveryRestrictions = Prelude.Nothing,
       encryption = Prelude.Nothing,
       includeIframeOnlyStream = Prelude.Nothing,
       manifestLayout = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       minBufferTimeSeconds = Prelude.Nothing,
       minUpdatePeriodSeconds = Prelude.Nothing,
       periodTriggers = Prelude.Nothing, profile = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       segmentTemplateFormat = Prelude.Nothing,
       streamSelection = Prelude.Nothing,
       suggestedPresentationDelaySeconds = Prelude.Nothing,
       utcTiming = Prelude.Nothing, utcTimingUri = Prelude.Nothing}
instance ToResourceProperties DashPackageProperty where
  toResourceProperties DashPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.DashPackage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdTriggers" Prelude.<$> adTriggers,
                            (JSON..=) "AdsOnDeliveryRestrictions"
                              Prelude.<$> adsOnDeliveryRestrictions,
                            (JSON..=) "Encryption" Prelude.<$> encryption,
                            (JSON..=) "IncludeIframeOnlyStream"
                              Prelude.<$> includeIframeOnlyStream,
                            (JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
                            (JSON..=) "ManifestWindowSeconds"
                              Prelude.<$> manifestWindowSeconds,
                            (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
                            (JSON..=) "MinUpdatePeriodSeconds"
                              Prelude.<$> minUpdatePeriodSeconds,
                            (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
                            (JSON..=) "Profile" Prelude.<$> profile,
                            (JSON..=) "SegmentDurationSeconds"
                              Prelude.<$> segmentDurationSeconds,
                            (JSON..=) "SegmentTemplateFormat"
                              Prelude.<$> segmentTemplateFormat,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection,
                            (JSON..=) "SuggestedPresentationDelaySeconds"
                              Prelude.<$> suggestedPresentationDelaySeconds,
                            (JSON..=) "UtcTiming" Prelude.<$> utcTiming,
                            (JSON..=) "UtcTimingUri" Prelude.<$> utcTimingUri])}
instance JSON.ToJSON DashPackageProperty where
  toJSON DashPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdTriggers" Prelude.<$> adTriggers,
               (JSON..=) "AdsOnDeliveryRestrictions"
                 Prelude.<$> adsOnDeliveryRestrictions,
               (JSON..=) "Encryption" Prelude.<$> encryption,
               (JSON..=) "IncludeIframeOnlyStream"
                 Prelude.<$> includeIframeOnlyStream,
               (JSON..=) "ManifestLayout" Prelude.<$> manifestLayout,
               (JSON..=) "ManifestWindowSeconds"
                 Prelude.<$> manifestWindowSeconds,
               (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
               (JSON..=) "MinUpdatePeriodSeconds"
                 Prelude.<$> minUpdatePeriodSeconds,
               (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
               (JSON..=) "Profile" Prelude.<$> profile,
               (JSON..=) "SegmentDurationSeconds"
                 Prelude.<$> segmentDurationSeconds,
               (JSON..=) "SegmentTemplateFormat"
                 Prelude.<$> segmentTemplateFormat,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection,
               (JSON..=) "SuggestedPresentationDelaySeconds"
                 Prelude.<$> suggestedPresentationDelaySeconds,
               (JSON..=) "UtcTiming" Prelude.<$> utcTiming,
               (JSON..=) "UtcTimingUri" Prelude.<$> utcTimingUri]))
instance Property "AdTriggers" DashPackageProperty where
  type PropertyType "AdTriggers" DashPackageProperty = ValueList Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {adTriggers = Prelude.pure newValue, ..}
instance Property "AdsOnDeliveryRestrictions" DashPackageProperty where
  type PropertyType "AdsOnDeliveryRestrictions" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {adsOnDeliveryRestrictions = Prelude.pure newValue, ..}
instance Property "Encryption" DashPackageProperty where
  type PropertyType "Encryption" DashPackageProperty = DashEncryptionProperty
  set newValue DashPackageProperty {..}
    = DashPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "IncludeIframeOnlyStream" DashPackageProperty where
  type PropertyType "IncludeIframeOnlyStream" DashPackageProperty = Value Prelude.Bool
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {includeIframeOnlyStream = Prelude.pure newValue, ..}
instance Property "ManifestLayout" DashPackageProperty where
  type PropertyType "ManifestLayout" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {manifestLayout = Prelude.pure newValue, ..}
instance Property "ManifestWindowSeconds" DashPackageProperty where
  type PropertyType "ManifestWindowSeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "MinBufferTimeSeconds" DashPackageProperty where
  type PropertyType "MinBufferTimeSeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {minBufferTimeSeconds = Prelude.pure newValue, ..}
instance Property "MinUpdatePeriodSeconds" DashPackageProperty where
  type PropertyType "MinUpdatePeriodSeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {minUpdatePeriodSeconds = Prelude.pure newValue, ..}
instance Property "PeriodTriggers" DashPackageProperty where
  type PropertyType "PeriodTriggers" DashPackageProperty = ValueList Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {periodTriggers = Prelude.pure newValue, ..}
instance Property "Profile" DashPackageProperty where
  type PropertyType "Profile" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {profile = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" DashPackageProperty where
  type PropertyType "SegmentDurationSeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "SegmentTemplateFormat" DashPackageProperty where
  type PropertyType "SegmentTemplateFormat" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {segmentTemplateFormat = Prelude.pure newValue, ..}
instance Property "StreamSelection" DashPackageProperty where
  type PropertyType "StreamSelection" DashPackageProperty = StreamSelectionProperty
  set newValue DashPackageProperty {..}
    = DashPackageProperty {streamSelection = Prelude.pure newValue, ..}
instance Property "SuggestedPresentationDelaySeconds" DashPackageProperty where
  type PropertyType "SuggestedPresentationDelaySeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {suggestedPresentationDelaySeconds = Prelude.pure newValue, ..}
instance Property "UtcTiming" DashPackageProperty where
  type PropertyType "UtcTiming" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {utcTiming = Prelude.pure newValue, ..}
instance Property "UtcTimingUri" DashPackageProperty where
  type PropertyType "UtcTimingUri" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty {utcTimingUri = Prelude.pure newValue, ..}