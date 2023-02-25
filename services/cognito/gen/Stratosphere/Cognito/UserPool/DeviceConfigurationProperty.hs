module Stratosphere.Cognito.UserPool.DeviceConfigurationProperty (
        DeviceConfigurationProperty(..), mkDeviceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceConfigurationProperty
  = DeviceConfigurationProperty {challengeRequiredOnNewDevice :: (Prelude.Maybe (Value Prelude.Bool)),
                                 deviceOnlyRememberedOnUserPrompt :: (Prelude.Maybe (Value Prelude.Bool))}
mkDeviceConfigurationProperty :: DeviceConfigurationProperty
mkDeviceConfigurationProperty
  = DeviceConfigurationProperty
      {challengeRequiredOnNewDevice = Prelude.Nothing,
       deviceOnlyRememberedOnUserPrompt = Prelude.Nothing}
instance ToResourceProperties DeviceConfigurationProperty where
  toResourceProperties DeviceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.DeviceConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChallengeRequiredOnNewDevice"
                              Prelude.<$> challengeRequiredOnNewDevice,
                            (JSON..=) "DeviceOnlyRememberedOnUserPrompt"
                              Prelude.<$> deviceOnlyRememberedOnUserPrompt])}
instance JSON.ToJSON DeviceConfigurationProperty where
  toJSON DeviceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChallengeRequiredOnNewDevice"
                 Prelude.<$> challengeRequiredOnNewDevice,
               (JSON..=) "DeviceOnlyRememberedOnUserPrompt"
                 Prelude.<$> deviceOnlyRememberedOnUserPrompt]))
instance Property "ChallengeRequiredOnNewDevice" DeviceConfigurationProperty where
  type PropertyType "ChallengeRequiredOnNewDevice" DeviceConfigurationProperty = Value Prelude.Bool
  set newValue DeviceConfigurationProperty {..}
    = DeviceConfigurationProperty
        {challengeRequiredOnNewDevice = Prelude.pure newValue, ..}
instance Property "DeviceOnlyRememberedOnUserPrompt" DeviceConfigurationProperty where
  type PropertyType "DeviceOnlyRememberedOnUserPrompt" DeviceConfigurationProperty = Value Prelude.Bool
  set newValue DeviceConfigurationProperty {..}
    = DeviceConfigurationProperty
        {deviceOnlyRememberedOnUserPrompt = Prelude.pure newValue, ..}