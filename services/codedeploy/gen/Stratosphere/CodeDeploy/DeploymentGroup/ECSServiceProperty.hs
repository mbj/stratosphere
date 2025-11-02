module Stratosphere.CodeDeploy.DeploymentGroup.ECSServiceProperty (
        ECSServiceProperty(..), mkECSServiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ECSServiceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ecsservice.html>
    ECSServiceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ecsservice.html#cfn-codedeploy-deploymentgroup-ecsservice-clustername>
                        clusterName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codedeploy-deploymentgroup-ecsservice.html#cfn-codedeploy-deploymentgroup-ecsservice-servicename>
                        serviceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkECSServiceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ECSServiceProperty
mkECSServiceProperty clusterName serviceName
  = ECSServiceProperty
      {haddock_workaround_ = (), clusterName = clusterName,
       serviceName = serviceName}
instance ToResourceProperties ECSServiceProperty where
  toResourceProperties ECSServiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentGroup.ECSService",
         supportsTags = Prelude.False,
         properties = ["ClusterName" JSON..= clusterName,
                       "ServiceName" JSON..= serviceName]}
instance JSON.ToJSON ECSServiceProperty where
  toJSON ECSServiceProperty {..}
    = JSON.object
        ["ClusterName" JSON..= clusterName,
         "ServiceName" JSON..= serviceName]
instance Property "ClusterName" ECSServiceProperty where
  type PropertyType "ClusterName" ECSServiceProperty = Value Prelude.Text
  set newValue ECSServiceProperty {..}
    = ECSServiceProperty {clusterName = newValue, ..}
instance Property "ServiceName" ECSServiceProperty where
  type PropertyType "ServiceName" ECSServiceProperty = Value Prelude.Text
  set newValue ECSServiceProperty {..}
    = ECSServiceProperty {serviceName = newValue, ..}