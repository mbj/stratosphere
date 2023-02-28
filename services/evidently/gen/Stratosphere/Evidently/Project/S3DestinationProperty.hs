module Stratosphere.Evidently.Project.S3DestinationProperty (
        S3DestinationProperty(..), mkS3DestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationProperty
  = S3DestinationProperty {bucketName :: (Value Prelude.Text),
                           prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkS3DestinationProperty ::
  Value Prelude.Text -> S3DestinationProperty
mkS3DestinationProperty bucketName
  = S3DestinationProperty
      {bucketName = bucketName, prefix = Prelude.Nothing}
instance ToResourceProperties S3DestinationProperty where
  toResourceProperties S3DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Project.S3Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3DestinationProperty where
  toJSON S3DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes [(JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "BucketName" S3DestinationProperty where
  type PropertyType "BucketName" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {bucketName = newValue, ..}
instance Property "Prefix" S3DestinationProperty where
  type PropertyType "Prefix" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {prefix = Prelude.pure newValue, ..}