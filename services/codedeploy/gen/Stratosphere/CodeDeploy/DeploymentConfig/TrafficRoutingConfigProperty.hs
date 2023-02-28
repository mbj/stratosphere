module Stratosphere.CodeDeploy.DeploymentConfig.TrafficRoutingConfigProperty (
        module Exports, TrafficRoutingConfigProperty(..),
        mkTrafficRoutingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.TimeBasedCanaryProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeDeploy.DeploymentConfig.TimeBasedLinearProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrafficRoutingConfigProperty
  = TrafficRoutingConfigProperty {timeBasedCanary :: (Prelude.Maybe TimeBasedCanaryProperty),
                                  timeBasedLinear :: (Prelude.Maybe TimeBasedLinearProperty),
                                  type' :: (Value Prelude.Text)}
mkTrafficRoutingConfigProperty ::
  Value Prelude.Text -> TrafficRoutingConfigProperty
mkTrafficRoutingConfigProperty type'
  = TrafficRoutingConfigProperty
      {type' = type', timeBasedCanary = Prelude.Nothing,
       timeBasedLinear = Prelude.Nothing}
instance ToResourceProperties TrafficRoutingConfigProperty where
  toResourceProperties TrafficRoutingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeDeploy::DeploymentConfig.TrafficRoutingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "TimeBasedCanary" Prelude.<$> timeBasedCanary,
                               (JSON..=) "TimeBasedLinear" Prelude.<$> timeBasedLinear]))}
instance JSON.ToJSON TrafficRoutingConfigProperty where
  toJSON TrafficRoutingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "TimeBasedCanary" Prelude.<$> timeBasedCanary,
                  (JSON..=) "TimeBasedLinear" Prelude.<$> timeBasedLinear])))
instance Property "TimeBasedCanary" TrafficRoutingConfigProperty where
  type PropertyType "TimeBasedCanary" TrafficRoutingConfigProperty = TimeBasedCanaryProperty
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty
        {timeBasedCanary = Prelude.pure newValue, ..}
instance Property "TimeBasedLinear" TrafficRoutingConfigProperty where
  type PropertyType "TimeBasedLinear" TrafficRoutingConfigProperty = TimeBasedLinearProperty
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty
        {timeBasedLinear = Prelude.pure newValue, ..}
instance Property "Type" TrafficRoutingConfigProperty where
  type PropertyType "Type" TrafficRoutingConfigProperty = Value Prelude.Text
  set newValue TrafficRoutingConfigProperty {..}
    = TrafficRoutingConfigProperty {type' = newValue, ..}