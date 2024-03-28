module Stratosphere.Pipes.Pipe.S3LogDestinationProperty (
        S3LogDestinationProperty(..), mkS3LogDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LogDestinationProperty
  = S3LogDestinationProperty {bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                              bucketOwner :: (Prelude.Maybe (Value Prelude.Text)),
                              outputFormat :: (Prelude.Maybe (Value Prelude.Text)),
                              prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LogDestinationProperty :: S3LogDestinationProperty
mkS3LogDestinationProperty
  = S3LogDestinationProperty
      {bucketName = Prelude.Nothing, bucketOwner = Prelude.Nothing,
       outputFormat = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties S3LogDestinationProperty where
  toResourceProperties S3LogDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.S3LogDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
                            (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON S3LogDestinationProperty where
  toJSON S3LogDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "BucketOwner" Prelude.<$> bucketOwner,
               (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "BucketName" S3LogDestinationProperty where
  type PropertyType "BucketName" S3LogDestinationProperty = Value Prelude.Text
  set newValue S3LogDestinationProperty {..}
    = S3LogDestinationProperty {bucketName = Prelude.pure newValue, ..}
instance Property "BucketOwner" S3LogDestinationProperty where
  type PropertyType "BucketOwner" S3LogDestinationProperty = Value Prelude.Text
  set newValue S3LogDestinationProperty {..}
    = S3LogDestinationProperty
        {bucketOwner = Prelude.pure newValue, ..}
instance Property "OutputFormat" S3LogDestinationProperty where
  type PropertyType "OutputFormat" S3LogDestinationProperty = Value Prelude.Text
  set newValue S3LogDestinationProperty {..}
    = S3LogDestinationProperty
        {outputFormat = Prelude.pure newValue, ..}
instance Property "Prefix" S3LogDestinationProperty where
  type PropertyType "Prefix" S3LogDestinationProperty = Value Prelude.Text
  set newValue S3LogDestinationProperty {..}
    = S3LogDestinationProperty {prefix = Prelude.pure newValue, ..}