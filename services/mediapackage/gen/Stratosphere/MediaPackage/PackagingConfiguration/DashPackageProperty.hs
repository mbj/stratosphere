module Stratosphere.MediaPackage.PackagingConfiguration.DashPackageProperty (
        module Exports, DashPackageProperty(..), mkDashPackageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.DashEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.DashManifestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashPackageProperty
  = DashPackageProperty {dashManifests :: [DashManifestProperty],
                         encryption :: (Prelude.Maybe DashEncryptionProperty),
                         includeEncoderConfigurationInSegments :: (Prelude.Maybe (Value Prelude.Bool)),
                         includeIframeOnlyStream :: (Prelude.Maybe (Value Prelude.Bool)),
                         periodTriggers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                         segmentDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                         segmentTemplateFormat :: (Prelude.Maybe (Value Prelude.Text))}
mkDashPackageProperty ::
  [DashManifestProperty] -> DashPackageProperty
mkDashPackageProperty dashManifests
  = DashPackageProperty
      {dashManifests = dashManifests, encryption = Prelude.Nothing,
       includeEncoderConfigurationInSegments = Prelude.Nothing,
       includeIframeOnlyStream = Prelude.Nothing,
       periodTriggers = Prelude.Nothing,
       segmentDurationSeconds = Prelude.Nothing,
       segmentTemplateFormat = Prelude.Nothing}
instance ToResourceProperties DashPackageProperty where
  toResourceProperties DashPackageProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.DashPackage",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DashManifests" JSON..= dashManifests]
                           (Prelude.catMaybes
                              [(JSON..=) "Encryption" Prelude.<$> encryption,
                               (JSON..=) "IncludeEncoderConfigurationInSegments"
                                 Prelude.<$> includeEncoderConfigurationInSegments,
                               (JSON..=) "IncludeIframeOnlyStream"
                                 Prelude.<$> includeIframeOnlyStream,
                               (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
                               (JSON..=) "SegmentDurationSeconds"
                                 Prelude.<$> segmentDurationSeconds,
                               (JSON..=) "SegmentTemplateFormat"
                                 Prelude.<$> segmentTemplateFormat]))}
instance JSON.ToJSON DashPackageProperty where
  toJSON DashPackageProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DashManifests" JSON..= dashManifests]
              (Prelude.catMaybes
                 [(JSON..=) "Encryption" Prelude.<$> encryption,
                  (JSON..=) "IncludeEncoderConfigurationInSegments"
                    Prelude.<$> includeEncoderConfigurationInSegments,
                  (JSON..=) "IncludeIframeOnlyStream"
                    Prelude.<$> includeIframeOnlyStream,
                  (JSON..=) "PeriodTriggers" Prelude.<$> periodTriggers,
                  (JSON..=) "SegmentDurationSeconds"
                    Prelude.<$> segmentDurationSeconds,
                  (JSON..=) "SegmentTemplateFormat"
                    Prelude.<$> segmentTemplateFormat])))
instance Property "DashManifests" DashPackageProperty where
  type PropertyType "DashManifests" DashPackageProperty = [DashManifestProperty]
  set newValue DashPackageProperty {..}
    = DashPackageProperty {dashManifests = newValue, ..}
instance Property "Encryption" DashPackageProperty where
  type PropertyType "Encryption" DashPackageProperty = DashEncryptionProperty
  set newValue DashPackageProperty {..}
    = DashPackageProperty {encryption = Prelude.pure newValue, ..}
instance Property "IncludeEncoderConfigurationInSegments" DashPackageProperty where
  type PropertyType "IncludeEncoderConfigurationInSegments" DashPackageProperty = Value Prelude.Bool
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {includeEncoderConfigurationInSegments = Prelude.pure newValue, ..}
instance Property "IncludeIframeOnlyStream" DashPackageProperty where
  type PropertyType "IncludeIframeOnlyStream" DashPackageProperty = Value Prelude.Bool
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {includeIframeOnlyStream = Prelude.pure newValue, ..}
instance Property "PeriodTriggers" DashPackageProperty where
  type PropertyType "PeriodTriggers" DashPackageProperty = ValueList (Value Prelude.Text)
  set newValue DashPackageProperty {..}
    = DashPackageProperty {periodTriggers = Prelude.pure newValue, ..}
instance Property "SegmentDurationSeconds" DashPackageProperty where
  type PropertyType "SegmentDurationSeconds" DashPackageProperty = Value Prelude.Integer
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {segmentDurationSeconds = Prelude.pure newValue, ..}
instance Property "SegmentTemplateFormat" DashPackageProperty where
  type PropertyType "SegmentTemplateFormat" DashPackageProperty = Value Prelude.Text
  set newValue DashPackageProperty {..}
    = DashPackageProperty
        {segmentTemplateFormat = Prelude.pure newValue, ..}