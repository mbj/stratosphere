module Stratosphere.SageMaker.Cluster.AlarmDetailsProperty (
        AlarmDetailsProperty(..), mkAlarmDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmDetailsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-alarmdetails.html>
    AlarmDetailsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-alarmdetails.html#cfn-sagemaker-cluster-alarmdetails-alarmname>
                          alarmName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmDetailsProperty ::
  Value Prelude.Text -> AlarmDetailsProperty
mkAlarmDetailsProperty alarmName
  = AlarmDetailsProperty
      {haddock_workaround_ = (), alarmName = alarmName}
instance ToResourceProperties AlarmDetailsProperty where
  toResourceProperties AlarmDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.AlarmDetails",
         supportsTags = Prelude.False,
         properties = ["AlarmName" JSON..= alarmName]}
instance JSON.ToJSON AlarmDetailsProperty where
  toJSON AlarmDetailsProperty {..}
    = JSON.object ["AlarmName" JSON..= alarmName]
instance Property "AlarmName" AlarmDetailsProperty where
  type PropertyType "AlarmName" AlarmDetailsProperty = Value Prelude.Text
  set newValue AlarmDetailsProperty {..}
    = AlarmDetailsProperty {alarmName = newValue, ..}