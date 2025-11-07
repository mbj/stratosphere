module Stratosphere.MediaPackageV2.OriginEndpoint.DashDvbSettingsProperty (
        module Exports, DashDvbSettingsProperty(..),
        mkDashDvbSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.DashDvbFontDownloadProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.DashDvbMetricsReportingProperty as Exports
import Stratosphere.ResourceProperties
data DashDvbSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html>
    DashDvbSettingsProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html#cfn-mediapackagev2-originendpoint-dashdvbsettings-errormetrics>
                             errorMetrics :: (Prelude.Maybe [DashDvbMetricsReportingProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbsettings.html#cfn-mediapackagev2-originendpoint-dashdvbsettings-fontdownload>
                             fontDownload :: (Prelude.Maybe DashDvbFontDownloadProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashDvbSettingsProperty :: DashDvbSettingsProperty
mkDashDvbSettingsProperty
  = DashDvbSettingsProperty
      {haddock_workaround_ = (), errorMetrics = Prelude.Nothing,
       fontDownload = Prelude.Nothing}
instance ToResourceProperties DashDvbSettingsProperty where
  toResourceProperties DashDvbSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashDvbSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorMetrics" Prelude.<$> errorMetrics,
                            (JSON..=) "FontDownload" Prelude.<$> fontDownload])}
instance JSON.ToJSON DashDvbSettingsProperty where
  toJSON DashDvbSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorMetrics" Prelude.<$> errorMetrics,
               (JSON..=) "FontDownload" Prelude.<$> fontDownload]))
instance Property "ErrorMetrics" DashDvbSettingsProperty where
  type PropertyType "ErrorMetrics" DashDvbSettingsProperty = [DashDvbMetricsReportingProperty]
  set newValue DashDvbSettingsProperty {..}
    = DashDvbSettingsProperty
        {errorMetrics = Prelude.pure newValue, ..}
instance Property "FontDownload" DashDvbSettingsProperty where
  type PropertyType "FontDownload" DashDvbSettingsProperty = DashDvbFontDownloadProperty
  set newValue DashDvbSettingsProperty {..}
    = DashDvbSettingsProperty
        {fontDownload = Prelude.pure newValue, ..}