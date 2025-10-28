module Stratosphere.SageMaker.MonitoringSchedule.ConstraintsResourceProperty (
        ConstraintsResourceProperty(..), mkConstraintsResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConstraintsResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-constraintsresource.html>
    ConstraintsResourceProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-constraintsresource.html#cfn-sagemaker-monitoringschedule-constraintsresource-s3uri>
                                 s3Uri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConstraintsResourceProperty :: ConstraintsResourceProperty
mkConstraintsResourceProperty
  = ConstraintsResourceProperty
      {haddock_workaround_ = (), s3Uri = Prelude.Nothing}
instance ToResourceProperties ConstraintsResourceProperty where
  toResourceProperties ConstraintsResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.ConstraintsResource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri])}
instance JSON.ToJSON ConstraintsResourceProperty where
  toJSON ConstraintsResourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Uri" Prelude.<$> s3Uri]))
instance Property "S3Uri" ConstraintsResourceProperty where
  type PropertyType "S3Uri" ConstraintsResourceProperty = Value Prelude.Text
  set newValue ConstraintsResourceProperty {..}
    = ConstraintsResourceProperty {s3Uri = Prelude.pure newValue, ..}