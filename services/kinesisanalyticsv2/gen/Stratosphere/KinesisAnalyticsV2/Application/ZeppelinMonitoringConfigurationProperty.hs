module Stratosphere.KinesisAnalyticsV2.Application.ZeppelinMonitoringConfigurationProperty (
        ZeppelinMonitoringConfigurationProperty(..),
        mkZeppelinMonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ZeppelinMonitoringConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinmonitoringconfiguration.html>
    ZeppelinMonitoringConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinmonitoringconfiguration.html#cfn-kinesisanalyticsv2-application-zeppelinmonitoringconfiguration-loglevel>
                                             logLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZeppelinMonitoringConfigurationProperty ::
  ZeppelinMonitoringConfigurationProperty
mkZeppelinMonitoringConfigurationProperty
  = ZeppelinMonitoringConfigurationProperty
      {haddock_workaround_ = (), logLevel = Prelude.Nothing}
instance ToResourceProperties ZeppelinMonitoringConfigurationProperty where
  toResourceProperties ZeppelinMonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ZeppelinMonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "LogLevel" Prelude.<$> logLevel])}
instance JSON.ToJSON ZeppelinMonitoringConfigurationProperty where
  toJSON ZeppelinMonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "LogLevel" Prelude.<$> logLevel]))
instance Property "LogLevel" ZeppelinMonitoringConfigurationProperty where
  type PropertyType "LogLevel" ZeppelinMonitoringConfigurationProperty = Value Prelude.Text
  set newValue ZeppelinMonitoringConfigurationProperty {..}
    = ZeppelinMonitoringConfigurationProperty
        {logLevel = Prelude.pure newValue, ..}