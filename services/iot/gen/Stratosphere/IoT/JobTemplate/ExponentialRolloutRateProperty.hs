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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-exponentialrolloutrate.html>
    ExponentialRolloutRateProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-exponentialrolloutrate.html#cfn-iot-jobtemplate-exponentialrolloutrate-baserateperminute>
                                    baseRatePerMinute :: (Value Prelude.Integer),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-exponentialrolloutrate.html#cfn-iot-jobtemplate-exponentialrolloutrate-incrementfactor>
                                    incrementFactor :: (Value Prelude.Double),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-exponentialrolloutrate.html#cfn-iot-jobtemplate-exponentialrolloutrate-rateincreasecriteria>
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
      {haddock_workaround_ = (), baseRatePerMinute = baseRatePerMinute,
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