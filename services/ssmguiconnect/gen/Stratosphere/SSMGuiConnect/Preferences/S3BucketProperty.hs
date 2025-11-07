module Stratosphere.SSMGuiConnect.Preferences.S3BucketProperty (
        S3BucketProperty(..), mkS3BucketProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3BucketProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-s3bucket.html>
    S3BucketProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-s3bucket.html#cfn-ssmguiconnect-preferences-s3bucket-bucketname>
                      bucketName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmguiconnect-preferences-s3bucket.html#cfn-ssmguiconnect-preferences-s3bucket-bucketowner>
                      bucketOwner :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3BucketProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3BucketProperty
mkS3BucketProperty bucketName bucketOwner
  = S3BucketProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       bucketOwner = bucketOwner}
instance ToResourceProperties S3BucketProperty where
  toResourceProperties S3BucketProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMGuiConnect::Preferences.S3Bucket",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName,
                       "BucketOwner" JSON..= bucketOwner]}
instance JSON.ToJSON S3BucketProperty where
  toJSON S3BucketProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName,
         "BucketOwner" JSON..= bucketOwner]
instance Property "BucketName" S3BucketProperty where
  type PropertyType "BucketName" S3BucketProperty = Value Prelude.Text
  set newValue S3BucketProperty {..}
    = S3BucketProperty {bucketName = newValue, ..}
instance Property "BucketOwner" S3BucketProperty where
  type PropertyType "BucketOwner" S3BucketProperty = Value Prelude.Text
  set newValue S3BucketProperty {..}
    = S3BucketProperty {bucketOwner = newValue, ..}