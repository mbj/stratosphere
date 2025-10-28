module Stratosphere.SimSpaceWeaver.Simulation.S3LocationProperty (
        S3LocationProperty(..), mkS3LocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simspaceweaver-simulation-s3location.html>
    S3LocationProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simspaceweaver-simulation-s3location.html#cfn-simspaceweaver-simulation-s3location-bucketname>
                        bucketName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-simspaceweaver-simulation-s3location.html#cfn-simspaceweaver-simulation-s3location-objectkey>
                        objectKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LocationProperty ::
  Value Prelude.Text -> Value Prelude.Text -> S3LocationProperty
mkS3LocationProperty bucketName objectKey
  = S3LocationProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       objectKey = objectKey}
instance ToResourceProperties S3LocationProperty where
  toResourceProperties S3LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SimSpaceWeaver::Simulation.S3Location",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName,
                       "ObjectKey" JSON..= objectKey]}
instance JSON.ToJSON S3LocationProperty where
  toJSON S3LocationProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "ObjectKey" JSON..= objectKey]
instance Property "BucketName" S3LocationProperty where
  type PropertyType "BucketName" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {bucketName = newValue, ..}
instance Property "ObjectKey" S3LocationProperty where
  type PropertyType "ObjectKey" S3LocationProperty = Value Prelude.Text
  set newValue S3LocationProperty {..}
    = S3LocationProperty {objectKey = newValue, ..}