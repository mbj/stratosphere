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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingplan.html>
    PricingPlan {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingplan.html#cfn-billingconductor-pricingplan-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingplan.html#cfn-billingconductor-pricingplan-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingplan.html#cfn-billingconductor-pricingplan-pricingrulearns>
                 pricingRuleArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-billingconductor-pricingplan.html#cfn-billingconductor-pricingplan-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPricingPlan :: Value Prelude.Text -> PricingPlan
mkPricingPlan name
  = PricingPlan
      {haddock_workaround_ = (), name = name,
       description = Prelude.Nothing, pricingRuleArns = Prelude.Nothing,
       tags = Prelude.Nothing}
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