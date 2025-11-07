module Stratosphere.EC2.CapacityManagerDataExport (
        CapacityManagerDataExport(..), mkCapacityManagerDataExport
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CapacityManagerDataExport
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html>
    CapacityManagerDataExport {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html#cfn-ec2-capacitymanagerdataexport-outputformat>
                               outputFormat :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html#cfn-ec2-capacitymanagerdataexport-s3bucketname>
                               s3BucketName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html#cfn-ec2-capacitymanagerdataexport-s3bucketprefix>
                               s3BucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html#cfn-ec2-capacitymanagerdataexport-schedule>
                               schedule :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-capacitymanagerdataexport.html#cfn-ec2-capacitymanagerdataexport-tags>
                               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityManagerDataExport ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CapacityManagerDataExport
mkCapacityManagerDataExport outputFormat s3BucketName schedule
  = CapacityManagerDataExport
      {haddock_workaround_ = (), outputFormat = outputFormat,
       s3BucketName = s3BucketName, schedule = schedule,
       s3BucketPrefix = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CapacityManagerDataExport where
  toResourceProperties CapacityManagerDataExport {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityManagerDataExport",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutputFormat" JSON..= outputFormat,
                            "S3BucketName" JSON..= s3BucketName, "Schedule" JSON..= schedule]
                           (Prelude.catMaybes
                              [(JSON..=) "S3BucketPrefix" Prelude.<$> s3BucketPrefix,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CapacityManagerDataExport where
  toJSON CapacityManagerDataExport {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutputFormat" JSON..= outputFormat,
               "S3BucketName" JSON..= s3BucketName, "Schedule" JSON..= schedule]
              (Prelude.catMaybes
                 [(JSON..=) "S3BucketPrefix" Prelude.<$> s3BucketPrefix,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "OutputFormat" CapacityManagerDataExport where
  type PropertyType "OutputFormat" CapacityManagerDataExport = Value Prelude.Text
  set newValue CapacityManagerDataExport {..}
    = CapacityManagerDataExport {outputFormat = newValue, ..}
instance Property "S3BucketName" CapacityManagerDataExport where
  type PropertyType "S3BucketName" CapacityManagerDataExport = Value Prelude.Text
  set newValue CapacityManagerDataExport {..}
    = CapacityManagerDataExport {s3BucketName = newValue, ..}
instance Property "S3BucketPrefix" CapacityManagerDataExport where
  type PropertyType "S3BucketPrefix" CapacityManagerDataExport = Value Prelude.Text
  set newValue CapacityManagerDataExport {..}
    = CapacityManagerDataExport
        {s3BucketPrefix = Prelude.pure newValue, ..}
instance Property "Schedule" CapacityManagerDataExport where
  type PropertyType "Schedule" CapacityManagerDataExport = Value Prelude.Text
  set newValue CapacityManagerDataExport {..}
    = CapacityManagerDataExport {schedule = newValue, ..}
instance Property "Tags" CapacityManagerDataExport where
  type PropertyType "Tags" CapacityManagerDataExport = [Tag]
  set newValue CapacityManagerDataExport {..}
    = CapacityManagerDataExport {tags = Prelude.pure newValue, ..}