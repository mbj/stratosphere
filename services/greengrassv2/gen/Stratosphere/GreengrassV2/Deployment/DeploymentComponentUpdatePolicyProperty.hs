module Stratosphere.GreengrassV2.Deployment.DeploymentComponentUpdatePolicyProperty (
        DeploymentComponentUpdatePolicyProperty(..),
        mkDeploymentComponentUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeploymentComponentUpdatePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentcomponentupdatepolicy.html>
    DeploymentComponentUpdatePolicyProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentcomponentupdatepolicy.html#cfn-greengrassv2-deployment-deploymentcomponentupdatepolicy-action>
                                             action :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentcomponentupdatepolicy.html#cfn-greengrassv2-deployment-deploymentcomponentupdatepolicy-timeoutinseconds>
                                             timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentComponentUpdatePolicyProperty ::
  DeploymentComponentUpdatePolicyProperty
mkDeploymentComponentUpdatePolicyProperty
  = DeploymentComponentUpdatePolicyProperty
      {haddock_workaround_ = (), action = Prelude.Nothing,
       timeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties DeploymentComponentUpdatePolicyProperty where
  toResourceProperties DeploymentComponentUpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.DeploymentComponentUpdatePolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Action" Prelude.<$> action,
                            (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds])}
instance JSON.ToJSON DeploymentComponentUpdatePolicyProperty where
  toJSON DeploymentComponentUpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Action" Prelude.<$> action,
               (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds]))
instance Property "Action" DeploymentComponentUpdatePolicyProperty where
  type PropertyType "Action" DeploymentComponentUpdatePolicyProperty = Value Prelude.Text
  set newValue DeploymentComponentUpdatePolicyProperty {..}
    = DeploymentComponentUpdatePolicyProperty
        {action = Prelude.pure newValue, ..}
instance Property "TimeoutInSeconds" DeploymentComponentUpdatePolicyProperty where
  type PropertyType "TimeoutInSeconds" DeploymentComponentUpdatePolicyProperty = Value Prelude.Integer
  set newValue DeploymentComponentUpdatePolicyProperty {..}
    = DeploymentComponentUpdatePolicyProperty
        {timeoutInSeconds = Prelude.pure newValue, ..}