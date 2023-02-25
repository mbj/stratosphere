module Stratosphere.KinesisAnalyticsV2.Application.FlinkApplicationConfigurationProperty (
        module Exports, FlinkApplicationConfigurationProperty(..),
        mkFlinkApplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.CheckpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.MonitoringConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ParallelismConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FlinkApplicationConfigurationProperty
  = FlinkApplicationConfigurationProperty {checkpointConfiguration :: (Prelude.Maybe CheckpointConfigurationProperty),
                                           monitoringConfiguration :: (Prelude.Maybe MonitoringConfigurationProperty),
                                           parallelismConfiguration :: (Prelude.Maybe ParallelismConfigurationProperty)}
mkFlinkApplicationConfigurationProperty ::
  FlinkApplicationConfigurationProperty
mkFlinkApplicationConfigurationProperty
  = FlinkApplicationConfigurationProperty
      {checkpointConfiguration = Prelude.Nothing,
       monitoringConfiguration = Prelude.Nothing,
       parallelismConfiguration = Prelude.Nothing}
instance ToResourceProperties FlinkApplicationConfigurationProperty where
  toResourceProperties FlinkApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.FlinkApplicationConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CheckpointConfiguration"
                              Prelude.<$> checkpointConfiguration,
                            (JSON..=) "MonitoringConfiguration"
                              Prelude.<$> monitoringConfiguration,
                            (JSON..=) "ParallelismConfiguration"
                              Prelude.<$> parallelismConfiguration])}
instance JSON.ToJSON FlinkApplicationConfigurationProperty where
  toJSON FlinkApplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CheckpointConfiguration"
                 Prelude.<$> checkpointConfiguration,
               (JSON..=) "MonitoringConfiguration"
                 Prelude.<$> monitoringConfiguration,
               (JSON..=) "ParallelismConfiguration"
                 Prelude.<$> parallelismConfiguration]))
instance Property "CheckpointConfiguration" FlinkApplicationConfigurationProperty where
  type PropertyType "CheckpointConfiguration" FlinkApplicationConfigurationProperty = CheckpointConfigurationProperty
  set newValue FlinkApplicationConfigurationProperty {..}
    = FlinkApplicationConfigurationProperty
        {checkpointConfiguration = Prelude.pure newValue, ..}
instance Property "MonitoringConfiguration" FlinkApplicationConfigurationProperty where
  type PropertyType "MonitoringConfiguration" FlinkApplicationConfigurationProperty = MonitoringConfigurationProperty
  set newValue FlinkApplicationConfigurationProperty {..}
    = FlinkApplicationConfigurationProperty
        {monitoringConfiguration = Prelude.pure newValue, ..}
instance Property "ParallelismConfiguration" FlinkApplicationConfigurationProperty where
  type PropertyType "ParallelismConfiguration" FlinkApplicationConfigurationProperty = ParallelismConfigurationProperty
  set newValue FlinkApplicationConfigurationProperty {..}
    = FlinkApplicationConfigurationProperty
        {parallelismConfiguration = Prelude.pure newValue, ..}