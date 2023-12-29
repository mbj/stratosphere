module Stratosphere.Transfer.Workflow.S3InputFileLocationProperty (
        S3InputFileLocationProperty(..), mkS3InputFileLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3InputFileLocationProperty
  = S3InputFileLocationProperty {bucket :: (Prelude.Maybe (Value Prelude.Text)),
                                 key :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3InputFileLocationProperty :: S3InputFileLocationProperty
mkS3InputFileLocationProperty
  = S3InputFileLocationProperty
      {bucket = Prelude.Nothing, key = Prelude.Nothing}
instance ToResourceProperties S3InputFileLocationProperty where
  toResourceProperties S3InputFileLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow.S3InputFileLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "Key" Prelude.<$> key])}
instance JSON.ToJSON S3InputFileLocationProperty where
  toJSON S3InputFileLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "Key" Prelude.<$> key]))
instance Property "Bucket" S3InputFileLocationProperty where
  type PropertyType "Bucket" S3InputFileLocationProperty = Value Prelude.Text
  set newValue S3InputFileLocationProperty {..}
    = S3InputFileLocationProperty {bucket = Prelude.pure newValue, ..}
instance Property "Key" S3InputFileLocationProperty where
  type PropertyType "Key" S3InputFileLocationProperty = Value Prelude.Text
  set newValue S3InputFileLocationProperty {..}
    = S3InputFileLocationProperty {key = Prelude.pure newValue, ..}