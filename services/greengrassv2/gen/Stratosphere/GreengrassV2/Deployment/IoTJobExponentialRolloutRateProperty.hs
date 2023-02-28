module Stratosphere.GreengrassV2.Deployment.IoTJobExponentialRolloutRateProperty (
        module Exports, IoTJobExponentialRolloutRateProperty(..),
        mkIoTJobExponentialRolloutRateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobRateIncreaseCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobExponentialRolloutRateProperty
  = IoTJobExponentialRolloutRateProperty {baseRatePerMinute :: (Value Prelude.Integer),
                                          incrementFactor :: (Value Prelude.Double),
                                          rateIncreaseCriteria :: IoTJobRateIncreaseCriteriaProperty}
mkIoTJobExponentialRolloutRateProperty ::
  Value Prelude.Integer
  -> Value Prelude.Double
     -> IoTJobRateIncreaseCriteriaProperty
        -> IoTJobExponentialRolloutRateProperty
mkIoTJobExponentialRolloutRateProperty
  baseRatePerMinute
  incrementFactor
  rateIncreaseCriteria
  = IoTJobExponentialRolloutRateProperty
      {baseRatePerMinute = baseRatePerMinute,
       incrementFactor = incrementFactor,
       rateIncreaseCriteria = rateIncreaseCriteria}
instance ToResourceProperties IoTJobExponentialRolloutRateProperty where
  toResourceProperties IoTJobExponentialRolloutRateProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobExponentialRolloutRate",
         supportsTags = Prelude.False,
         properties = ["BaseRatePerMinute" JSON..= baseRatePerMinute,
                       "IncrementFactor" JSON..= incrementFactor,
                       "RateIncreaseCriteria" JSON..= rateIncreaseCriteria]}
instance JSON.ToJSON IoTJobExponentialRolloutRateProperty where
  toJSON IoTJobExponentialRolloutRateProperty {..}
    = JSON.object
        ["BaseRatePerMinute" JSON..= baseRatePerMinute,
         "IncrementFactor" JSON..= incrementFactor,
         "RateIncreaseCriteria" JSON..= rateIncreaseCriteria]
instance Property "BaseRatePerMinute" IoTJobExponentialRolloutRateProperty where
  type PropertyType "BaseRatePerMinute" IoTJobExponentialRolloutRateProperty = Value Prelude.Integer
  set newValue IoTJobExponentialRolloutRateProperty {..}
    = IoTJobExponentialRolloutRateProperty
        {baseRatePerMinute = newValue, ..}
instance Property "IncrementFactor" IoTJobExponentialRolloutRateProperty where
  type PropertyType "IncrementFactor" IoTJobExponentialRolloutRateProperty = Value Prelude.Double
  set newValue IoTJobExponentialRolloutRateProperty {..}
    = IoTJobExponentialRolloutRateProperty
        {incrementFactor = newValue, ..}
instance Property "RateIncreaseCriteria" IoTJobExponentialRolloutRateProperty where
  type PropertyType "RateIncreaseCriteria" IoTJobExponentialRolloutRateProperty = IoTJobRateIncreaseCriteriaProperty
  set newValue IoTJobExponentialRolloutRateProperty {..}
    = IoTJobExponentialRolloutRateProperty
        {rateIncreaseCriteria = newValue, ..}