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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html>
    PricingRule {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-billingentity>
                 billingEntity :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-modifierpercentage>
                 modifierPercentage :: (Prelude.Maybe (Value Prelude.Double)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-operation>
                 operation :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-scope>
                 scope :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-service>
                 service :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-tiering>
                 tiering :: (Prelude.Maybe TieringProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-type>
                 type' :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingrule.html#cfn-billingconductor-pricingrule-usagetype>
                 usageType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPricingRule ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> PricingRule
mkPricingRule name scope type'
  = PricingRule
      {haddock_workaround_ = (), name = name, scope = scope,
       type' = type', billingEntity = Prelude.Nothing,
       description = Prelude.Nothing,
       modifierPercentage = Prelude.Nothing, operation = Prelude.Nothing,
       service = Prelude.Nothing, tags = Prelude.Nothing,
       tiering = Prelude.Nothing, usageType = Prelude.Nothing}
instance ToResourceProperties PricingRule where
  toResourceProperties PricingRule {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingRule",
         supportsTags = Prelude.True,
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