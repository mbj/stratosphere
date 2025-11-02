module Stratosphere.AppRunner.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.Service.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.HealthCheckConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.InstanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.ServiceObservabilityConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AppRunner.Service.SourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html>
    Service {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-autoscalingconfigurationarn>
             autoScalingConfigurationArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-encryptionconfiguration>
             encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-healthcheckconfiguration>
             healthCheckConfiguration :: (Prelude.Maybe HealthCheckConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-instanceconfiguration>
             instanceConfiguration :: (Prelude.Maybe InstanceConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-networkconfiguration>
             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-observabilityconfiguration>
             observabilityConfiguration :: (Prelude.Maybe ServiceObservabilityConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-servicename>
             serviceName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-sourceconfiguration>
             sourceConfiguration :: SourceConfigurationProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-service.html#cfn-apprunner-service-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkService :: SourceConfigurationProperty -> Service
mkService sourceConfiguration
  = Service
      {haddock_workaround_ = (),
       sourceConfiguration = sourceConfiguration,
       autoScalingConfigurationArn = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       healthCheckConfiguration = Prelude.Nothing,
       instanceConfiguration = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       observabilityConfiguration = Prelude.Nothing,
       serviceName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::Service", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingConfigurationArn"
                                 Prelude.<$> autoScalingConfigurationArn,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "HealthCheckConfiguration"
                                 Prelude.<$> healthCheckConfiguration,
                               (JSON..=) "InstanceConfiguration"
                                 Prelude.<$> instanceConfiguration,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "ObservabilityConfiguration"
                                 Prelude.<$> observabilityConfiguration,
                               (JSON..=) "ServiceName" Prelude.<$> serviceName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingConfigurationArn"
                    Prelude.<$> autoScalingConfigurationArn,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "HealthCheckConfiguration"
                    Prelude.<$> healthCheckConfiguration,
                  (JSON..=) "InstanceConfiguration"
                    Prelude.<$> instanceConfiguration,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "ObservabilityConfiguration"
                    Prelude.<$> observabilityConfiguration,
                  (JSON..=) "ServiceName" Prelude.<$> serviceName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoScalingConfigurationArn" Service where
  type PropertyType "AutoScalingConfigurationArn" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {autoScalingConfigurationArn = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" Service where
  type PropertyType "EncryptionConfiguration" Service = EncryptionConfigurationProperty
  set newValue Service {..}
    = Service {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "HealthCheckConfiguration" Service where
  type PropertyType "HealthCheckConfiguration" Service = HealthCheckConfigurationProperty
  set newValue Service {..}
    = Service {healthCheckConfiguration = Prelude.pure newValue, ..}
instance Property "InstanceConfiguration" Service where
  type PropertyType "InstanceConfiguration" Service = InstanceConfigurationProperty
  set newValue Service {..}
    = Service {instanceConfiguration = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" Service where
  type PropertyType "NetworkConfiguration" Service = NetworkConfigurationProperty
  set newValue Service {..}
    = Service {networkConfiguration = Prelude.pure newValue, ..}
instance Property "ObservabilityConfiguration" Service where
  type PropertyType "ObservabilityConfiguration" Service = ServiceObservabilityConfigurationProperty
  set newValue Service {..}
    = Service {observabilityConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceName" Service where
  type PropertyType "ServiceName" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {serviceName = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" Service where
  type PropertyType "SourceConfiguration" Service = SourceConfigurationProperty
  set newValue Service {..}
    = Service {sourceConfiguration = newValue, ..}
instance Property "Tags" Service where
  type PropertyType "Tags" Service = [Tag]
  set newValue Service {..}
    = Service {tags = Prelude.pure newValue, ..}