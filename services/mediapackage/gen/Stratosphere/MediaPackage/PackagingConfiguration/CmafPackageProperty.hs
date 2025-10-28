module Stratosphere.MediaPackage.PackagingConfiguration.CmafPackageProperty (
        module Exports, CmafPackageProperty(..), mkCmafPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.CmafEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.HlsManifestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafPackageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafpackage.html>
    CmafPackageProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafpackage.html#cfn-mediapackage-packagingconfiguration-cmafpackage-encryption>
                         encryption :: (Prelude.Maybe CmafEncryptionProperty),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafpackage.html#cfn-mediapackage-packagingconfiguration-cmafpackage-hlsmanifests>
                         hlsManifests :: [HlsManifestProperty],
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafpackage.html#cfn-mediapackage-packagingconfiguration-cmafpackage-includeencoderconfigurationinsegments>
                         includeEncoderConfigurationInSegments :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-cmafpackage.html#cfn-mediapackage-packagingconfiguration-cmafpackage-segmentdurationseconds>
                         segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafPackageProperty ::
  [HlsManifestProperty] -> CmafPackageProperty
mkCmafPackageProperty hlsManifests
  = CmafPackageProperty
      {haddock_workaround_ = (), hlsManifests = hlsManifests,
       encryption = Prelude.Nothing,
       includeEncoderConfigurationInSegments = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing}
instance ToResourceProperties CmafPackageProperty where
  toResourceProperties CmafPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.CmafPackage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HlsManifests" JSON..= hlsManifests]
                           (Prelude.catMaybes
                              [(JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "IncludeEncoderConfigurationInSegments"
                                 Prelude.<$> includeEncoderConfigurationInSegments,
                               (JSON..=) "SegmentDurationSeconds"
                                 Prelude.<$> segmentDurationSeconds]))}
instance JSON.ToJSON CmafPackageProperty where
  toJSON CmafPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HlsManifests" JSON..= hlsManifests]
              (Prelude.catMaybes
                 [(JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "IncludeEncoderConfigurationInSegments"
                    Prelude.<$> includeEncoderConfigurationInSegments,
                  (JSON..=) "SegmentDurationSeconds"
                    Prelude.<$> segmentDurationSeconds])))
instance Property "Encryption" CmafPackageProperty where
  type PropertyType "Encryption" CmafPackageProperty = CmafEncryptionProperty
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "HlsManifests" CmafPackageProperty where
  type PropertyType "HlsManifests" CmafPackageProperty = [HlsManifestProperty]
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty {hlsManifests = newValue, ..}
instance Property "IncludeEncoderConfigurationInSegments" CmafPackageProperty where
  type PropertyType "IncludeEncoderConfigurationInSegments" CmafPackageProperty = Value Prelude.Bool
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty
        {includeEncoderConfigurationInSegments = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" CmafPackageProperty where
  type PropertyType "SegmentDurationSeconds" CmafPackageProperty = Value Prelude.Integer
  set newValue CmafPackageProperty {..}
    = CmafPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}