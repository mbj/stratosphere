module Stratosphere.MediaPackageV2.OriginEndpoint.HlsManifestConfigurationProperty (
        module Exports, HlsManifestConfigurationProperty(..),
        mkHlsManifestConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.FilterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.ScteHlsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.StartTagProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsManifestConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html>
    HlsManifestConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-childmanifestname>
                                      childManifestName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-filterconfiguration>
                                      filterConfiguration :: (Prelude.Maybe FilterConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-manifestname>
                                      manifestName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-manifestwindowseconds>
                                      manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-programdatetimeintervalseconds>
                                      programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-sctehls>
                                      scteHls :: (Prelude.Maybe ScteHlsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-starttag>
                                      startTag :: (Prelude.Maybe StartTagProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-url>
                                      url :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-hlsmanifestconfiguration.html#cfn-mediapackagev2-originendpoint-hlsmanifestconfiguration-urlencodechildmanifest>
                                      urlEncodeChildManifest :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsManifestConfigurationProperty ::
  Value Prelude.Text -> HlsManifestConfigurationProperty
mkHlsManifestConfigurationProperty manifestName
  = HlsManifestConfigurationProperty
      {haddock_workaround_ = (), manifestName = manifestName,
       childManifestName = Prelude.Nothing,
       filterConfiguration = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       scteHls = Prelude.Nothing, startTag = Prelude.Nothing,
       url = Prelude.Nothing, urlEncodeChildManifest = Prelude.Nothing}
instance ToResourceProperties HlsManifestConfigurationProperty where
  toResourceProperties HlsManifestConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.HlsManifestConfiguration",
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
                               (JSON..=) "Url" Prelude.<$> url,
                               (JSON..=) "UrlEncodeChildManifest"
                                 Prelude.<$> urlEncodeChildManifest]))}
instance JSON.ToJSON HlsManifestConfigurationProperty where
  toJSON HlsManifestConfigurationProperty {..}
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
                  (JSON..=) "Url" Prelude.<$> url,
                  (JSON..=) "UrlEncodeChildManifest"
                    Prelude.<$> urlEncodeChildManifest])))
instance Property "ChildManifestName" HlsManifestConfigurationProperty where
  type PropertyType "ChildManifestName" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {childManifestName = Prelude.pure newValue, ..}
instance Property "FilterConfiguration" HlsManifestConfigurationProperty where
  type PropertyType "FilterConfiguration" HlsManifestConfigurationProperty = FilterConfigurationProperty
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {filterConfiguration = Prelude.pure newValue, ..}
instance Property "ManifestName" HlsManifestConfigurationProperty where
  type PropertyType "ManifestName" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty {manifestName = newValue, ..}
instance Property "ManifestWindowSeconds" HlsManifestConfigurationProperty where
  type PropertyType "ManifestWindowSeconds" HlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" HlsManifestConfigurationProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" HlsManifestConfigurationProperty = Value Prelude.Integer
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "ScteHls" HlsManifestConfigurationProperty where
  type PropertyType "ScteHls" HlsManifestConfigurationProperty = ScteHlsProperty
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {scteHls = Prelude.pure newValue, ..}
instance Property "StartTag" HlsManifestConfigurationProperty where
  type PropertyType "StartTag" HlsManifestConfigurationProperty = StartTagProperty
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {startTag = Prelude.pure newValue, ..}
instance Property "Url" HlsManifestConfigurationProperty where
  type PropertyType "Url" HlsManifestConfigurationProperty = Value Prelude.Text
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {url = Prelude.pure newValue, ..}
instance Property "UrlEncodeChildManifest" HlsManifestConfigurationProperty where
  type PropertyType "UrlEncodeChildManifest" HlsManifestConfigurationProperty = Value Prelude.Bool
  set newValue HlsManifestConfigurationProperty {..}
    = HlsManifestConfigurationProperty
        {urlEncodeChildManifest = Prelude.pure newValue, ..}