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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexponentialrolloutrate.html>
    IoTJobExponentialRolloutRateProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexponentialrolloutrate.html#cfn-greengrassv2-deployment-iotjobexponentialrolloutrate-baserateperminute>
                                          baseRatePerMinute :: (Value Prelude.Integer),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexponentialrolloutrate.html#cfn-greengrassv2-deployment-iotjobexponentialrolloutrate-incrementfactor>
                                          incrementFactor :: (Value Prelude.Double),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexponentialrolloutrate.html#cfn-greengrassv2-deployment-iotjobexponentialrolloutrate-rateincreasecriteria>
                                          rateIncreaseCriteria :: IoTJobRateIncreaseCriteriaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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
      {haddock_workaround_ = (), baseRatePerMinute = baseRatePerMinute,
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