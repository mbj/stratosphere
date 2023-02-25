module Stratosphere.Cognito.UserPool.AccountRecoverySettingProperty (
        module Exports, AccountRecoverySettingProperty(..),
        mkAccountRecoverySettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPool.RecoveryOptionProperty as Exports
import Stratosphere.ResourceProperties
data AccountRecoverySettingProperty
  = AccountRecoverySettingProperty {recoveryMechanisms :: (Prelude.Maybe [RecoveryOptionProperty])}
mkAccountRecoverySettingProperty :: AccountRecoverySettingProperty
mkAccountRecoverySettingProperty
  = AccountRecoverySettingProperty
      {recoveryMechanisms = Prelude.Nothing}
instance ToResourceProperties AccountRecoverySettingProperty where
  toResourceProperties AccountRecoverySettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.AccountRecoverySetting",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RecoveryMechanisms" Prelude.<$> recoveryMechanisms])}
instance JSON.ToJSON AccountRecoverySettingProperty where
  toJSON AccountRecoverySettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RecoveryMechanisms" Prelude.<$> recoveryMechanisms]))
instance Property "RecoveryMechanisms" AccountRecoverySettingProperty where
  type PropertyType "RecoveryMechanisms" AccountRecoverySettingProperty = [RecoveryOptionProperty]
  set newValue AccountRecoverySettingProperty {}
    = AccountRecoverySettingProperty
        {recoveryMechanisms = Prelude.pure newValue, ..}