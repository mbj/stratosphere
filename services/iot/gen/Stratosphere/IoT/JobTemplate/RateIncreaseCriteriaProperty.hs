module Stratosphere.IoT.JobTemplate.RateIncreaseCriteriaProperty (
        RateIncreaseCriteriaProperty(..), mkRateIncreaseCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateIncreaseCriteriaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-rateincreasecriteria.html>
    RateIncreaseCriteriaProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-rateincreasecriteria.html#cfn-iot-jobtemplate-rateincreasecriteria-numberofnotifiedthings>
                                  numberOfNotifiedThings :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-jobtemplate-rateincreasecriteria.html#cfn-iot-jobtemplate-rateincreasecriteria-numberofsucceededthings>
                                  numberOfSucceededThings :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateIncreaseCriteriaProperty :: RateIncreaseCriteriaProperty
mkRateIncreaseCriteriaProperty
  = RateIncreaseCriteriaProperty
      {haddock_workaround_ = (),
       numberOfNotifiedThings = Prelude.Nothing,
       numberOfSucceededThings = Prelude.Nothing}
instance ToResourceProperties RateIncreaseCriteriaProperty where
  toResourceProperties RateIncreaseCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.RateIncreaseCriteria",
         supportsTags = Prelude.False,
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