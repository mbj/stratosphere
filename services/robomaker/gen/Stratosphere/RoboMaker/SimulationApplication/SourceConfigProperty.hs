module Stratosphere.RoboMaker.SimulationApplication.SourceConfigProperty (
        SourceConfigProperty(..), mkSourceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html>
    SourceConfigProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-architecture>
                          architecture :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3bucket>
                          s3Bucket :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-sourceconfig.html#cfn-robomaker-simulationapplication-sourceconfig-s3key>
                          s3Key :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SourceConfigProperty
mkSourceConfigProperty architecture s3Bucket s3Key
  = SourceConfigProperty
      {haddock_workaround_ = (), architecture = architecture,
       s3Bucket = s3Bucket, s3Key = s3Key}
instance ToResourceProperties SourceConfigProperty where
  toResourceProperties SourceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication.SourceConfig",
         supportsTags = Prelude.False,
         properties = ["Architecture" JSON..= architecture,
                       "S3Bucket" JSON..= s3Bucket, "S3Key" JSON..= s3Key]}
instance JSON.ToJSON SourceConfigProperty where
  toJSON SourceConfigProperty {..}
    = JSON.object
        ["Architecture" JSON..= architecture, "S3Bucket" JSON..= s3Bucket,
         "S3Key" JSON..= s3Key]
instance Property "Architecture" SourceConfigProperty where
  type PropertyType "Architecture" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {architecture = newValue, ..}
instance Property "S3Bucket" SourceConfigProperty where
  type PropertyType "S3Bucket" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {s3Bucket = newValue, ..}
instance Property "S3Key" SourceConfigProperty where
  type PropertyType "S3Key" SourceConfigProperty = Value Prelude.Text
  set newValue SourceConfigProperty {..}
    = SourceConfigProperty {s3Key = newValue, ..}