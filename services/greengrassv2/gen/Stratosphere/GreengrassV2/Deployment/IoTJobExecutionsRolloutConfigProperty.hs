module Stratosphere.GreengrassV2.Deployment.IoTJobExecutionsRolloutConfigProperty (
        module Exports, IoTJobExecutionsRolloutConfigProperty(..),
        mkIoTJobExecutionsRolloutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobExponentialRolloutRateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobExecutionsRolloutConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexecutionsrolloutconfig.html>
    IoTJobExecutionsRolloutConfigProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexecutionsrolloutconfig.html#cfn-greengrassv2-deployment-iotjobexecutionsrolloutconfig-exponentialrate>
                                           exponentialRate :: (Prelude.Maybe IoTJobExponentialRolloutRateProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobexecutionsrolloutconfig.html#cfn-greengrassv2-deployment-iotjobexecutionsrolloutconfig-maximumperminute>
                                           maximumPerMinute :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIoTJobExecutionsRolloutConfigProperty ::
  IoTJobExecutionsRolloutConfigProperty
mkIoTJobExecutionsRolloutConfigProperty
  = IoTJobExecutionsRolloutConfigProperty
      {haddock_workaround_ = (), exponentialRate = Prelude.Nothing,
       maximumPerMinute = Prelude.Nothing}
instance ToResourceProperties IoTJobExecutionsRolloutConfigProperty where
  toResourceProperties IoTJobExecutionsRolloutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobExecutionsRolloutConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExponentialRate" Prelude.<$> exponentialRate,
                            (JSON..=) "MaximumPerMinute" Prelude.<$> maximumPerMinute])}
instance JSON.ToJSON IoTJobExecutionsRolloutConfigProperty where
  toJSON IoTJobExecutionsRolloutConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExponentialRate" Prelude.<$> exponentialRate,
               (JSON..=) "MaximumPerMinute" Prelude.<$> maximumPerMinute]))
instance Property "ExponentialRate" IoTJobExecutionsRolloutConfigProperty where
  type PropertyType "ExponentialRate" IoTJobExecutionsRolloutConfigProperty = IoTJobExponentialRolloutRateProperty
  set newValue IoTJobExecutionsRolloutConfigProperty {..}
    = IoTJobExecutionsRolloutConfigProperty
        {exponentialRate = Prelude.pure newValue, ..}
instance Property "MaximumPerMinute" IoTJobExecutionsRolloutConfigProperty where
  type PropertyType "MaximumPerMinute" IoTJobExecutionsRolloutConfigProperty = Value Prelude.Integer
  set newValue IoTJobExecutionsRolloutConfigProperty {..}
    = IoTJobExecutionsRolloutConfigProperty
        {maximumPerMinute = Prelude.pure newValue, ..}