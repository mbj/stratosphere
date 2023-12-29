module Stratosphere.IoT.ProvisioningTemplate.ProvisioningHookProperty (
        ProvisioningHookProperty(..), mkProvisioningHookProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningHookProperty
  = ProvisioningHookProperty {payloadVersion :: (Prelude.Maybe (Value Prelude.Text)),
                              targetArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProvisioningHookProperty :: ProvisioningHookProperty
mkProvisioningHookProperty
  = ProvisioningHookProperty
      {payloadVersion = Prelude.Nothing, targetArn = Prelude.Nothing}
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