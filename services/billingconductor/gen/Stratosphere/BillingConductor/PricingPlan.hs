module Stratosphere.BillingConductor.PricingPlan (
        PricingPlan(..), mkPricingPlan
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PricingPlan
  = PricingPlan {description :: (Prelude.Maybe (Value Prelude.Text)),
                 name :: (Value Prelude.Text),
                 pricingRuleArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPricingPlan :: Value Prelude.Text -> PricingPlan
mkPricingPlan name
  = PricingPlan
      {name = name, description = Prelude.Nothing,
       pricingRuleArns = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PricingPlan where
  toResourceProperties PricingPlan {..}
    = ResourceProperties
        {awsType = "AWS::BillingConductor::PricingPlan",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "PricingRuleArns" Prelude.<$> pricingRuleArns,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PricingPlan where
  toJSON PricingPlan {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "PricingRuleArns" Prelude.<$> pricingRuleArns,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" PricingPlan where
  type PropertyType "Description" PricingPlan = Value Prelude.Text
  set newValue PricingPlan {..}
    = PricingPlan {description = Prelude.pure newValue, ..}
instance Property "Name" PricingPlan where
  type PropertyType "Name" PricingPlan = Value Prelude.Text
  set newValue PricingPlan {..} = PricingPlan {name = newValue, ..}
instance Property "PricingRuleArns" PricingPlan where
  type PropertyType "PricingRuleArns" PricingPlan = ValueList Prelude.Text
  set newValue PricingPlan {..}
    = PricingPlan {pricingRuleArns = Prelude.pure newValue, ..}
instance Property "Tags" PricingPlan where
  type PropertyType "Tags" PricingPlan = [Tag]
  set newValue PricingPlan {..}
    = PricingPlan {tags = Prelude.pure newValue, ..}