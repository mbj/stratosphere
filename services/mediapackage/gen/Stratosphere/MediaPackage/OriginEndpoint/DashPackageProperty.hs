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
  = DashPackageProperty {adTriggers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                         adsOnDeliveryRestrictions :: (Prelude.Maybe (Value Prelude.Text)),
                         encryption :: (Prelude.Maybe DashEncryptionProperty),
                         includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                         manifestLayout :: (Prelude.Maybe (Value Prelude.Text)),
                         manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         minBufferTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         minUpdatePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         periodTriggers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                         profile :: (Prelude.Maybe (Value Prelude.Text)),
                         segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         segmentTemplateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty),
                         suggestedPresentationDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         utcTiming :: (Prelude.Maybe (Value Prelude.Text)),
                         utcTimingUri :: (Prelude.Maybe (Value Prelude.Text))}
mkDashPackageProperty :: DashPackageProperty
mkDashPackageProperty
  = DashPackageProperty
      {adTriggers = Prelude.Nothing,
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
  type PropertyType "AdTriggers" DashPackageProperty = ValueList (Value Prelude.Text)
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
  type PropertyType "PeriodTriggers" DashPackageProperty = ValueList (Value Prelude.Text)
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