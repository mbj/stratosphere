module Stratosphere.Cognito.LogDeliveryConfiguration.S3ConfigurationProperty (
        S3ConfigurationProperty(..), mkS3ConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3ConfigurationProperty
  = S3ConfigurationProperty {bucketArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3ConfigurationProperty :: S3ConfigurationProperty
mkS3ConfigurationProperty
  = S3ConfigurationProperty {bucketArn = Prelude.Nothing}
instance ToResourceProperties S3ConfigurationProperty where
  toResourceProperties S3ConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::LogDeliveryConfiguration.S3Configuration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "BucketArn" Prelude.<$> bucketArn])}
instance JSON.ToJSON S3ConfigurationProperty where
  toJSON S3ConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "BucketArn" Prelude.<$> bucketArn]))
instance Property "BucketArn" S3ConfigurationProperty where
  type PropertyType "BucketArn" S3ConfigurationProperty = Value Prelude.Text
  set newValue S3ConfigurationProperty {}
    = S3ConfigurationProperty {bucketArn = Prelude.pure newValue, ..}