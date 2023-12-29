module Stratosphere.WAFv2.WebACL.ManagedRuleGroupStatementProperty (
        module Exports, ManagedRuleGroupStatementProperty(..),
        mkManagedRuleGroupStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ExcludedRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.ManagedRuleGroupConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.RuleActionOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedRuleGroupStatementProperty
  = ManagedRuleGroupStatementProperty {excludedRules :: (Prelude.Maybe [ExcludedRuleProperty]),
                                       managedRuleGroupConfigs :: (Prelude.Maybe [ManagedRuleGroupConfigProperty]),
                                       name :: (Value Prelude.Text),
                                       ruleActionOverrides :: (Prelude.Maybe [RuleActionOverrideProperty]),
                                       scopeDownStatement :: (Prelude.Maybe StatementProperty),
                                       vendorName :: (Value Prelude.Text),
                                       version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedRuleGroupStatementProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ManagedRuleGroupStatementProperty
mkManagedRuleGroupStatementProperty name vendorName
  = ManagedRuleGroupStatementProperty
      {name = name, vendorName = vendorName,
       excludedRules = Prelude.Nothing,
       managedRuleGroupConfigs = Prelude.Nothing,
       ruleActionOverrides = Prelude.Nothing,
       scopeDownStatement = Prelude.Nothing, version = Prelude.Nothing}
instance ToResourceProperties ManagedRuleGroupStatementProperty where
  toResourceProperties ManagedRuleGroupStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.ManagedRuleGroupStatement",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "VendorName" JSON..= vendorName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExcludedRules" Prelude.<$> excludedRules,
                               (JSON..=) "ManagedRuleGroupConfigs"
                                 Prelude.<$> managedRuleGroupConfigs,
                               (JSON..=) "RuleActionOverrides" Prelude.<$> ruleActionOverrides,
                               (JSON..=) "ScopeDownStatement" Prelude.<$> scopeDownStatement,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON ManagedRuleGroupStatementProperty where
  toJSON ManagedRuleGroupStatementProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "VendorName" JSON..= vendorName]
              (Prelude.catMaybes
                 [(JSON..=) "ExcludedRules" Prelude.<$> excludedRules,
                  (JSON..=) "ManagedRuleGroupConfigs"
                    Prelude.<$> managedRuleGroupConfigs,
                  (JSON..=) "RuleActionOverrides" Prelude.<$> ruleActionOverrides,
                  (JSON..=) "ScopeDownStatement" Prelude.<$> scopeDownStatement,
                  (JSON..=) "Version" Prelude.<$> version])))
instance Property "ExcludedRules" ManagedRuleGroupStatementProperty where
  type PropertyType "ExcludedRules" ManagedRuleGroupStatementProperty = [ExcludedRuleProperty]
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty
        {excludedRules = Prelude.pure newValue, ..}
instance Property "ManagedRuleGroupConfigs" ManagedRuleGroupStatementProperty where
  type PropertyType "ManagedRuleGroupConfigs" ManagedRuleGroupStatementProperty = [ManagedRuleGroupConfigProperty]
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty
        {managedRuleGroupConfigs = Prelude.pure newValue, ..}
instance Property "Name" ManagedRuleGroupStatementProperty where
  type PropertyType "Name" ManagedRuleGroupStatementProperty = Value Prelude.Text
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty {name = newValue, ..}
instance Property "RuleActionOverrides" ManagedRuleGroupStatementProperty where
  type PropertyType "RuleActionOverrides" ManagedRuleGroupStatementProperty = [RuleActionOverrideProperty]
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty
        {ruleActionOverrides = Prelude.pure newValue, ..}
instance Property "ScopeDownStatement" ManagedRuleGroupStatementProperty where
  type PropertyType "ScopeDownStatement" ManagedRuleGroupStatementProperty = StatementProperty
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty
        {scopeDownStatement = Prelude.pure newValue, ..}
instance Property "VendorName" ManagedRuleGroupStatementProperty where
  type PropertyType "VendorName" ManagedRuleGroupStatementProperty = Value Prelude.Text
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty {vendorName = newValue, ..}
instance Property "Version" ManagedRuleGroupStatementProperty where
  type PropertyType "Version" ManagedRuleGroupStatementProperty = Value Prelude.Text
  set newValue ManagedRuleGroupStatementProperty {..}
    = ManagedRuleGroupStatementProperty
        {version = Prelude.pure newValue, ..}