module Stratosphere.GreengrassV2.Deployment.IoTJobTimeoutConfigProperty (
        IoTJobTimeoutConfigProperty(..), mkIoTJobTimeoutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IoTJobTimeoutConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobtimeoutconfig.html>
    IoTJobTimeoutConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-iotjobtimeoutconfig.html#cfn-greengrassv2-deployment-iotjobtimeoutconfig-inprogresstimeoutinminutes>
                                 inProgressTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIoTJobTimeoutConfigProperty :: IoTJobTimeoutConfigProperty
mkIoTJobTimeoutConfigProperty
  = IoTJobTimeoutConfigProperty
      {haddock_workaround_ = (),
       inProgressTimeoutInMinutes = Prelude.Nothing}
instance ToResourceProperties IoTJobTimeoutConfigProperty where
  toResourceProperties IoTJobTimeoutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.IoTJobTimeoutConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InProgressTimeoutInMinutes"
                              Prelude.<$> inProgressTimeoutInMinutes])}
instance JSON.ToJSON IoTJobTimeoutConfigProperty where
  toJSON IoTJobTimeoutConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InProgressTimeoutInMinutes"
                 Prelude.<$> inProgressTimeoutInMinutes]))
instance Property "InProgressTimeoutInMinutes" IoTJobTimeoutConfigProperty where
  type PropertyType "InProgressTimeoutInMinutes" IoTJobTimeoutConfigProperty = Value Prelude.Integer
  set newValue IoTJobTimeoutConfigProperty {..}
    = IoTJobTimeoutConfigProperty
        {inProgressTimeoutInMinutes = Prelude.pure newValue, ..}