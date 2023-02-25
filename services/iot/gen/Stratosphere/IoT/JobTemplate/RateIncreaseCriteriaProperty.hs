module Stratosphere.IoT.JobTemplate.RateIncreaseCriteriaProperty (
        RateIncreaseCriteriaProperty(..), mkRateIncreaseCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateIncreaseCriteriaProperty
  = RateIncreaseCriteriaProperty {numberOfNotifiedThings :: (Prelude.Maybe (Value Prelude.Integer)),
                                  numberOfSucceededThings :: (Prelude.Maybe (Value Prelude.Integer))}
mkRateIncreaseCriteriaProperty :: RateIncreaseCriteriaProperty
mkRateIncreaseCriteriaProperty
  = RateIncreaseCriteriaProperty
      {numberOfNotifiedThings = Prelude.Nothing,
       numberOfSucceededThings = Prelude.Nothing}
instance ToResourceProperties RateIncreaseCriteriaProperty where
  toResourceProperties RateIncreaseCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.RateIncreaseCriteria",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberOfNotifiedThings"
                              Prelude.<$> numberOfNotifiedThings,
                            (JSON..=) "NumberOfSucceededThings"
                              Prelude.<$> numberOfSucceededThings])}
instance JSON.ToJSON RateIncreaseCriteriaProperty where
  toJSON RateIncreaseCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberOfNotifiedThings"
                 Prelude.<$> numberOfNotifiedThings,
               (JSON..=) "NumberOfSucceededThings"
                 Prelude.<$> numberOfSucceededThings]))
instance Property "NumberOfNotifiedThings" RateIncreaseCriteriaProperty where
  type PropertyType "NumberOfNotifiedThings" RateIncreaseCriteriaProperty = Value Prelude.Integer
  set newValue RateIncreaseCriteriaProperty {..}
    = RateIncreaseCriteriaProperty
        {numberOfNotifiedThings = Prelude.pure newValue, ..}
instance Property "NumberOfSucceededThings" RateIncreaseCriteriaProperty where
  type PropertyType "NumberOfSucceededThings" RateIncreaseCriteriaProperty = Value Prelude.Integer
  set newValue RateIncreaseCriteriaProperty {..}
    = RateIncreaseCriteriaProperty
        {numberOfSucceededThings = Prelude.pure newValue, ..}