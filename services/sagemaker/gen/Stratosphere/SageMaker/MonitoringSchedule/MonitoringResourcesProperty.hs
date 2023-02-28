module Stratosphere.SageMaker.MonitoringSchedule.MonitoringResourcesProperty (
        module Exports, MonitoringResourcesProperty(..),
        mkMonitoringResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.ClusterConfigProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringResourcesProperty
  = MonitoringResourcesProperty {clusterConfig :: ClusterConfigProperty}
mkMonitoringResourcesProperty ::
  ClusterConfigProperty -> MonitoringResourcesProperty
mkMonitoringResourcesProperty clusterConfig
  = MonitoringResourcesProperty {clusterConfig = clusterConfig}
instance ToResourceProperties MonitoringResourcesProperty where
  toResourceProperties MonitoringResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringResources",
         supportsTags = Prelude.False,
         properties = ["ClusterConfig" JSON..= clusterConfig]}
instance JSON.ToJSON MonitoringResourcesProperty where
  toJSON MonitoringResourcesProperty {..}
    = JSON.object ["ClusterConfig" JSON..= clusterConfig]
instance Property "ClusterConfig" MonitoringResourcesProperty where
  type PropertyType "ClusterConfig" MonitoringResourcesProperty = ClusterConfigProperty
  set newValue MonitoringResourcesProperty {}
    = MonitoringResourcesProperty {clusterConfig = newValue, ..}