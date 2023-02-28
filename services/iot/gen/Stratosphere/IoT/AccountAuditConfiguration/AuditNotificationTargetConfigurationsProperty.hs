module Stratosphere.IoT.AccountAuditConfiguration.AuditNotificationTargetConfigurationsProperty (
        module Exports, AuditNotificationTargetConfigurationsProperty(..),
        mkAuditNotificationTargetConfigurationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.AccountAuditConfiguration.AuditNotificationTargetProperty as Exports
import Stratosphere.ResourceProperties
data AuditNotificationTargetConfigurationsProperty
  = AuditNotificationTargetConfigurationsProperty {sns :: (Prelude.Maybe AuditNotificationTargetProperty)}
mkAuditNotificationTargetConfigurationsProperty ::
  AuditNotificationTargetConfigurationsProperty
mkAuditNotificationTargetConfigurationsProperty
  = AuditNotificationTargetConfigurationsProperty
      {sns = Prelude.Nothing}
instance ToResourceProperties AuditNotificationTargetConfigurationsProperty where
  toResourceProperties
    AuditNotificationTargetConfigurationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::AccountAuditConfiguration.AuditNotificationTargetConfigurations",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Sns" Prelude.<$> sns])}
instance JSON.ToJSON AuditNotificationTargetConfigurationsProperty where
  toJSON AuditNotificationTargetConfigurationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Sns" Prelude.<$> sns]))
instance Property "Sns" AuditNotificationTargetConfigurationsProperty where
  type PropertyType "Sns" AuditNotificationTargetConfigurationsProperty = AuditNotificationTargetProperty
  set newValue AuditNotificationTargetConfigurationsProperty {}
    = AuditNotificationTargetConfigurationsProperty
        {sns = Prelude.pure newValue, ..}