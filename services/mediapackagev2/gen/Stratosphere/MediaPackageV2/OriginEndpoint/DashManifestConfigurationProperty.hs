module Stratosphere.MediaPackageV2.OriginEndpoint.DashManifestConfigurationProperty (
        module Exports, DashManifestConfigurationProperty(..),
        mkDashManifestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.DashUtcTimingProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ScteDashProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashManifestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html>
    DashManifestConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-drmsignaling>
                                       drmSignaling :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-filterconfiguration>
                                       filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-manifestname>
                                       manifestName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-manifestwindowseconds>
                                       manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-minbuffertimeseconds>
                                       minBufferTimeSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-minupdateperiodseconds>
                                       minUpdatePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-periodtriggers>
                                       periodTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-sctedash>
                                       scteDash :: (Prelude.Maybe ScteDashProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-segmenttemplateformat>
                                       segmentTemplateFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-suggestedpresentationdelayseconds>
                                       suggestedPresentationDelaySeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-dashmanifestconfiguration-utctiming>
                                       utcTiming :: (Prelude.Maybe DashUtcTimingProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashManifestConfigurationProperty ::
  Value Prelude.Text -> DashManifestConfigurationProperty
mkDashManifestConfigurationProperty manifestName
  = DashManifestConfigurationProperty
      {haddock_workaround_ = (), manifestName = manifestName,
       drmSignaling = Prelude.Nothing,
       filterConfiguration = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       minBufferTimeSeconds = Prelude.Nothing,
       minUpdatePeriodSeconds = Prelude.Nothing,
       periodTriggers = Prelude.Nothing, scteDash = Prelude.Nothing,
       segmentTemplateFormat = Prelude.Nothing,
       suggestedPresentationDelaySeconds = Prelude.Nothing,
       utcTiming = Prelude.Nothing}
instance ToResourceProperties DashManifestConfigurationProperty where
  toResourceProperties DashManifestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashManifestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestName" JSON..= manifestName]
                           (Prelude.catMaybes
                              [(JSON..=) "DrmSignaling" Prelude.<$> drmSignaling,
                               (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                               (JSON..=) "ManifestWindowSeconds"
                                 Prelude.<$> manifestWindowSeconds,
                               (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
                               (JSON..=) "MinUpdatePeriodSeconds"
                                 Prelude.<$> minUpdatePeriodSeconds,
                               (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
                               (JSON..=) "ScteDash" Prelude.<$> scteDash,
                               (JSON..=) "SegmentTemplateFormat"
                                 Prelude.<$> segmentTemplateFormat,
                               (JSON..=) "SuggestedPresentationDelaySeconds"
                                 Prelude.<$> suggestedPresentationDelaySeconds,
                               (JSON..=) "UtcTiming" Prelude.<$> utcTiming]))}
instance JSON.ToJSON DashManifestConfigurationProperty where
  toJSON DashManifestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestName" JSON..= manifestName]
              (Prelude.catMaybes
                 [(JSON..=) "DrmSignaling" Prelude.<$> drmSignaling,
                  (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                  (JSON..=) "ManifestWindowSeconds"
                    Prelude.<$> manifestWindowSeconds,
                  (JSON..=) "MinBufferTimeSeconds" Prelude.<$> minBufferTimeSeconds,
                  (JSON..=) "MinUpdatePeriodSeconds"
                    Prelude.<$> minUpdatePeriodSeconds,
                  (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
                  (JSON..=) "ScteDash" Prelude.<$> scteDash,
                  (JSON..=) "SegmentTemplateFormat"
                    Prelude.<$> segmentTemplateFormat,
                  (JSON..=) "SuggestedPresentationDelaySeconds"
                    Prelude.<$> suggestedPresentationDelaySeconds,
                  (JSON..=) "UtcTiming" Prelude.<$> utcTiming])))
instance Property "DrmSignaling" DashManifestConfigurationProperty where
  type PropertyType "DrmSignaling" DashManifestConfigurationProperty = Value Prelude.Text
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {drmSignaling = Prelude.pure newValue, ..}
instance Property "FilterConfiguration" DashManifestConfigurationProperty where
  type PropertyType "FilterConfiguration" DashManifestConfigurationProperty = FilterConfigurationProperty
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestName" DashManifestConfigurationProperty where
  type PropertyType "ManifestName" DashManifestConfigurationProperty = Value Prelude.Text
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty {manifestName = newValue, ..}
instance Property "ManifestWindowSeconds" DashManifestConfigurationProperty where
  type PropertyType "ManifestWindowSeconds" DashManifestConfigurationProperty = Value Prelude.Integer
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "MinBufferTimeSeconds" DashManifestConfigurationProperty where
  type PropertyType "MinBufferTimeSeconds" DashManifestConfigurationProperty = Value Prelude.Integer
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {minBufferTimeSeconds = Prelude.pure newValue, ..}
instance Property "MinUpdatePeriodSeconds" DashManifestConfigurationProperty where
  type PropertyType "MinUpdatePeriodSeconds" DashManifestConfigurationProperty = Value Prelude.Integer
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {minUpdatePeriodSeconds = Prelude.pure newValue, ..}
instance Property "PeriodTriggers" DashManifestConfigurationProperty where
  type PropertyType "PeriodTriggers" DashManifestConfigurationProperty = ValueList Prelude.Text
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {periodTriggers = Prelude.pure newValue, ..}
instance Property "ScteDash" DashManifestConfigurationProperty where
  type PropertyType "ScteDash" DashManifestConfigurationProperty = ScteDashProperty
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {scteDash = Prelude.pure newValue, ..}
instance Property "SegmentTemplateFormat" DashManifestConfigurationProperty where
  type PropertyType "SegmentTemplateFormat" DashManifestConfigurationProperty = Value Prelude.Text
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {segmentTemplateFormat = Prelude.pure newValue, ..}
instance Property "SuggestedPresentationDelaySeconds" DashManifestConfigurationProperty where
  type PropertyType "SuggestedPresentationDelaySeconds" DashManifestConfigurationProperty = Value Prelude.Integer
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {suggestedPresentationDelaySeconds = Prelude.pure newValue, ..}
instance Property "UtcTiming" DashManifestConfigurationProperty where
  type PropertyType "UtcTiming" DashManifestConfigurationProperty = DashUtcTimingProperty
  set newValue DashManifestConfigurationProperty {..}
    = DashManifestConfigurationProperty
        {utcTiming = Prelude.pure newValue, ..}