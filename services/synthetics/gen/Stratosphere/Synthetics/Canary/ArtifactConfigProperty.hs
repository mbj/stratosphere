module Stratosphere.Synthetics.Canary.ArtifactConfigProperty (
        module Exports, ArtifactConfigProperty(..),
        mkArtifactConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Synthetics.Canary.S3EncryptionProperty as Exports
import Stratosphere.ResourceProperties
data ArtifactConfigProperty
  = ArtifactConfigProperty {s3Encryption :: (Prelude.Maybe S3EncryptionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArtifactConfigProperty :: ArtifactConfigProperty
mkArtifactConfigProperty
  = ArtifactConfigProperty {s3Encryption = Prelude.Nothing}
instance ToResourceProperties ArtifactConfigProperty where
  toResourceProperties ArtifactConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.ArtifactConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3Encryption" Prelude.<$> s3Encryption])}
instance JSON.ToJSON ArtifactConfigProperty where
  toJSON ArtifactConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3Encryption" Prelude.<$> s3Encryption]))
instance Property "S3Encryption" ArtifactConfigProperty where
  type PropertyType "S3Encryption" ArtifactConfigProperty = S3EncryptionProperty
  set newValue ArtifactConfigProperty {}
    = ArtifactConfigProperty {s3Encryption = Prelude.pure newValue, ..}