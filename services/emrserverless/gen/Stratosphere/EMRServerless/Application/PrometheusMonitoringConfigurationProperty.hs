module Stratosphere.EMRServerless.Application.PrometheusMonitoringConfigurationProperty (
        PrometheusMonitoringConfigurationProperty(..),
        mkPrometheusMonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrometheusMonitoringConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-prometheusmonitoringconfiguration.html>
    PrometheusMonitoringConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emrserverless-application-prometheusmonitoringconfiguration.html#cfn-emrserverless-application-prometheusmonitoringconfiguration-remotewriteurl>
                                               remoteWriteUrl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrometheusMonitoringConfigurationProperty ::
  PrometheusMonitoringConfigurationProperty
mkPrometheusMonitoringConfigurationProperty
  = PrometheusMonitoringConfigurationProperty
      {haddock_workaround_ = (), remoteWriteUrl = Prelude.Nothing}
instance ToResourceProperties PrometheusMonitoringConfigurationProperty where
  toResourceProperties PrometheusMonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.PrometheusMonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RemoteWriteUrl" Prelude.<$> remoteWriteUrl])}
instance JSON.ToJSON PrometheusMonitoringConfigurationProperty where
  toJSON PrometheusMonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RemoteWriteUrl" Prelude.<$> remoteWriteUrl]))
instance Property "RemoteWriteUrl" PrometheusMonitoringConfigurationProperty where
  type PropertyType "RemoteWriteUrl" PrometheusMonitoringConfigurationProperty = Value Prelude.Text
  set newValue PrometheusMonitoringConfigurationProperty {..}
    = PrometheusMonitoringConfigurationProperty
        {remoteWriteUrl = Prelude.pure newValue, ..}