module Stratosphere.Rekognition.StreamProcessor.S3DestinationProperty (
        S3DestinationProperty(..), mkS3DestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-s3destination.html>
    S3DestinationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-s3destination.html#cfn-rekognition-streamprocessor-s3destination-bucketname>
                           bucketName :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rekognition-streamprocessor-s3destination.html#cfn-rekognition-streamprocessor-s3destination-objectkeyprefix>
                           objectKeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationProperty ::
  Value Prelude.Text -> S3DestinationProperty
mkS3DestinationProperty bucketName
  = S3DestinationProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       objectKeyPrefix = Prelude.Nothing}
instance ToResourceProperties S3DestinationProperty where
  toResourceProperties S3DestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor.S3Destination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketName" JSON..= bucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix]))}
instance JSON.ToJSON S3DestinationProperty where
  toJSON S3DestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketName" JSON..= bucketName]
              (Prelude.catMaybes
                 [(JSON..=) "ObjectKeyPrefix" Prelude.<$> objectKeyPrefix])))
instance Property "BucketName" S3DestinationProperty where
  type PropertyType "BucketName" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty {bucketName = newValue, ..}
instance Property "ObjectKeyPrefix" S3DestinationProperty where
  type PropertyType "ObjectKeyPrefix" S3DestinationProperty = Value Prelude.Text
  set newValue S3DestinationProperty {..}
    = S3DestinationProperty
        {objectKeyPrefix = Prelude.pure newValue, ..}