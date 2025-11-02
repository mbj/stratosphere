module Stratosphere.MediaPackageV2.OriginEndpoint.LowLatencyHlsManifestConfigurationProperty (
        module Exports, LowLatencyHlsManifestConfigurationProperty(..),
        mkLowLatencyHlsManifestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ScteHlsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.StartTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LowLatencyHlsManifestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html>
    LowLatencyHlsManifestConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-childmanifestname>
                                                childManifestName :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-filterconfiguration>
                                                filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-manifestname>
                                                manifestName :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-manifestwindowseconds>
                                                manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-programdatetimeintervalseconds>
                                                programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-sctehls>
                                                scteHls :: (Prelude.Maybe ScteHlsProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-starttag>
                                                startTag :: (Prelude.Maybe StartTagProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-lowlatencyhlsmanifestconfiguration-url>
                                                url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLowLatencyHlsManifestConfigurationProperty ::
  Value Prelude.Text -> LowLatencyHlsManifestConfigurationProperty
mkLowLatencyHlsManifestConfigurationProperty manifestName
  = LowLatencyHlsManifestConfigurationProperty
      {haddock_workaround_ = (), manifestName = manifestName,
       childManifestName = Prelude.Nothing,
       filterConfiguration = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       scteHls = Prelude.Nothing, startTag = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties LowLatencyHlsManifestConfigurationProperty where
  toResourceProperties
    LowLatencyHlsManifestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.LowLatencyHlsManifestConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ManifestName" JSON..= manifestName]
                           (Prelude.catMaybes
                              [(JSON..=) "ChildManifestName" Prelude.<$> childManifestName,
                               (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                               (JSON..=) "ManifestWindowSeconds"
                                 Prelude.<$> manifestWindowSeconds,
                               (JSON..=) "ProgramDateTimeIntervalSeconds"
                                 Prelude.<$> programDateTimeIntervalSeconds,
                               (JSON..=) "ScteHls" Prelude.<$> scteHls,
                               (JSON..=) "StartTag" Prelude.<$> startTag,
                               (JSON..=) "Url" Prelude.<$> url]))}
instance JSON.ToJSON LowLatencyHlsManifestConfigurationProperty where
  toJSON LowLatencyHlsManifestConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ManifestName" JSON..= manifestName]
              (Prelude.catMaybes
                 [(JSON..=) "ChildManifestName" Prelude.<$> childManifestName,
                  (JSON..=) "FilterConfiguration" Prelude.<$> filterConfiguration,
                  (JSON..=) "ManifestWindowSeconds"
                    Prelude.<$> manifestWindowSeconds,
                  (JSON..=) "ProgramDateTimeIntervalSeconds"
                    Prelude.<$> programDateTimeIntervalSeconds,
                  (JSON..=) "ScteHls" Prelude.<$> scteHls,
                  (JSON..=) "StartTag" Prelude.<$> startTag,
                  (JSON..=) "Url" Prelude.<$> url])))
instance Property "ChildManifestName" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "ChildManifestName" LowLatencyHlsManifestConfigurationProperty = Value Prelude.Text
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {childManifestName = Prelude.pure newValue, ..}
instance Property "FilterConfiguration" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "FilterConfiguration" LowLatencyHlsManifestConfigurationProperty = FilterConfigurationProperty
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestName" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "ManifestName" LowLatencyHlsManifestConfigurationProperty = Value Prelude.Text
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {manifestName = newValue, ..}
instance Property "ManifestWindowSeconds" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "ManifestWindowSeconds" LowLatencyHlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" LowLatencyHlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "ScteHls" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "ScteHls" LowLatencyHlsManifestConfigurationProperty = ScteHlsProperty
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {scteHls = Prelude.pure newValue, ..}
instance Property "StartTag" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "StartTag" LowLatencyHlsManifestConfigurationProperty = StartTagProperty
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {startTag = Prelude.pure newValue, ..}
instance Property "Url" LowLatencyHlsManifestConfigurationProperty where
  type PropertyType "Url" LowLatencyHlsManifestConfigurationProperty = Value Prelude.Text
  set newValue LowLatencyHlsManifestConfigurationProperty {..}
    = LowLatencyHlsManifestConfigurationProperty
        {url = Prelude.pure newValue, ..}