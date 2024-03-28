module Stratosphere.DataSync.Task.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.ManifestConfigSourceS3Property as Exports
import Stratosphere.ResourceProperties
data SourceProperty
  = SourceProperty {s3 :: (Prelude.Maybe ManifestConfigSourceS3Property)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty = SourceProperty {s3 = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Source",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3" Prelude.<$> s3]))
instance Property "S3" SourceProperty where
  type PropertyType "S3" SourceProperty = ManifestConfigSourceS3Property
  set newValue SourceProperty {}
    = SourceProperty {s3 = Prelude.pure newValue, ..}