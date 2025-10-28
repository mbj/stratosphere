module Stratosphere.MediaPackage.OriginEndpoint.MssPackageProperty (
        module Exports, MssPackageProperty(..), mkMssPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.MssEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.StreamSelectionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MssPackageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-msspackage.html>
    MssPackageProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-msspackage.html#cfn-mediapackage-originendpoint-msspackage-encryption>
                        encryption :: (Prelude.Maybe MssEncryptionProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-msspackage.html#cfn-mediapackage-originendpoint-msspackage-manifestwindowseconds>
                        manifestWindowSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-msspackage.html#cfn-mediapackage-originendpoint-msspackage-segmentdurationseconds>
                        segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-msspackage.html#cfn-mediapackage-originendpoint-msspackage-streamselection>
                        streamSelection :: (Prelude.Maybe StreamSelectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssPackageProperty :: MssPackageProperty
mkMssPackageProperty
  = MssPackageProperty
      {haddock_workaround_ = (), encryption = Prelude.Nothing,
       manifestWindowSeconds = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       streamSelection = Prelude.Nothing}
instance ToResourceProperties MssPackageProperty where
  toResourceProperties MssPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.MssPackage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encryption" Prelude.<$> encryption,
                            (JSON..=) "ManifestWindowSeconds"
                              Prelude.<$> manifestWindowSeconds,
                            (JSON..=) "SegmentDurationSeconds"
                              Prelude.<$> segmentDurationSeconds,
                            (JSON..=) "StreamSelection" Prelude.<$> streamSelection])}
instance JSON.ToJSON MssPackageProperty where
  toJSON MssPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encryption" Prelude.<$> encryption,
               (JSON..=) "ManifestWindowSeconds"
                 Prelude.<$> manifestWindowSeconds,
               (JSON..=) "SegmentDurationSeconds"
                 Prelude.<$> segmentDurationSeconds,
               (JSON..=) "StreamSelection" Prelude.<$> streamSelection]))
instance Property "Encryption" MssPackageProperty where
  type PropertyType "Encryption" MssPackageProperty = MssEncryptionProperty
  set newValue MssPackageProperty {..}
    = MssPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "ManifestWindowSeconds" MssPackageProperty where
  type PropertyType "ManifestWindowSeconds" MssPackageProperty = Value Prelude.Integer
  set newValue MssPackageProperty {..}
    = MssPackageProperty
        {manifestWindowSeconds = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" MssPackageProperty where
  type PropertyType "SegmentDurationSeconds" MssPackageProperty = Value Prelude.Integer
  set newValue MssPackageProperty {..}
    = MssPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "StreamSelection" MssPackageProperty where
  type PropertyType "StreamSelection" MssPackageProperty = StreamSelectionProperty
  set newValue MssPackageProperty {..}
    = MssPackageProperty {streamSelection = Prelude.pure newValue, ..}