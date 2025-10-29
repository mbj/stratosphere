module Stratosphere.MediaPackage.PackagingConfiguration.MssPackageProperty (
        module Exports, MssPackageProperty(..), mkMssPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.MssEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.MssManifestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MssPackageProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-msspackage.html>
    MssPackageProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-msspackage.html#cfn-mediapackage-packagingconfiguration-msspackage-encryption>
                        encryption :: (Prelude.Maybe MssEncryptionProperty),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-msspackage.html#cfn-mediapackage-packagingconfiguration-msspackage-mssmanifests>
                        mssManifests :: [MssManifestProperty],
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-msspackage.html#cfn-mediapackage-packagingconfiguration-msspackage-segmentdurationseconds>
                        segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMssPackageProperty :: [MssManifestProperty] -> MssPackageProperty
mkMssPackageProperty mssManifests
  = MssPackageProperty
      {mssManifests = mssManifests, encryption = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing}
instance ToResourceProperties MssPackageProperty where
  toResourceProperties MssPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.MssPackage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MssManifests" JSON..= mssManifests]
                           (Prelude.catMaybes
                              [(JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "SegmentDurationSeconds"
                                 Prelude.<$> segmentDurationSeconds]))}
instance JSON.ToJSON MssPackageProperty where
  toJSON MssPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MssManifests" JSON..= mssManifests]
              (Prelude.catMaybes
                 [(JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "SegmentDurationSeconds"
                    Prelude.<$> segmentDurationSeconds])))
instance Property "Encryption" MssPackageProperty where
  type PropertyType "Encryption" MssPackageProperty = MssEncryptionProperty
  set newValue MssPackageProperty {..}
    = MssPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "MssManifests" MssPackageProperty where
  type PropertyType "MssManifests" MssPackageProperty = [MssManifestProperty]
  set newValue MssPackageProperty {..}
    = MssPackageProperty {mssManifests = newValue, ..}
instance Property "SegmentDurationSeconds" MssPackageProperty where
  type PropertyType "SegmentDurationSeconds" MssPackageProperty = Value Prelude.Integer
  set newValue MssPackageProperty {..}
    = MssPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}