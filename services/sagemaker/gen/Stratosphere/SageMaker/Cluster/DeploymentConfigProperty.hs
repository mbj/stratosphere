module Stratosphere.SageMaker.Cluster.DeploymentConfigProperty (
        module Exports, DeploymentConfigProperty(..),
        mkDeploymentConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.AlarmDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.RollingUpdatePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html>
    DeploymentConfigProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-autorollbackconfiguration>
                              autoRollbackConfiguration :: (Prelude.Maybe [AlarmDetailsProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-rollingupdatepolicy>
                              rollingUpdatePolicy :: (Prelude.Maybe RollingUpdatePolicyProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-cluster-deploymentconfig.html#cfn-sagemaker-cluster-deploymentconfig-waitintervalinseconds>
                              waitIntervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentConfigProperty :: DeploymentConfigProperty
mkDeploymentConfigProperty
  = DeploymentConfigProperty
      {haddock_workaround_ = (),
       autoRollbackConfiguration = Prelude.Nothing,
       rollingUpdatePolicy = Prelude.Nothing,
       waitIntervalInSeconds = Prelude.Nothing}
instance ToResourceProperties DeploymentConfigProperty where
  toResourceProperties DeploymentConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster.DeploymentConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoRollbackConfiguration"
                              Prelude.<$> autoRollbackConfiguration,
                            (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy,
                            (JSON..=) "WaitIntervalInSeconds"
                              Prelude.<$> waitIntervalInSeconds])}
instance JSON.ToJSON DeploymentConfigProperty where
  toJSON DeploymentConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoRollbackConfiguration"
                 Prelude.<$> autoRollbackConfiguration,
               (JSON..=) "RollingUpdatePolicy" Prelude.<$> rollingUpdatePolicy,
               (JSON..=) "WaitIntervalInSeconds"
                 Prelude.<$> waitIntervalInSeconds]))
instance Property "AutoRollbackConfiguration" DeploymentConfigProperty where
  type PropertyType "AutoRollbackConfiguration" DeploymentConfigProperty = [AlarmDetailsProperty]
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {autoRollbackConfiguration = Prelude.pure newValue, ..}
instance Property "RollingUpdatePolicy" DeploymentConfigProperty where
  type PropertyType "RollingUpdatePolicy" DeploymentConfigProperty = RollingUpdatePolicyProperty
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {rollingUpdatePolicy = Prelude.pure newValue, ..}
instance Property "WaitIntervalInSeconds" DeploymentConfigProperty where
  type PropertyType "WaitIntervalInSeconds" DeploymentConfigProperty = Value Prelude.Integer
  set newValue DeploymentConfigProperty {..}
    = DeploymentConfigProperty
        {waitIntervalInSeconds = Prelude.pure newValue, ..}