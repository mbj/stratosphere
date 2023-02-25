module Stratosphere.BillingConductor.PricingRule (
        module Exports, PricingRule(..), mkPricingRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BillingConductor.PricingRule.TieringProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PricingRule
  = PricingRule {billingEntity :: (Prelude.Maybe (Value Prelude.Text)),
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 modifierPercentage :: (Prelude.Maybe (Value Prelude.Double)),
                 name :: (Value Prelude.Text),
                 operation :: (Prelude.Maybe (Value Prelude.Text)),
                 scope :: (Value Prelude.Text),
                 service :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag]),
                 tiering :: (Prelude.Maybe TieringProperty),
                 type' :: (Value Prelude.Text),
                 usageType :: (Prelude.Maybe (Value Prelude.Text))}
mkPricingRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PricingRule
mkPricingRule name scope type'
  = PricingRule
      {name = name, scope = scope, type' = type',
       billingEntity = Prelude.Nothing, description = Prelude.Nothing,
       modifierPercentage = Prelude.Nothing, operation = Prelude.Nothing,
       service = Prelude.Nothing, tags = Prelude.Nothing,
       tiering = Prelude.Nothing, usageType = Prelude.Nothing}
instance ToResourceProperties PricingRule where
  toResourceProperties PricingRule {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingRule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Scope" JSON..= scope, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BillingEntity" Prelude.<$> billingEntity,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ModifierPercentage" Prelude.<$> modifierPercentage,
                               (JSON..=) "Operation" Prelude.<$> operation,
                               (JSON..=) "Service" Prelude.<$> service,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Tiering" Prelude.<$> tiering,
                               (JSON..=) "UsageType" Prelude.<$> usageType]))}
instance JSON.ToJSON PricingRule where
  toJSON PricingRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Scope" JSON..= scope, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BillingEntity" Prelude.<$> billingEntity,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ModifierPercentage" Prelude.<$> modifierPercentage,
                  (JSON..=) "Operation" Prelude.<$> operation,
                  (JSON..=) "Service" Prelude.<$> service,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Tiering" Prelude.<$> tiering,
                  (JSON..=) "UsageType" Prelude.<$> usageType])))
instance Property "BillingEntity" PricingRule where
  type PropertyType "BillingEntity" PricingRule = Value Prelude.Text
  set newValue PricingRule {..}
    = PricingRule {billingEntity = Prelude.pure newValue, ..}
instance Property "Description" PricingRule where
  type PropertyType "Description" PricingRule = Value Prelude.Text
  set newValue PricingRule {..}
    = PricingRule {description = Prelude.pure newValue, ..}
instance Property "ModifierPercentage" PricingRule where
  type PropertyType "ModifierPercentage" PricingRule = Value Prelude.Double
  set newValue PricingRule {..}
    = PricingRule {modifierPercentage = Prelude.pure newValue, ..}
instance Property "Name" PricingRule where
  type PropertyType "Name" PricingRule = Value Prelude.Text
  set newValue PricingRule {..} = PricingRule {name = newValue, ..}
instance Property "Operation" PricingRule where
  type PropertyType "Operation" PricingRule = Value Prelude.Text
  set newValue PricingRule {..}
    = PricingRule {operation = Prelude.pure newValue, ..}
instance Property "Scope" PricingRule where
  type PropertyType "Scope" PricingRule = Value Prelude.Text
  set newValue PricingRule {..} = PricingRule {scope = newValue, ..}
instance Property "Service" PricingRule where
  type PropertyType "Service" PricingRule = Value Prelude.Text
  set newValue PricingRule {..}
    = PricingRule {service = Prelude.pure newValue, ..}
instance Property "Tags" PricingRule where
  type PropertyType "Tags" PricingRule = [Tag]
  set newValue PricingRule {..}
    = PricingRule {tags = Prelude.pure newValue, ..}
instance Property "Tiering" PricingRule where
  type PropertyType "Tiering" PricingRule = TieringProperty
  set newValue PricingRule {..}
    = PricingRule {tiering = Prelude.pure newValue, ..}
instance Property "Type" PricingRule where
  type PropertyType "Type" PricingRule = Value Prelude.Text
  set newValue PricingRule {..} = PricingRule {type' = newValue, ..}
instance Property "UsageType" PricingRule where
  type PropertyType "UsageType" PricingRule = Value Prelude.Text
  set newValue PricingRule {..}
    = PricingRule {usageType = Prelude.pure newValue, ..}