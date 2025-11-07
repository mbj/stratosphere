module Stratosphere.WAFv2.WebACL.ManagedRuleGroupConfigProperty (
        module Exports, ManagedRuleGroupConfigProperty(..),
        mkManagedRuleGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AWSManagedRulesACFPRuleSetProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AWSManagedRulesATPRuleSetProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AWSManagedRulesAntiDDoSRuleSetProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.AWSManagedRulesBotControlRuleSetProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.FieldIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedRuleGroupConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html>
    ManagedRuleGroupConfigProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-awsmanagedrulesacfpruleset>
                                    aWSManagedRulesACFPRuleSet :: (Prelude.Maybe AWSManagedRulesACFPRuleSetProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-awsmanagedrulesatpruleset>
                                    aWSManagedRulesATPRuleSet :: (Prelude.Maybe AWSManagedRulesATPRuleSetProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-awsmanagedrulesantiddosruleset>
                                    aWSManagedRulesAntiDDoSRuleSet :: (Prelude.Maybe AWSManagedRulesAntiDDoSRuleSetProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-awsmanagedrulesbotcontrolruleset>
                                    aWSManagedRulesBotControlRuleSet :: (Prelude.Maybe AWSManagedRulesBotControlRuleSetProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-loginpath>
                                    loginPath :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-passwordfield>
                                    passwordField :: (Prelude.Maybe FieldIdentifierProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-payloadtype>
                                    payloadType :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-managedrulegroupconfig.html#cfn-wafv2-webacl-managedrulegroupconfig-usernamefield>
                                    usernameField :: (Prelude.Maybe FieldIdentifierProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedRuleGroupConfigProperty :: ManagedRuleGroupConfigProperty
mkManagedRuleGroupConfigProperty
  = ManagedRuleGroupConfigProperty
      {haddock_workaround_ = (),
       aWSManagedRulesACFPRuleSet = Prelude.Nothing,
       aWSManagedRulesATPRuleSet = Prelude.Nothing,
       aWSManagedRulesAntiDDoSRuleSet = Prelude.Nothing,
       aWSManagedRulesBotControlRuleSet = Prelude.Nothing,
       loginPath = Prelude.Nothing, passwordField = Prelude.Nothing,
       payloadType = Prelude.Nothing, usernameField = Prelude.Nothing}
instance ToResourceProperties ManagedRuleGroupConfigProperty where
  toResourceProperties ManagedRuleGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ManagedRuleGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AWSManagedRulesACFPRuleSet"
                              Prelude.<$> aWSManagedRulesACFPRuleSet,
                            (JSON..=) "AWSManagedRulesATPRuleSet"
                              Prelude.<$> aWSManagedRulesATPRuleSet,
                            (JSON..=) "AWSManagedRulesAntiDDoSRuleSet"
                              Prelude.<$> aWSManagedRulesAntiDDoSRuleSet,
                            (JSON..=) "AWSManagedRulesBotControlRuleSet"
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
              [(JSON..=) "AWSManagedRulesACFPRuleSet"
                 Prelude.<$> aWSManagedRulesACFPRuleSet,
               (JSON..=) "AWSManagedRulesATPRuleSet"
                 Prelude.<$> aWSManagedRulesATPRuleSet,
               (JSON..=) "AWSManagedRulesAntiDDoSRuleSet"
                 Prelude.<$> aWSManagedRulesAntiDDoSRuleSet,
               (JSON..=) "AWSManagedRulesBotControlRuleSet"
                 Prelude.<$> aWSManagedRulesBotControlRuleSet,
               (JSON..=) "LoginPath" Prelude.<$> loginPath,
               (JSON..=) "PasswordField" Prelude.<$> passwordField,
               (JSON..=) "PayloadType" Prelude.<$> payloadType,
               (JSON..=) "UsernameField" Prelude.<$> usernameField]))
instance Property "AWSManagedRulesACFPRuleSet" ManagedRuleGroupConfigProperty where
  type PropertyType "AWSManagedRulesACFPRuleSet" ManagedRuleGroupConfigProperty = AWSManagedRulesACFPRuleSetProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {aWSManagedRulesACFPRuleSet = Prelude.pure newValue, ..}
instance Property "AWSManagedRulesATPRuleSet" ManagedRuleGroupConfigProperty where
  type PropertyType "AWSManagedRulesATPRuleSet" ManagedRuleGroupConfigProperty = AWSManagedRulesATPRuleSetProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {aWSManagedRulesATPRuleSet = Prelude.pure newValue, ..}
instance Property "AWSManagedRulesAntiDDoSRuleSet" ManagedRuleGroupConfigProperty where
  type PropertyType "AWSManagedRulesAntiDDoSRuleSet" ManagedRuleGroupConfigProperty = AWSManagedRulesAntiDDoSRuleSetProperty
  set newValue ManagedRuleGroupConfigProperty {..}
    = ManagedRuleGroupConfigProperty
        {aWSManagedRulesAntiDDoSRuleSet = Prelude.pure newValue, ..}
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