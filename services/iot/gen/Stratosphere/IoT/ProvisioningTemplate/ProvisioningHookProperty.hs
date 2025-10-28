module Stratosphere.IoT.ProvisioningTemplate.ProvisioningHookProperty (
        ProvisioningHookProperty(..), mkProvisioningHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningHookProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html>
    ProvisioningHookProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html#cfn-iot-provisioningtemplate-provisioninghook-payloadversion>
                              payloadVersion :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-provisioningtemplate-provisioninghook.html#cfn-iot-provisioningtemplate-provisioninghook-targetarn>
                              targetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningHookProperty :: ProvisioningHookProperty
mkProvisioningHookProperty
  = ProvisioningHookProperty
      {haddock_workaround_ = (), payloadVersion = Prelude.Nothing,
       targetArn = Prelude.Nothing}
instance ToResourceProperties ProvisioningHookProperty where
  toResourceProperties ProvisioningHookProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ProvisioningTemplate.ProvisioningHook",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PayloadVersion" Prelude.<$> payloadVersion,
                            (JSON..=) "TargetArn" Prelude.<$> targetArn])}
instance JSON.ToJSON ProvisioningHookProperty where
  toJSON ProvisioningHookProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PayloadVersion" Prelude.<$> payloadVersion,
               (JSON..=) "TargetArn" Prelude.<$> targetArn]))
instance Property "PayloadVersion" ProvisioningHookProperty where
  type PropertyType "PayloadVersion" ProvisioningHookProperty = Value Prelude.Text
  set newValue ProvisioningHookProperty {..}
    = ProvisioningHookProperty
        {payloadVersion = Prelude.pure newValue, ..}
instance Property "TargetArn" ProvisioningHookProperty where
  type PropertyType "TargetArn" ProvisioningHookProperty = Value Prelude.Text
  set newValue ProvisioningHookProperty {..}
    = ProvisioningHookProperty {targetArn = Prelude.pure newValue, ..}