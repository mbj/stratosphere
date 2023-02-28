module Stratosphere.SES.ReceiptRule.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SES.ReceiptRule.ActionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = RuleProperty {actions :: (Prelude.Maybe [ActionProperty]),
                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  name :: (Prelude.Maybe (Value Prelude.Text)),
                  recipients :: (Prelude.Maybe (ValueList Prelude.Text)),
                  scanEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  tlsPolicy :: (Prelude.Maybe (Value Prelude.Text))}
mkRuleProperty :: RuleProperty
mkRuleProperty
  = RuleProperty
      {actions = Prelude.Nothing, enabled = Prelude.Nothing,
       name = Prelude.Nothing, recipients = Prelude.Nothing,
       scanEnabled = Prelude.Nothing, tlsPolicy = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ReceiptRule.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Actions" Prelude.<$> actions,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Recipients" Prelude.<$> recipients,
                            (JSON..=) "ScanEnabled" Prelude.<$> scanEnabled,
                            (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy])}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Actions" Prelude.<$> actions,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Recipients" Prelude.<$> recipients,
               (JSON..=) "ScanEnabled" Prelude.<$> scanEnabled,
               (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy]))
instance Property "Actions" RuleProperty where
  type PropertyType "Actions" RuleProperty = [ActionProperty]
  set newValue RuleProperty {..}
    = RuleProperty {actions = Prelude.pure newValue, ..}
instance Property "Enabled" RuleProperty where
  type PropertyType "Enabled" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {enabled = Prelude.pure newValue, ..}
instance Property "Name" RuleProperty where
  type PropertyType "Name" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {name = Prelude.pure newValue, ..}
instance Property "Recipients" RuleProperty where
  type PropertyType "Recipients" RuleProperty = ValueList Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {recipients = Prelude.pure newValue, ..}
instance Property "ScanEnabled" RuleProperty where
  type PropertyType "ScanEnabled" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {scanEnabled = Prelude.pure newValue, ..}
instance Property "TlsPolicy" RuleProperty where
  type PropertyType "TlsPolicy" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {tlsPolicy = Prelude.pure newValue, ..}