module Stratosphere.GlobalAccelerator.EndpointGroup (
        module Exports, EndpointGroup(..), mkEndpointGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GlobalAccelerator.EndpointGroup.EndpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GlobalAccelerator.EndpointGroup.PortOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EndpointGroup
  = EndpointGroup {endpointConfigurations :: (Prelude.Maybe [EndpointConfigurationProperty]),
                   endpointGroupRegion :: (Value Prelude.Text),
                   healthCheckIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                   healthCheckPath :: (Prelude.Maybe (Value Prelude.Text)),
                   healthCheckPort :: (Prelude.Maybe (Value Prelude.Integer)),
                   healthCheckProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                   listenerArn :: (Value Prelude.Text),
                   portOverrides :: (Prelude.Maybe [PortOverrideProperty]),
                   thresholdCount :: (Prelude.Maybe (Value Prelude.Integer)),
                   trafficDialPercentage :: (Prelude.Maybe (Value Prelude.Double))}
mkEndpointGroup ::
  Value Prelude.Text -> Value Prelude.Text -> EndpointGroup
mkEndpointGroup endpointGroupRegion listenerArn
  = EndpointGroup
      {endpointGroupRegion = endpointGroupRegion,
       listenerArn = listenerArn,
       endpointConfigurations = Prelude.Nothing,
       healthCheckIntervalSeconds = Prelude.Nothing,
       healthCheckPath = Prelude.Nothing,
       healthCheckPort = Prelude.Nothing,
       healthCheckProtocol = Prelude.Nothing,
       portOverrides = Prelude.Nothing, thresholdCount = Prelude.Nothing,
       trafficDialPercentage = Prelude.Nothing}
instance ToResourceProperties EndpointGroup where
  toResourceProperties EndpointGroup {..}
    = ResourceProperties
        {awsType = "AWS::GlobalAccelerator::EndpointGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointGroupRegion" JSON..= endpointGroupRegion,
                            "ListenerArn" JSON..= listenerArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointConfigurations"
                                 Prelude.<$> endpointConfigurations,
                               (JSON..=) "HealthCheckIntervalSeconds"
                                 Prelude.<$> healthCheckIntervalSeconds,
                               (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
                               (JSON..=) "HealthCheckPort" Prelude.<$> healthCheckPort,
                               (JSON..=) "HealthCheckProtocol" Prelude.<$> healthCheckProtocol,
                               (JSON..=) "PortOverrides" Prelude.<$> portOverrides,
                               (JSON..=) "ThresholdCount" Prelude.<$> thresholdCount,
                               (JSON..=) "TrafficDialPercentage"
                                 Prelude.<$> trafficDialPercentage]))}
instance JSON.ToJSON EndpointGroup where
  toJSON EndpointGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointGroupRegion" JSON..= endpointGroupRegion,
               "ListenerArn" JSON..= listenerArn]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointConfigurations"
                    Prelude.<$> endpointConfigurations,
                  (JSON..=) "HealthCheckIntervalSeconds"
                    Prelude.<$> healthCheckIntervalSeconds,
                  (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
                  (JSON..=) "HealthCheckPort" Prelude.<$> healthCheckPort,
                  (JSON..=) "HealthCheckProtocol" Prelude.<$> healthCheckProtocol,
                  (JSON..=) "PortOverrides" Prelude.<$> portOverrides,
                  (JSON..=) "ThresholdCount" Prelude.<$> thresholdCount,
                  (JSON..=) "TrafficDialPercentage"
                    Prelude.<$> trafficDialPercentage])))
instance Property "EndpointConfigurations" EndpointGroup where
  type PropertyType "EndpointConfigurations" EndpointGroup = [EndpointConfigurationProperty]
  set newValue EndpointGroup {..}
    = EndpointGroup
        {endpointConfigurations = Prelude.pure newValue, ..}
instance Property "EndpointGroupRegion" EndpointGroup where
  type PropertyType "EndpointGroupRegion" EndpointGroup = Value Prelude.Text
  set newValue EndpointGroup {..}
    = EndpointGroup {endpointGroupRegion = newValue, ..}
instance Property "HealthCheckIntervalSeconds" EndpointGroup where
  type PropertyType "HealthCheckIntervalSeconds" EndpointGroup = Value Prelude.Integer
  set newValue EndpointGroup {..}
    = EndpointGroup
        {healthCheckIntervalSeconds = Prelude.pure newValue, ..}
instance Property "HealthCheckPath" EndpointGroup where
  type PropertyType "HealthCheckPath" EndpointGroup = Value Prelude.Text
  set newValue EndpointGroup {..}
    = EndpointGroup {healthCheckPath = Prelude.pure newValue, ..}
instance Property "HealthCheckPort" EndpointGroup where
  type PropertyType "HealthCheckPort" EndpointGroup = Value Prelude.Integer
  set newValue EndpointGroup {..}
    = EndpointGroup {healthCheckPort = Prelude.pure newValue, ..}
instance Property "HealthCheckProtocol" EndpointGroup where
  type PropertyType "HealthCheckProtocol" EndpointGroup = Value Prelude.Text
  set newValue EndpointGroup {..}
    = EndpointGroup {healthCheckProtocol = Prelude.pure newValue, ..}
instance Property "ListenerArn" EndpointGroup where
  type PropertyType "ListenerArn" EndpointGroup = Value Prelude.Text
  set newValue EndpointGroup {..}
    = EndpointGroup {listenerArn = newValue, ..}
instance Property "PortOverrides" EndpointGroup where
  type PropertyType "PortOverrides" EndpointGroup = [PortOverrideProperty]
  set newValue EndpointGroup {..}
    = EndpointGroup {portOverrides = Prelude.pure newValue, ..}
instance Property "ThresholdCount" EndpointGroup where
  type PropertyType "ThresholdCount" EndpointGroup = Value Prelude.Integer
  set newValue EndpointGroup {..}
    = EndpointGroup {thresholdCount = Prelude.pure newValue, ..}
instance Property "TrafficDialPercentage" EndpointGroup where
  type PropertyType "TrafficDialPercentage" EndpointGroup = Value Prelude.Double
  set newValue EndpointGroup {..}
    = EndpointGroup {trafficDialPercentage = Prelude.pure newValue, ..}