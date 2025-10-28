module Stratosphere.MediaPackage.OriginEndpoint.CmafPackageProperty (
        module Exports, CmafPackageProperty(..), mkCmafPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.CmafEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.HlsManifestProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafPackageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html>
    CmafPackageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html#cfn-mediapackage-originendpoint-cmafpackage-encryption>
                         encryption :: (Prelude.Maybe CmafEncryptionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html#cfn-mediapackage-originendpoint-cmafpackage-hlsmanifests>
                         hlsManifests :: (Prelude.Maybe [HlsManifestProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html#cfn-mediapackage-originendpoint-cmafpackage-segmentdurationseconds>
                         segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html#cfn-mediapackage-originendpoint-cmafpackage-segmentprefix>
                         segmentPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafpackage.html#cfn-mediapackage-originendpoint-cmafpackage-streamselection>
                         streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafPackageProperty :: CmafPackageProperty
mkCmafPackageProperty
  = CmafPackageProperty
      {haddock_workaround_ = (), encryption = Prelude.Nothing,
       hlsManifests = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       segmentPrefix = Prelude.Nothing, streamSelection = Prelude.Nothing}
instance ToResourceProperties CmafPackageProperty where
  toResourceProperties CmafPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.CmafPackage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encryption" Prelude.<$> encryption,
                            (JSON..=) "HlsManifests" Prelude.<$> hlsManifests,
                            (JSON..=) "SegmentDurationSeconds"
                              Prelude.<$> segmentDurationSeconds,
                            (JSON..=) "SegmentPrefix" Prelude.<$> segmentPrefix,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection])}
instance JSON.ToJSON CmafPackageProperty where
  toJSON CmafPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encryption" Prelude.<$> encryption,
               (JSON..=) "HlsManifests" Prelude.<$> hlsManifests,
               (JSON..=) "SegmentDurationSeconds"
                 Prelude.<$> segmentDurationSeconds,
               (JSON..=) "SegmentPrefix" Prelude.<$> segmentPrefix,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection]))
instance Property "Encryption" CmafPackageProperty where
  type PropertyType "Encryption" CmafPackageProperty = CmafEncryptionProperty
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "HlsManifests" CmafPackageProperty where
  type PropertyType "HlsManifests" CmafPackageProperty = [HlsManifestProperty]
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {hlsManifests = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" CmafPackageProperty where
  type PropertyType "SegmentDurationSeconds" CmafPackageProperty = Value Prelude.Integer
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "SegmentPrefix" CmafPackageProperty where
  type PropertyType "SegmentPrefix" CmafPackageProperty = Value Prelude.Text
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {segmentPrefix = Prelude.pure newValue, ..}
instance Property "StreamSelection" CmafPackageProperty where
  type PropertyType "StreamSelection" CmafPackageProperty = StreamSelectionProperty
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {streamSelection = Prelude.pure newValue, ..}