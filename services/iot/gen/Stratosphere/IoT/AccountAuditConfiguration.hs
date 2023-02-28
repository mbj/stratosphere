module Stratosphere.IoT.AccountAuditConfiguration (
        module Exports, AccountAuditConfiguration(..),
        mkAccountAuditConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.AuditCheckConfigurationsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.AuditNotificationTargetConfigurationsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AccountAuditConfiguration
  = AccountAuditConfiguration {accountId :: (Value Prelude.Text),
                               auditCheckConfigurations :: AuditCheckConfigurationsProperty,
                               auditNotificationTargetConfigurations :: (Prelude.Maybe AuditNotificationTargetConfigurationsProperty),
                               roleArn :: (Value Prelude.Text)}
mkAccountAuditConfiguration ::
  Value Prelude.Text
  -> AuditCheckConfigurationsProperty
     -> Value Prelude.Text -> AccountAuditConfiguration
mkAccountAuditConfiguration
  accountId
  auditCheckConfigurations
  roleArn
  = AccountAuditConfiguration
      {accountId = accountId,
       auditCheckConfigurations = auditCheckConfigurations,
       roleArn = roleArn,
       auditNotificationTargetConfigurations = Prelude.Nothing}
instance ToResourceProperties AccountAuditConfiguration where
  toResourceProperties AccountAuditConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId,
                            "AuditCheckConfigurations" JSON..= auditCheckConfigurations,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AuditNotificationTargetConfigurations"
                                 Prelude.<$> auditNotificationTargetConfigurations]))}
instance JSON.ToJSON AccountAuditConfiguration where
  toJSON AccountAuditConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId,
               "AuditCheckConfigurations" JSON..= auditCheckConfigurations,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AuditNotificationTargetConfigurations"
                    Prelude.<$> auditNotificationTargetConfigurations])))
instance Property "AccountId" AccountAuditConfiguration where
  type PropertyType "AccountId" AccountAuditConfiguration = Value Prelude.Text
  set newValue AccountAuditConfiguration {..}
    = AccountAuditConfiguration {accountId = newValue, ..}
instance Property "AuditCheckConfigurations" AccountAuditConfiguration where
  type PropertyType "AuditCheckConfigurations" AccountAuditConfiguration = AuditCheckConfigurationsProperty
  set newValue AccountAuditConfiguration {..}
    = AccountAuditConfiguration
        {auditCheckConfigurations = newValue, ..}
instance Property "AuditNotificationTargetConfigurations" AccountAuditConfiguration where
  type PropertyType "AuditNotificationTargetConfigurations" AccountAuditConfiguration = AuditNotificationTargetConfigurationsProperty
  set newValue AccountAuditConfiguration {..}
    = AccountAuditConfiguration
        {auditNotificationTargetConfigurations = Prelude.pure newValue, ..}
instance Property "RoleArn" AccountAuditConfiguration where
  type PropertyType "RoleArn" AccountAuditConfiguration = Value Prelude.Text
  set newValue AccountAuditConfiguration {..}
    = AccountAuditConfiguration {roleArn = newValue, ..}