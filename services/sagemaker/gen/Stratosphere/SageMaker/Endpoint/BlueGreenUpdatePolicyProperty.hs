module Stratosphere.SageMaker.Endpoint.BlueGreenUpdatePolicyProperty (
        module Exports, BlueGreenUpdatePolicyProperty(..),
        mkBlueGreenUpdatePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.TrafficRoutingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlueGreenUpdatePolicyProperty
  = BlueGreenUpdatePolicyProperty {maximumExecutionTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                   terminationWaitInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                   trafficRoutingConfiguration :: TrafficRoutingConfigProperty}
mkBlueGreenUpdatePolicyProperty ::
  TrafficRoutingConfigProperty -> BlueGreenUpdatePolicyProperty
mkBlueGreenUpdatePolicyProperty trafficRoutingConfiguration
  = BlueGreenUpdatePolicyProperty
      {trafficRoutingConfiguration = trafficRoutingConfiguration,
       maximumExecutionTimeoutInSeconds = Prelude.Nothing,
       terminationWaitInSeconds = Prelude.Nothing}
instance ToResourceProperties BlueGreenUpdatePolicyProperty where
  toResourceProperties BlueGreenUpdatePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.BlueGreenUpdatePolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TrafficRoutingConfiguration" JSON..= trafficRoutingConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "MaximumExecutionTimeoutInSeconds"
                                 Prelude.<$> maximumExecutionTimeoutInSeconds,
                               (JSON..=) "TerminationWaitInSeconds"
                                 Prelude.<$> terminationWaitInSeconds]))}
instance JSON.ToJSON BlueGreenUpdatePolicyProperty where
  toJSON BlueGreenUpdatePolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TrafficRoutingConfiguration" JSON..= trafficRoutingConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "MaximumExecutionTimeoutInSeconds"
                    Prelude.<$> maximumExecutionTimeoutInSeconds,
                  (JSON..=) "TerminationWaitInSeconds"
                    Prelude.<$> terminationWaitInSeconds])))
instance Property "MaximumExecutionTimeoutInSeconds" BlueGreenUpdatePolicyProperty where
  type PropertyType "MaximumExecutionTimeoutInSeconds" BlueGreenUpdatePolicyProperty = Value Prelude.Integer
  set newValue BlueGreenUpdatePolicyProperty {..}
    = BlueGreenUpdatePolicyProperty
        {maximumExecutionTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "TerminationWaitInSeconds" BlueGreenUpdatePolicyProperty where
  type PropertyType "TerminationWaitInSeconds" BlueGreenUpdatePolicyProperty = Value Prelude.Integer
  set newValue BlueGreenUpdatePolicyProperty {..}
    = BlueGreenUpdatePolicyProperty
        {terminationWaitInSeconds = Prelude.pure newValue, ..}
instance Property "TrafficRoutingConfiguration" BlueGreenUpdatePolicyProperty where
  type PropertyType "TrafficRoutingConfiguration" BlueGreenUpdatePolicyProperty = TrafficRoutingConfigProperty
  set newValue BlueGreenUpdatePolicyProperty {..}
    = BlueGreenUpdatePolicyProperty
        {trafficRoutingConfiguration = newValue, ..}