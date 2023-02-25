module Stratosphere.Lambda.EventInvokeConfig (
        module Exports, EventInvokeConfig(..), mkEventInvokeConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lambda.EventInvokeConfig.DestinationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EventInvokeConfig
  = EventInvokeConfig {destinationConfig :: (Prelude.Maybe DestinationConfigProperty),
                       functionName :: (Value Prelude.Text),
                       maximumEventAgeInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                       maximumRetryAttempts :: (Prelude.Maybe (Value Prelude.Integer)),
                       qualifier :: (Value Prelude.Text)}
mkEventInvokeConfig ::
  Value Prelude.Text -> Value Prelude.Text -> EventInvokeConfig
mkEventInvokeConfig functionName qualifier
  = EventInvokeConfig
      {functionName = functionName, qualifier = qualifier,
       destinationConfig = Prelude.Nothing,
       maximumEventAgeInSeconds = Prelude.Nothing,
       maximumRetryAttempts = Prelude.Nothing}
instance ToResourceProperties EventInvokeConfig where
  toResourceProperties EventInvokeConfig {..}
    = ResourceProperties
        {awsType = "AWS::Lambda::EventInvokeConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FunctionName" JSON..= functionName,
                            "Qualifier" JSON..= qualifier]
                           (Prelude.catMaybes
                              [(JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                               (JSON..=) "MaximumEventAgeInSeconds"
                                 Prelude.<$> maximumEventAgeInSeconds,
                               (JSON..=) "MaximumRetryAttempts"
                                 Prelude.<$> maximumRetryAttempts]))}
instance JSON.ToJSON EventInvokeConfig where
  toJSON EventInvokeConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FunctionName" JSON..= functionName,
               "Qualifier" JSON..= qualifier]
              (Prelude.catMaybes
                 [(JSON..=) "DestinationConfig" Prelude.<$> destinationConfig,
                  (JSON..=) "MaximumEventAgeInSeconds"
                    Prelude.<$> maximumEventAgeInSeconds,
                  (JSON..=) "MaximumRetryAttempts"
                    Prelude.<$> maximumRetryAttempts])))
instance Property "DestinationConfig" EventInvokeConfig where
  type PropertyType "DestinationConfig" EventInvokeConfig = DestinationConfigProperty
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {destinationConfig = Prelude.pure newValue, ..}
instance Property "FunctionName" EventInvokeConfig where
  type PropertyType "FunctionName" EventInvokeConfig = Value Prelude.Text
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {functionName = newValue, ..}
instance Property "MaximumEventAgeInSeconds" EventInvokeConfig where
  type PropertyType "MaximumEventAgeInSeconds" EventInvokeConfig = Value Prelude.Integer
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig
        {maximumEventAgeInSeconds = Prelude.pure newValue, ..}
instance Property "MaximumRetryAttempts" EventInvokeConfig where
  type PropertyType "MaximumRetryAttempts" EventInvokeConfig = Value Prelude.Integer
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig
        {maximumRetryAttempts = Prelude.pure newValue, ..}
instance Property "Qualifier" EventInvokeConfig where
  type PropertyType "Qualifier" EventInvokeConfig = Value Prelude.Text
  set newValue EventInvokeConfig {..}
    = EventInvokeConfig {qualifier = newValue, ..}