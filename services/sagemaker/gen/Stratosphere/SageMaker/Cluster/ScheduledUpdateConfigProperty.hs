module Stratosphere.SageMaker.Cluster.ScheduledUpdateConfigProperty (
        module Exports, ScheduledUpdateConfigProperty(..),
        mkScheduledUpdateConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.DeploymentConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduledUpdateConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-scheduledupdateconfig.html>
    ScheduledUpdateConfigProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-scheduledupdateconfig.html#cfn-sagemaker-cluster-scheduledupdateconfig-deploymentconfig>
                                   deploymentConfig :: (Prelude.Maybe DeploymentConfigProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-scheduledupdateconfig.html#cfn-sagemaker-cluster-scheduledupdateconfig-scheduleexpression>
                                   scheduleExpression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduledUpdateConfigProperty ::
  Value Prelude.Text -> ScheduledUpdateConfigProperty
mkScheduledUpdateConfigProperty scheduleExpression
  = ScheduledUpdateConfigProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression,
       deploymentConfig = Prelude.Nothing}
instance ToResourceProperties ScheduledUpdateConfigProperty where
  toResourceProperties ScheduledUpdateConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.ScheduledUpdateConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "DeploymentConfig" Prelude.<$> deploymentConfig]))}
instance JSON.ToJSON ScheduledUpdateConfigProperty where
  toJSON ScheduledUpdateConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "DeploymentConfig" Prelude.<$> deploymentConfig])))
instance Property "DeploymentConfig" ScheduledUpdateConfigProperty where
  type PropertyType "DeploymentConfig" ScheduledUpdateConfigProperty = DeploymentConfigProperty
  set newValue ScheduledUpdateConfigProperty {..}
    = ScheduledUpdateConfigProperty
        {deploymentConfig = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" ScheduledUpdateConfigProperty where
  type PropertyType "ScheduleExpression" ScheduledUpdateConfigProperty = Value Prelude.Text
  set newValue ScheduledUpdateConfigProperty {..}
    = ScheduledUpdateConfigProperty {scheduleExpression = newValue, ..}