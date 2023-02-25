module Stratosphere.GreengrassV2.Deployment.IoTJobRateIncreaseCriteriaProperty (
        IoTJobRateIncreaseCriteriaProperty(..),
        mkIoTJobRateIncreaseCriteriaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobRateIncreaseCriteriaProperty
  = IoTJobRateIncreaseCriteriaProperty {numberOfNotifiedThings :: (Prelude.Maybe (Value Prelude.Integer)),
                                        numberOfSucceededThings :: (Prelude.Maybe (Value Prelude.Integer))}
mkIoTJobRateIncreaseCriteriaProperty ::
  IoTJobRateIncreaseCriteriaProperty
mkIoTJobRateIncreaseCriteriaProperty
  = IoTJobRateIncreaseCriteriaProperty
      {numberOfNotifiedThings = Prelude.Nothing,
       numberOfSucceededThings = Prelude.Nothing}
instance ToResourceProperties IoTJobRateIncreaseCriteriaProperty where
  toResourceProperties IoTJobRateIncreaseCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobRateIncreaseCriteria",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberOfNotifiedThings"
                              Prelude.<$> numberOfNotifiedThings,
                            (JSON..=) "NumberOfSucceededThings"
                              Prelude.<$> numberOfSucceededThings])}
instance JSON.ToJSON IoTJobRateIncreaseCriteriaProperty where
  toJSON IoTJobRateIncreaseCriteriaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberOfNotifiedThings"
                 Prelude.<$> numberOfNotifiedThings,
               (JSON..=) "NumberOfSucceededThings"
                 Prelude.<$> numberOfSucceededThings]))
instance Property "NumberOfNotifiedThings" IoTJobRateIncreaseCriteriaProperty where
  type PropertyType "NumberOfNotifiedThings" IoTJobRateIncreaseCriteriaProperty = Value Prelude.Integer
  set newValue IoTJobRateIncreaseCriteriaProperty {..}
    = IoTJobRateIncreaseCriteriaProperty
        {numberOfNotifiedThings = Prelude.pure newValue, ..}
instance Property "NumberOfSucceededThings" IoTJobRateIncreaseCriteriaProperty where
  type PropertyType "NumberOfSucceededThings" IoTJobRateIncreaseCriteriaProperty = Value Prelude.Integer
  set newValue IoTJobRateIncreaseCriteriaProperty {..}
    = IoTJobRateIncreaseCriteriaProperty
        {numberOfSucceededThings = Prelude.pure newValue, ..}