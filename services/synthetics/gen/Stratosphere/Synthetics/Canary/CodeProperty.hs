module Stratosphere.Synthetics.Canary.CodeProperty (
        CodeProperty(..), mkCodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CodeProperty
  = CodeProperty {handler :: (Value Prelude.Text),
                  s3Bucket :: (Prelude.Maybe (Value Prelude.Text)),
                  s3Key :: (Prelude.Maybe (Value Prelude.Text)),
                  s3ObjectVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  script :: (Prelude.Maybe (Value Prelude.Text))}
mkCodeProperty :: Value Prelude.Text -> CodeProperty
mkCodeProperty handler
  = CodeProperty
      {handler = handler, s3Bucket = Prelude.Nothing,
       s3Key = Prelude.Nothing, s3ObjectVersion = Prelude.Nothing,
       script = Prelude.Nothing}
instance ToResourceProperties CodeProperty where
  toResourceProperties CodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.Code",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Handler" JSON..= handler]
                           (Prelude.catMaybes
                              [(JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
                               (JSON..=) "S3Key" Prelude.<$> s3Key,
                               (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
                               (JSON..=) "Script" Prelude.<$> script]))}
instance JSON.ToJSON CodeProperty where
  toJSON CodeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Handler" JSON..= handler]
              (Prelude.catMaybes
                 [(JSON..=) "S3Bucket" Prelude.<$> s3Bucket,
                  (JSON..=) "S3Key" Prelude.<$> s3Key,
                  (JSON..=) "S3ObjectVersion" Prelude.<$> s3ObjectVersion,
                  (JSON..=) "Script" Prelude.<$> script])))
instance Property "Handler" CodeProperty where
  type PropertyType "Handler" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {handler = newValue, ..}
instance Property "S3Bucket" CodeProperty where
  type PropertyType "S3Bucket" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Bucket = Prelude.pure newValue, ..}
instance Property "S3Key" CodeProperty where
  type PropertyType "S3Key" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3Key = Prelude.pure newValue, ..}
instance Property "S3ObjectVersion" CodeProperty where
  type PropertyType "S3ObjectVersion" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {s3ObjectVersion = Prelude.pure newValue, ..}
instance Property "Script" CodeProperty where
  type PropertyType "Script" CodeProperty = Value Prelude.Text
  set newValue CodeProperty {..}
    = CodeProperty {script = Prelude.pure newValue, ..}