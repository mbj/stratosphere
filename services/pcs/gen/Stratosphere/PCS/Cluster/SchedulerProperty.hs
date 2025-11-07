module Stratosphere.PCS.Cluster.SchedulerProperty (
        SchedulerProperty(..), mkSchedulerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchedulerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-scheduler.html>
    SchedulerProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-scheduler.html#cfn-pcs-cluster-scheduler-type>
                       type' :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-cluster-scheduler.html#cfn-pcs-cluster-scheduler-version>
                       version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchedulerProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SchedulerProperty
mkSchedulerProperty type' version
  = SchedulerProperty
      {haddock_workaround_ = (), type' = type', version = version}
instance ToResourceProperties SchedulerProperty where
  toResourceProperties SchedulerProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Cluster.Scheduler",
         supportsTags = Prelude.False,
         properties = ["Type" JSON..= type', "Version" JSON..= version]}
instance JSON.ToJSON SchedulerProperty where
  toJSON SchedulerProperty {..}
    = JSON.object ["Type" JSON..= type', "Version" JSON..= version]
instance Property "Type" SchedulerProperty where
  type PropertyType "Type" SchedulerProperty = Value Prelude.Text
  set newValue SchedulerProperty {..}
    = SchedulerProperty {type' = newValue, ..}
instance Property "Version" SchedulerProperty where
  type PropertyType "Version" SchedulerProperty = Value Prelude.Text
  set newValue SchedulerProperty {..}
    = SchedulerProperty {version = newValue, ..}