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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobrateincreasecriteria.html>
    IoTJobRateIncreaseCriteriaProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobrateincreasecriteria.html#cfn-greengrassv2-deployment-iotjobrateincreasecriteria-numberofnotifiedthings>
                                        numberOfNotifiedThings :: (Prelude.Maybe (Value Prelude.Integer)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobrateincreasecriteria.html#cfn-greengrassv2-deployment-iotjobrateincreasecriteria-numberofsucceededthings>
                                        numberOfSucceededThings :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIoTJobRateIncreaseCriteriaProperty ::
  IoTJobRateIncreaseCriteriaProperty
mkIoTJobRateIncreaseCriteriaProperty
  = IoTJobRateIncreaseCriteriaProperty
      {haddock_workaround_ = (),
       numberOfNotifiedThings = Prelude.Nothing,
       numberOfSucceededThings = Prelude.Nothing}
instance ToResourceProperties IoTJobRateIncreaseCriteriaProperty where
  toResourceProperties IoTJobRateIncreaseCriteriaProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobRateIncreaseCriteria",
         supportsTags = Prelude.False,
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