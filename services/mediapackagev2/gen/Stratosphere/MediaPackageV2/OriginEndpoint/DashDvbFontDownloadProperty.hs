module Stratosphere.MediaPackageV2.OriginEndpoint.DashDvbFontDownloadProperty (
        DashDvbFontDownloadProperty(..), mkDashDvbFontDownloadProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashDvbFontDownloadProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbfontdownload.html>
    DashDvbFontDownloadProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbfontdownload.html#cfn-mediapackagev2-originendpoint-dashdvbfontdownload-fontfamily>
                                 fontFamily :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbfontdownload.html#cfn-mediapackagev2-originendpoint-dashdvbfontdownload-mimetype>
                                 mimeType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-dashdvbfontdownload.html#cfn-mediapackagev2-originendpoint-dashdvbfontdownload-url>
                                 url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashDvbFontDownloadProperty :: DashDvbFontDownloadProperty
mkDashDvbFontDownloadProperty
  = DashDvbFontDownloadProperty
      {haddock_workaround_ = (), fontFamily = Prelude.Nothing,
       mimeType = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties DashDvbFontDownloadProperty where
  toResourceProperties DashDvbFontDownloadProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.DashDvbFontDownload",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontFamily" Prelude.<$> fontFamily,
                            (JSON..=) "MimeType" Prelude.<$> mimeType,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON DashDvbFontDownloadProperty where
  toJSON DashDvbFontDownloadProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontFamily" Prelude.<$> fontFamily,
               (JSON..=) "MimeType" Prelude.<$> mimeType,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "FontFamily" DashDvbFontDownloadProperty where
  type PropertyType "FontFamily" DashDvbFontDownloadProperty = Value Prelude.Text
  set newValue DashDvbFontDownloadProperty {..}
    = DashDvbFontDownloadProperty
        {fontFamily = Prelude.pure newValue, ..}
instance Property "MimeType" DashDvbFontDownloadProperty where
  type PropertyType "MimeType" DashDvbFontDownloadProperty = Value Prelude.Text
  set newValue DashDvbFontDownloadProperty {..}
    = DashDvbFontDownloadProperty
        {mimeType = Prelude.pure newValue, ..}
instance Property "Url" DashDvbFontDownloadProperty where
  type PropertyType "Url" DashDvbFontDownloadProperty = Value Prelude.Text
  set newValue DashDvbFontDownloadProperty {..}
    = DashDvbFontDownloadProperty {url = Prelude.pure newValue, ..}