module Stratosphere.WAFv2.WebACL.ManagedRuleGroupConfigProperty (
        module Exports, ManagedRuleGroupConfigProperty(..),
        mkManagedRuleGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AWSManagedRulesBotControlRuleSetProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedRuleGroupConfigProperty
  = ManagedRuleGroupConfigProperty {aWSManagedRulesBotControlRuleSet :: (Prelude.Maybe AWSManagedRulesBotControlRuleSetProperty),
                                    loginPath :: (Prelude.Maybe (Value Prelude.Text)),
                                    passwordField :: (Prelude.Maybe FieldIdentifierProperty),
                                    payloadType :: (Prelude.Maybe (Value Prelude.Text)),
                                    usernameField :: (Prelude.Maybe FieldIdentifierProperty)}
mkManagedRuleGroupConfigProperty :: ManagedRuleGroupConfigProperty
mkManagedRuleGroupConfigProperty
  = ManagedRuleGroupConfigProperty
      {aWSManagedRulesBotControlRuleSet = Prelude.Nothing,
       loginPath = Prelude.Nothing, passwordField = Prelude.Nothing,
       payloadType = Prelude.Nothing, usernameField = Prelude.Nothing}
instance ToResourceProperties ManagedRuleGroupConfigProperty where
  toResourceProperties ManagedRuleGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ManagedRuleGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSManagedRulesBotControlRuleSet"
                              Prelude.<$> aWSManagedRulesBotControlRuleSet,
                            (JSON..=) "LoginPath" Prelude.<$> loginPath,
                            (JSON..=) "PasswordField" Prelude.<$> passwordField,
                            (JSON..=) "PayloadType" Prelude.<$> payloadType,
                            (JSON..=) "UsernameField" Prelude.<$> usernameField])}
instance JSON.ToJSON ManagedRuleGroupConfigProperty where
  toJSON ManagedRuleGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AWSManagedRulesBotControlRuleSet"
                 Prelude.<$> aWSManagedRulesBotControlRuleSet,
               (JSON..=) "LoginPath" Prelude.<$> loginPath,
               (JSON..=) "PasswordField" Prelude.<$> passwordField,
               (JSON..=) "PayloadType" Prelude.<$> payloadType,
               (JSON..=) "UsernameField" Prelude.<$> usernameField]))
instance Property "AWSManagedRulesBotControlRuleSet" ManagedRuleGroupConfigProperty where
  type PropertyType "AWSManagedRulesBotControlRuleSet" ManagedRuleGroupConfigProperty = AWSManagedRulesBotControlRuleSetProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {aWSManagedRulesBotControlRuleSet = Prelude.pure newValue, ..}
instance Property "LoginPath" ManagedRuleGroupConfigProperty where
  type PropertyType "LoginPath" ManagedRuleGroupConfigProperty = Value Prelude.Text
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {loginPath = Prelude.pure newValue, ..}
instance Property "PasswordField" ManagedRuleGroupConfigProperty where
  type PropertyType "PasswordField" ManagedRuleGroupConfigProperty = FieldIdentifierProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {passwordField = Prelude.pure newValue, ..}
instance Property "PayloadType" ManagedRuleGroupConfigProperty where
  type PropertyType "PayloadType" ManagedRuleGroupConfigProperty = Value Prelude.Text
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {payloadType = Prelude.pure newValue, ..}
instance Property "UsernameField" ManagedRuleGroupConfigProperty where
  type PropertyType "UsernameField" ManagedRuleGroupConfigProperty = FieldIdentifierProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {usernameField = Prelude.pure newValue, ..}