module Stratosphere.Timestream.InfluxDBInstance.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-influxdbinstance-s3configuration.html>
    S3ConfigurationProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-influxdbinstance-s3configuration.html#cfn-timestream-influxdbinstance-s3configuration-bucketname>
                             bucketName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-influxdbinstance-s3configuration.html#cfn-timestream-influxdbinstance-s3configuration-enabled>
                             enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigurationProperty ::
  Value Prelude.Text -> Value Prelude.Bool -> S3ConfigurationProperty
mkS3ConfigurationProperty bucketName enabled
  = S3ConfigurationProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       enabled = enabled}
instance ToResourceProperties S3ConfigurationProperty where
  toResourceProperties S3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::InfluxDBInstance.S3Configuration",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON S3ConfigurationProperty where
  toJSON S3ConfigurationProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "Enabled" JSON..= enabled]
instance Property "BucketName" S3ConfigurationProperty where
  type PropertyType "BucketName" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {bucketName = newValue, ..}
instance Property "Enabled" S3ConfigurationProperty where
  type PropertyType "Enabled" S3ConfigurationProperty = Value Prelude.Bool
  set newValue S3ConfigurationProperty {..}
    = S3ConfigurationProperty {enabled = newValue, ..}