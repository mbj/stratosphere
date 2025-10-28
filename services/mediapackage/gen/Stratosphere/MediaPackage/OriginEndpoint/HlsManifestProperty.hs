module Stratosphere.MediaPackage.OriginEndpoint.HlsManifestProperty (
        HlsManifestProperty(..), mkHlsManifestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsManifestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html>
    HlsManifestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-admarkers>
                         adMarkers :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-adtriggers>
                         adTriggers :: (Prelude.Maybe (ValueList Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-adsondeliveryrestrictions>
                         adsOnDeliveryRestrictions :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-id>
                         id :: (Value Prelude.Text),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-includeiframeonlystream>
                         includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-manifestname>
                         manifestName :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-playlisttype>
                         playlistType :: (Prelude.Maybe (Value Prelude.Text)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-playlistwindowseconds>
                         playlistWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-programdatetimeintervalseconds>
                         programDateTimeIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-hlsmanifest.html#cfn-mediapackage-originendpoint-hlsmanifest-url>
                         url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsManifestProperty :: Value Prelude.Text -> HlsManifestProperty
mkHlsManifestProperty id
  = HlsManifestProperty
      {id = id, adMarkers = Prelude.Nothing,
       adTriggers = Prelude.Nothing,
       adsOnDeliveryRestrictions = Prelude.Nothing,
       includeIframeOnlyStream = Prelude.Nothing,
       manifestName = Prelude.Nothing, playlistType = Prelude.Nothing,
       playlistWindowSeconds = Prelude.Nothing,
       programDateTimeIntervalSeconds = Prelude.Nothing,
       url = Prelude.Nothing}
instance ToResourceProperties HlsManifestProperty where
  toResourceProperties HlsManifestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.HlsManifest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id]
                           (Prelude.catMaybes
                              [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                               (JSON..=) "AdTriggers" Prelude.<$> adTriggers,
                               (JSON..=) "AdsOnDeliveryRestrictions"
                                 Prelude.<$> adsOnDeliveryRestrictions,
                               (JSON..=) "IncludeIframeOnlyStream"
                                 Prelude.<$> includeIframeOnlyStream,
                               (JSON..=) "ManifestName" Prelude.<$> manifestName,
                               (JSON..=) "PlaylistType" Prelude.<$> playlistType,
                               (JSON..=) "PlaylistWindowSeconds"
                                 Prelude.<$> playlistWindowSeconds,
                               (JSON..=) "ProgramDateTimeIntervalSeconds"
                                 Prelude.<$> programDateTimeIntervalSeconds,
                               (JSON..=) "Url" Prelude.<$> url]))}
instance JSON.ToJSON HlsManifestProperty where
  toJSON HlsManifestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id]
              (Prelude.catMaybes
                 [(JSON..=) "AdMarkers" Prelude.<$> adMarkers,
                  (JSON..=) "AdTriggers" Prelude.<$> adTriggers,
                  (JSON..=) "AdsOnDeliveryRestrictions"
                    Prelude.<$> adsOnDeliveryRestrictions,
                  (JSON..=) "IncludeIframeOnlyStream"
                    Prelude.<$> includeIframeOnlyStream,
                  (JSON..=) "ManifestName" Prelude.<$> manifestName,
                  (JSON..=) "PlaylistType" Prelude.<$> playlistType,
                  (JSON..=) "PlaylistWindowSeconds"
                    Prelude.<$> playlistWindowSeconds,
                  (JSON..=) "ProgramDateTimeIntervalSeconds"
                    Prelude.<$> programDateTimeIntervalSeconds,
                  (JSON..=) "Url" Prelude.<$> url])))
instance Property "AdMarkers" HlsManifestProperty where
  type PropertyType "AdMarkers" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {adMarkers = Prelude.pure newValue, ..}
instance Property "AdTriggers" HlsManifestProperty where
  type PropertyType "AdTriggers" HlsManifestProperty = ValueList Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {adTriggers = Prelude.pure newValue, ..}
instance Property "AdsOnDeliveryRestrictions" HlsManifestProperty where
  type PropertyType "AdsOnDeliveryRestrictions" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {adsOnDeliveryRestrictions = Prelude.pure newValue, ..}
instance Property "Id" HlsManifestProperty where
  type PropertyType "Id" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {id = newValue, ..}
instance Property "IncludeIframeOnlyStream" HlsManifestProperty where
  type PropertyType "IncludeIframeOnlyStream" HlsManifestProperty = Value Prelude.Bool
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {includeIframeOnlyStream = Prelude.pure newValue, ..}
instance Property "ManifestName" HlsManifestProperty where
  type PropertyType "ManifestName" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {manifestName = Prelude.pure newValue, ..}
instance Property "PlaylistType" HlsManifestProperty where
  type PropertyType "PlaylistType" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {playlistType = Prelude.pure newValue, ..}
instance Property "PlaylistWindowSeconds" HlsManifestProperty where
  type PropertyType "PlaylistWindowSeconds" HlsManifestProperty = Value Prelude.Integer
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {playlistWindowSeconds = Prelude.pure newValue, ..}
instance Property "ProgramDateTimeIntervalSeconds" HlsManifestProperty where
  type PropertyType "ProgramDateTimeIntervalSeconds" HlsManifestProperty = Value Prelude.Integer
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty
        {programDateTimeIntervalSeconds = Prelude.pure newValue, ..}
instance Property "Url" HlsManifestProperty where
  type PropertyType "Url" HlsManifestProperty = Value Prelude.Text
  set newValue HlsManifestProperty {..}
    = HlsManifestProperty {url = Prelude.pure newValue, ..}