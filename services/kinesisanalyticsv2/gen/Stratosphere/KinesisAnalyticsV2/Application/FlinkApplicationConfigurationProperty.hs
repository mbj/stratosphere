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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html>
    FlinkApplicationConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-checkpointconfiguration>
                                           checkpointConfiguration :: (Prelude.Maybe CheckpointConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-monitoringconfiguration>
                                           monitoringConfiguration :: (Prelude.Maybe MonitoringConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-flinkapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-flinkapplicationconfiguration-parallelismconfiguration>
                                           parallelismConfiguration :: (Prelude.Maybe ParallelismConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlinkApplicationConfigurationProperty ::
  FlinkApplicationConfigurationProperty
mkFlinkApplicationConfigurationProperty
  = FlinkApplicationConfigurationProperty
      {haddock_workaround_ = (),
       checkpointConfiguration = Prelude.Nothing,
       monitoringConfiguration = Prelude.Nothing,
       parallelismConfiguration = Prelude.Nothing}
instance ToResourceProperties FlinkApplicationConfigurationProperty where
  toResourceProperties FlinkApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.FlinkApplicationConfiguration",
         supportsTags = Prelude.False,
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