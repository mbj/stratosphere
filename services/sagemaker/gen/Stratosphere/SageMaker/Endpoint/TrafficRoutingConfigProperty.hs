module Stratosphere.SageMaker.Endpoint.TrafficRoutingConfigProperty (
        module Exports, TrafficRoutingConfigProperty(..),
        mkTrafficRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Endpoint.CapacitySizeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficRoutingConfigProperty
  = TrafficRoutingConfigProperty {canarySize :: (Prelude.Maybe CapacitySizeProperty),
                                  linearStepSize :: (Prelude.Maybe CapacitySizeProperty),
                                  type' :: (Value Prelude.Text),
                                  waitIntervalInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkTrafficRoutingConfigProperty ::
  Value Prelude.Text -> TrafficRoutingConfigProperty
mkTrafficRoutingConfigProperty type'
  = TrafficRoutingConfigProperty
      {type' = type', canarySize = Prelude.Nothing,
       linearStepSize = Prelude.Nothing,
       waitIntervalInSeconds = Prelude.Nothing}
instance ToResourceProperties TrafficRoutingConfigProperty where
  toResourceProperties TrafficRoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.TrafficRoutingConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "CanarySize" Prelude.<$> canarySize,
                               (JSON..=) "LinearStepSize" Prelude.<$> linearStepSize,
                               (JSON..=) "WaitIntervalInSeconds"
                                 Prelude.<$> waitIntervalInSeconds]))}
instance JSON.ToJSON TrafficRoutingConfigProperty where
  toJSON TrafficRoutingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "CanarySize" Prelude.<$> canarySize,
                  (JSON..=) "LinearStepSize" Prelude.<$> linearStepSize,
                  (JSON..=) "WaitIntervalInSeconds"
                    Prelude.<$> waitIntervalInSeconds])))
instance Property "CanarySize" TrafficRoutingConfigProperty where
  type PropertyType "CanarySize" TrafficRoutingConfigProperty = CapacitySizeProperty
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty
        {canarySize = Prelude.pure newValue, ..}
instance Property "LinearStepSize" TrafficRoutingConfigProperty where
  type PropertyType "LinearStepSize" TrafficRoutingConfigProperty = CapacitySizeProperty
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty
        {linearStepSize = Prelude.pure newValue, ..}
instance Property "Type" TrafficRoutingConfigProperty where
  type PropertyType "Type" TrafficRoutingConfigProperty = Value Prelude.Text
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty {type' = newValue, ..}
instance Property "WaitIntervalInSeconds" TrafficRoutingConfigProperty where
  type PropertyType "WaitIntervalInSeconds" TrafficRoutingConfigProperty = Value Prelude.Integer
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty
        {waitIntervalInSeconds = Prelude.pure newValue, ..}