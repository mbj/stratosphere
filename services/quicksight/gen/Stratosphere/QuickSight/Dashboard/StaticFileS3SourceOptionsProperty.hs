module Stratosphere.QuickSight.Dashboard.StaticFileS3SourceOptionsProperty (
        StaticFileS3SourceOptionsProperty(..),
        mkStaticFileS3SourceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StaticFileS3SourceOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfiles3sourceoptions.html>
    StaticFileS3SourceOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfiles3sourceoptions.html#cfn-quicksight-dashboard-staticfiles3sourceoptions-bucketname>
                                       bucketName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfiles3sourceoptions.html#cfn-quicksight-dashboard-staticfiles3sourceoptions-objectkey>
                                       objectKey :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-staticfiles3sourceoptions.html#cfn-quicksight-dashboard-staticfiles3sourceoptions-region>
                                       region :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStaticFileS3SourceOptionsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> StaticFileS3SourceOptionsProperty
mkStaticFileS3SourceOptionsProperty bucketName objectKey region
  = StaticFileS3SourceOptionsProperty
      {haddock_workaround_ = (), bucketName = bucketName,
       objectKey = objectKey, region = region}
instance ToResourceProperties StaticFileS3SourceOptionsProperty where
  toResourceProperties StaticFileS3SourceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.StaticFileS3SourceOptions",
         supportsTags = Prelude.False,
         properties = ["BucketName" JSON..= bucketName,
                       "ObjectKey" JSON..= objectKey, "Region" JSON..= region]}
instance JSON.ToJSON StaticFileS3SourceOptionsProperty where
  toJSON StaticFileS3SourceOptionsProperty {..}
    = JSON.object
        ["BucketName" JSON..= bucketName, "ObjectKey" JSON..= objectKey,
         "Region" JSON..= region]
instance Property "BucketName" StaticFileS3SourceOptionsProperty where
  type PropertyType "BucketName" StaticFileS3SourceOptionsProperty = Value Prelude.Text
  set newValue StaticFileS3SourceOptionsProperty {..}
    = StaticFileS3SourceOptionsProperty {bucketName = newValue, ..}
instance Property "ObjectKey" StaticFileS3SourceOptionsProperty where
  type PropertyType "ObjectKey" StaticFileS3SourceOptionsProperty = Value Prelude.Text
  set newValue StaticFileS3SourceOptionsProperty {..}
    = StaticFileS3SourceOptionsProperty {objectKey = newValue, ..}
instance Property "Region" StaticFileS3SourceOptionsProperty where
  type PropertyType "Region" StaticFileS3SourceOptionsProperty = Value Prelude.Text
  set newValue StaticFileS3SourceOptionsProperty {..}
    = StaticFileS3SourceOptionsProperty {region = newValue, ..}