module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationTypeProperty (
        module Exports, AccountTakeoverRiskConfigurationTypeProperty(..),
        mkAccountTakeoverRiskConfigurationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.AccountTakeoverActionsTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.NotifyConfigurationTypeProperty as Exports
import Stratosphere.ResourceProperties
data AccountTakeoverRiskConfigurationTypeProperty
  = AccountTakeoverRiskConfigurationTypeProperty {actions :: AccountTakeoverActionsTypeProperty,
                                                  notifyConfiguration :: (Prelude.Maybe NotifyConfigurationTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAccountTakeoverRiskConfigurationTypeProperty ::
  AccountTakeoverActionsTypeProperty
  -> AccountTakeoverRiskConfigurationTypeProperty
mkAccountTakeoverRiskConfigurationTypeProperty actions
  = AccountTakeoverRiskConfigurationTypeProperty
      {actions = actions, notifyConfiguration = Prelude.Nothing}
instance ToResourceProperties AccountTakeoverRiskConfigurationTypeProperty where
  toResourceProperties
    AccountTakeoverRiskConfigurationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.AccountTakeoverRiskConfigurationType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions]
                           (Prelude.catMaybes
                              [(JSON..=) "NotifyConfiguration"
                                 Prelude.<$> notifyConfiguration]))}
instance JSON.ToJSON AccountTakeoverRiskConfigurationTypeProperty where
  toJSON AccountTakeoverRiskConfigurationTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions]
              (Prelude.catMaybes
                 [(JSON..=) "NotifyConfiguration"
                    Prelude.<$> notifyConfiguration])))
instance Property "Actions" AccountTakeoverRiskConfigurationTypeProperty where
  type PropertyType "Actions" AccountTakeoverRiskConfigurationTypeProperty = AccountTakeoverActionsTypeProperty
  set newValue AccountTakeoverRiskConfigurationTypeProperty {..}
    = AccountTakeoverRiskConfigurationTypeProperty
        {actions = newValue, ..}
instance Property "NotifyConfiguration" AccountTakeoverRiskConfigurationTypeProperty where
  type PropertyType "NotifyConfiguration" AccountTakeoverRiskConfigurationTypeProperty = NotifyConfigurationTypeProperty
  set newValue AccountTakeoverRiskConfigurationTypeProperty {..}
    = AccountTakeoverRiskConfigurationTypeProperty
        {notifyConfiguration = Prelude.pure newValue, ..}