module Stratosphere.SecurityHub.SecurityControl (
        module Exports, SecurityControl(..), mkSecurityControl
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.SecurityControl.ParameterConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SecurityControl
  = SecurityControl {lastUpdateReason :: (Prelude.Maybe (Value Prelude.Text)),
                     parameters :: (Prelude.Map Prelude.Text ParameterConfigurationProperty),
                     securityControlArn :: (Prelude.Maybe (Value Prelude.Text)),
                     securityControlId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecurityControl ::
  Prelude.Map Prelude.Text ParameterConfigurationProperty
  -> SecurityControl
mkSecurityControl parameters
  = SecurityControl
      {parameters = parameters, lastUpdateReason = Prelude.Nothing,
       securityControlArn = Prelude.Nothing,
       securityControlId = Prelude.Nothing}
instance ToResourceProperties SecurityControl where
  toResourceProperties SecurityControl {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::SecurityControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Parameters" JSON..= parameters]
                           (Prelude.catMaybes
                              [(JSON..=) "LastUpdateReason" Prelude.<$> lastUpdateReason,
                               (JSON..=) "SecurityControlArn" Prelude.<$> securityControlArn,
                               (JSON..=) "SecurityControlId" Prelude.<$> securityControlId]))}
instance JSON.ToJSON SecurityControl where
  toJSON SecurityControl {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Parameters" JSON..= parameters]
              (Prelude.catMaybes
                 [(JSON..=) "LastUpdateReason" Prelude.<$> lastUpdateReason,
                  (JSON..=) "SecurityControlArn" Prelude.<$> securityControlArn,
                  (JSON..=) "SecurityControlId" Prelude.<$> securityControlId])))
instance Property "LastUpdateReason" SecurityControl where
  type PropertyType "LastUpdateReason" SecurityControl = Value Prelude.Text
  set newValue SecurityControl {..}
    = SecurityControl {lastUpdateReason = Prelude.pure newValue, ..}
instance Property "Parameters" SecurityControl where
  type PropertyType "Parameters" SecurityControl = Prelude.Map Prelude.Text ParameterConfigurationProperty
  set newValue SecurityControl {..}
    = SecurityControl {parameters = newValue, ..}
instance Property "SecurityControlArn" SecurityControl where
  type PropertyType "SecurityControlArn" SecurityControl = Value Prelude.Text
  set newValue SecurityControl {..}
    = SecurityControl {securityControlArn = Prelude.pure newValue, ..}
instance Property "SecurityControlId" SecurityControl where
  type PropertyType "SecurityControlId" SecurityControl = Value Prelude.Text
  set newValue SecurityControl {..}
    = SecurityControl {securityControlId = Prelude.pure newValue, ..}