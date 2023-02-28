module Stratosphere.S3.Bucket.DestinationProperty (
        DestinationProperty(..), mkDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationProperty
  = DestinationProperty {bucketAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                         bucketArn :: (Value Prelude.Text),
                         format :: (Value Prelude.Text),
                         prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkDestinationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DestinationProperty
mkDestinationProperty bucketArn format
  = DestinationProperty
      {bucketArn = bucketArn, format = format,
       bucketAccountId = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties DestinationProperty where
  toResourceProperties DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketArn" JSON..= bucketArn, "Format" JSON..= format]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON DestinationProperty where
  toJSON DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketArn" JSON..= bucketArn, "Format" JSON..= format]
              (Prelude.catMaybes
                 [(JSON..=) "BucketAccountId" Prelude.<$> bucketAccountId,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "BucketAccountId" DestinationProperty where
  type PropertyType "BucketAccountId" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {bucketAccountId = Prelude.pure newValue, ..}
instance Property "BucketArn" DestinationProperty where
  type PropertyType "BucketArn" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {bucketArn = newValue, ..}
instance Property "Format" DestinationProperty where
  type PropertyType "Format" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {format = newValue, ..}
instance Property "Prefix" DestinationProperty where
  type PropertyType "Prefix" DestinationProperty = Value Prelude.Text
  set newValue DestinationProperty {..}
    = DestinationProperty {prefix = Prelude.pure newValue, ..}