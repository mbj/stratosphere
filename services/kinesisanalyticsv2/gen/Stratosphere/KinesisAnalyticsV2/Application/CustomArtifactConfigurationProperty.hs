module Stratosphere.KinesisAnalyticsV2.Application.CustomArtifactConfigurationProperty (
        module Exports, CustomArtifactConfigurationProperty(..),
        mkCustomArtifactConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.MavenReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.S3ContentLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomArtifactConfigurationProperty
  = CustomArtifactConfigurationProperty {artifactType :: (Value Prelude.Text),
                                         mavenReference :: (Prelude.Maybe MavenReferenceProperty),
                                         s3ContentLocation :: (Prelude.Maybe S3ContentLocationProperty)}
mkCustomArtifactConfigurationProperty ::
  Value Prelude.Text -> CustomArtifactConfigurationProperty
mkCustomArtifactConfigurationProperty artifactType
  = CustomArtifactConfigurationProperty
      {artifactType = artifactType, mavenReference = Prelude.Nothing,
       s3ContentLocation = Prelude.Nothing}
instance ToResourceProperties CustomArtifactConfigurationProperty where
  toResourceProperties CustomArtifactConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.CustomArtifactConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ArtifactType" JSON..= artifactType]
                           (Prelude.catMaybes
                              [(JSON..=) "MavenReference" Prelude.<$> mavenReference,
                               (JSON..=) "S3ContentLocation" Prelude.<$> s3ContentLocation]))}
instance JSON.ToJSON CustomArtifactConfigurationProperty where
  toJSON CustomArtifactConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ArtifactType" JSON..= artifactType]
              (Prelude.catMaybes
                 [(JSON..=) "MavenReference" Prelude.<$> mavenReference,
                  (JSON..=) "S3ContentLocation" Prelude.<$> s3ContentLocation])))
instance Property "ArtifactType" CustomArtifactConfigurationProperty where
  type PropertyType "ArtifactType" CustomArtifactConfigurationProperty = Value Prelude.Text
  set newValue CustomArtifactConfigurationProperty {..}
    = CustomArtifactConfigurationProperty {artifactType = newValue, ..}
instance Property "MavenReference" CustomArtifactConfigurationProperty where
  type PropertyType "MavenReference" CustomArtifactConfigurationProperty = MavenReferenceProperty
  set newValue CustomArtifactConfigurationProperty {..}
    = CustomArtifactConfigurationProperty
        {mavenReference = Prelude.pure newValue, ..}
instance Property "S3ContentLocation" CustomArtifactConfigurationProperty where
  type PropertyType "S3ContentLocation" CustomArtifactConfigurationProperty = S3ContentLocationProperty
  set newValue CustomArtifactConfigurationProperty {..}
    = CustomArtifactConfigurationProperty
        {s3ContentLocation = Prelude.pure newValue, ..}