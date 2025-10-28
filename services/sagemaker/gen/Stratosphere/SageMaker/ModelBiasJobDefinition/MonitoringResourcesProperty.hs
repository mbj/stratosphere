module Stratosphere.SageMaker.ModelBiasJobDefinition.MonitoringResourcesProperty (
        module Exports, MonitoringResourcesProperty(..),
        mkMonitoringResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelBiasJobDefinition.ClusterConfigProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringResourcesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-monitoringresources.html>
    MonitoringResourcesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelbiasjobdefinition-monitoringresources.html#cfn-sagemaker-modelbiasjobdefinition-monitoringresources-clusterconfig>
                                 clusterConfig :: ClusterConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringResourcesProperty ::
  ClusterConfigProperty -> MonitoringResourcesProperty
mkMonitoringResourcesProperty clusterConfig
  = MonitoringResourcesProperty
      {haddock_workaround_ = (), clusterConfig = clusterConfig}
instance ToResourceProperties MonitoringResourcesProperty where
  toResourceProperties MonitoringResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelBiasJobDefinition.MonitoringResources",
         supportsTags = Prelude.False,
         properties = ["ClusterConfig" JSON..= clusterConfig]}
instance JSON.ToJSON MonitoringResourcesProperty where
  toJSON MonitoringResourcesProperty {..}
    = JSON.object ["ClusterConfig" JSON..= clusterConfig]
instance Property "ClusterConfig" MonitoringResourcesProperty where
  type PropertyType "ClusterConfig" MonitoringResourcesProperty = ClusterConfigProperty
  set newValue MonitoringResourcesProperty {..}
    = MonitoringResourcesProperty {clusterConfig = newValue, ..}