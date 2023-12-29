module Stratosphere.IoT.JobTemplate.ExponentialRolloutRateProperty (
        module Exports, ExponentialRolloutRateProperty(..),
        mkExponentialRolloutRateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.JobTemplate.RateIncreaseCriteriaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExponentialRolloutRateProperty
  = ExponentialRolloutRateProperty {baseRatePerMinute :: (Value Prelude.Integer),
                                    incrementFactor :: (Value Prelude.Double),
                                    rateIncreaseCriteria :: RateIncreaseCriteriaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExponentialRolloutRateProperty ::
  Value Prelude.Integer
  -> Value Prelude.Double
     -> RateIncreaseCriteriaProperty -> ExponentialRolloutRateProperty
mkExponentialRolloutRateProperty
  baseRatePerMinute
  incrementFactor
  rateIncreaseCriteria
  = ExponentialRolloutRateProperty
      {baseRatePerMinute = baseRatePerMinute,
       incrementFactor = incrementFactor,
       rateIncreaseCriteria = rateIncreaseCriteria}
instance ToResourceProperties ExponentialRolloutRateProperty where
  toResourceProperties ExponentialRolloutRateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.ExponentialRolloutRate",
         supportsTags = Prelude.False,
         properties = ["BaseRatePerMinute" JSON..= baseRatePerMinute,
                       "IncrementFactor" JSON..= incrementFactor,
                       "RateIncreaseCriteria" JSON..= rateIncreaseCriteria]}
instance JSON.ToJSON ExponentialRolloutRateProperty where
  toJSON ExponentialRolloutRateProperty {..}
    = JSON.object
        ["BaseRatePerMinute" JSON..= baseRatePerMinute,
         "IncrementFactor" JSON..= incrementFactor,
         "RateIncreaseCriteria" JSON..= rateIncreaseCriteria]
instance Property "BaseRatePerMinute" ExponentialRolloutRateProperty where
  type PropertyType "BaseRatePerMinute" ExponentialRolloutRateProperty = Value Prelude.Integer
  set newValue ExponentialRolloutRateProperty {..}
    = ExponentialRolloutRateProperty {baseRatePerMinute = newValue, ..}
instance Property "IncrementFactor" ExponentialRolloutRateProperty where
  type PropertyType "IncrementFactor" ExponentialRolloutRateProperty = Value Prelude.Double
  set newValue ExponentialRolloutRateProperty {..}
    = ExponentialRolloutRateProperty {incrementFactor = newValue, ..}
instance Property "RateIncreaseCriteria" ExponentialRolloutRateProperty where
  type PropertyType "RateIncreaseCriteria" ExponentialRolloutRateProperty = RateIncreaseCriteriaProperty
  set newValue ExponentialRolloutRateProperty {..}
    = ExponentialRolloutRateProperty
        {rateIncreaseCriteria = newValue, ..}