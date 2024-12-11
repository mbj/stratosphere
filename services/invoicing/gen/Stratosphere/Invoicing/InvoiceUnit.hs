module Stratosphere.Invoicing.InvoiceUnit (
        module Exports, InvoiceUnit(..), mkInvoiceUnit
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Invoicing.InvoiceUnit.ResourceTagProperty as Exports
import {-# SOURCE #-} Stratosphere.Invoicing.InvoiceUnit.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InvoiceUnit
  = InvoiceUnit {description :: (Prelude.Maybe (Value Prelude.Text)),
                 invoiceReceiver :: (Value Prelude.Text),
                 name :: (Value Prelude.Text),
                 resourceTags :: (Prelude.Maybe [ResourceTagProperty]),
                 rule :: RuleProperty,
                 taxInheritanceDisabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInvoiceUnit ::
  Value Prelude.Text
  -> Value Prelude.Text -> RuleProperty -> InvoiceUnit
mkInvoiceUnit invoiceReceiver name rule
  = InvoiceUnit
      {invoiceReceiver = invoiceReceiver, name = name, rule = rule,
       description = Prelude.Nothing, resourceTags = Prelude.Nothing,
       taxInheritanceDisabled = Prelude.Nothing}
instance ToResourceProperties InvoiceUnit where
  toResourceProperties InvoiceUnit {..}
    = ResourceProperties
        {awsType = "AWS::Invoicing::InvoiceUnit",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InvoiceReceiver" JSON..= invoiceReceiver, "Name" JSON..= name,
                            "Rule" JSON..= rule]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                               (JSON..=) "TaxInheritanceDisabled"
                                 Prelude.<$> taxInheritanceDisabled]))}
instance JSON.ToJSON InvoiceUnit where
  toJSON InvoiceUnit {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InvoiceReceiver" JSON..= invoiceReceiver, "Name" JSON..= name,
               "Rule" JSON..= rule]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ResourceTags" Prelude.<$> resourceTags,
                  (JSON..=) "TaxInheritanceDisabled"
                    Prelude.<$> taxInheritanceDisabled])))
instance Property "Description" InvoiceUnit where
  type PropertyType "Description" InvoiceUnit = Value Prelude.Text
  set newValue InvoiceUnit {..}
    = InvoiceUnit {description = Prelude.pure newValue, ..}
instance Property "InvoiceReceiver" InvoiceUnit where
  type PropertyType "InvoiceReceiver" InvoiceUnit = Value Prelude.Text
  set newValue InvoiceUnit {..}
    = InvoiceUnit {invoiceReceiver = newValue, ..}
instance Property "Name" InvoiceUnit where
  type PropertyType "Name" InvoiceUnit = Value Prelude.Text
  set newValue InvoiceUnit {..} = InvoiceUnit {name = newValue, ..}
instance Property "ResourceTags" InvoiceUnit where
  type PropertyType "ResourceTags" InvoiceUnit = [ResourceTagProperty]
  set newValue InvoiceUnit {..}
    = InvoiceUnit {resourceTags = Prelude.pure newValue, ..}
instance Property "Rule" InvoiceUnit where
  type PropertyType "Rule" InvoiceUnit = RuleProperty
  set newValue InvoiceUnit {..} = InvoiceUnit {rule = newValue, ..}
instance Property "TaxInheritanceDisabled" InvoiceUnit where
  type PropertyType "TaxInheritanceDisabled" InvoiceUnit = Value Prelude.Bool
  set newValue InvoiceUnit {..}
    = InvoiceUnit {taxInheritanceDisabled = Prelude.pure newValue, ..}