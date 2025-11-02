module Stratosphere.ElasticBeanstalk.ApplicationVersion.SourceBundleProperty (
        SourceBundleProperty(..), mkSourceBundleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceBundleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-applicationversion-sourcebundle.html>
    SourceBundleProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-applicationversion-sourcebundle.html#cfn-elasticbeanstalk-applicationversion-sourcebundle-s3bucket>
                          s3Bucket :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticbeanstalk-applicationversion-sourcebundle.html#cfn-elasticbeanstalk-applicationversion-sourcebundle-s3key>
                          s3Key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceBundleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SourceBundleProperty
mkSourceBundleProperty s3Bucket s3Key
  = SourceBundleProperty
      {haddock_workaround_ = (), s3Bucket = s3Bucket, s3Key = s3Key}
instance ToResourceProperties SourceBundleProperty where
  toResourceProperties SourceBundleProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticBeanstalk::ApplicationVersion.SourceBundle",
         supportsTags = Prelude.False,
         properties = ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]}
instance JSON.ToJSON SourceBundleProperty where
  toJSON SourceBundleProperty {..}
    = JSON.object ["S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]
instance Property "S3Bucket" SourceBundleProperty where
  type PropertyType "S3Bucket" SourceBundleProperty = Value Prelude.Text
  set newValue SourceBundleProperty {..}
    = SourceBundleProperty {s3Bucket = newValue, ..}
instance Property "S3Key" SourceBundleProperty where
  type PropertyType "S3Key" SourceBundleProperty = Value Prelude.Text
  set newValue SourceBundleProperty {..}
    = SourceBundleProperty {s3Key = newValue, ..}