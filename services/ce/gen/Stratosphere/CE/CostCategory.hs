module Stratosphere.CE.CostCategory (
        CostCategory(..), mkCostCategory
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CostCategory
  = CostCategory {defaultValue :: (Prelude.Maybe (Value Prelude.Text)),
                  name :: (Value Prelude.Text),
                  ruleVersion :: (Value Prelude.Text),
                  rules :: (Value Prelude.Text),
                  splitChargeRules :: (Prelude.Maybe (Value Prelude.Text))}
mkCostCategory ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> CostCategory
mkCostCategory name ruleVersion rules
  = CostCategory
      {name = name, ruleVersion = ruleVersion, rules = rules,
       defaultValue = Prelude.Nothing, splitChargeRules = Prelude.Nothing}
instance ToResourceProperties CostCategory where
  toResourceProperties CostCategory {..}
    = ResourceProperties
        {awsType = "AWS::CE::CostCategory", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "RuleVersion" JSON..= ruleVersion,
                            "Rules" JSON..= rules]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "SplitChargeRules" Prelude.<$> splitChargeRules]))}
instance JSON.ToJSON CostCategory where
  toJSON CostCategory {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "RuleVersion" JSON..= ruleVersion,
               "Rules" JSON..= rules]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "SplitChargeRules" Prelude.<$> splitChargeRules])))
instance Property "DefaultValue" CostCategory where
  type PropertyType "DefaultValue" CostCategory = Value Prelude.Text
  set newValue CostCategory {..}
    = CostCategory {defaultValue = Prelude.pure newValue, ..}
instance Property "Name" CostCategory where
  type PropertyType "Name" CostCategory = Value Prelude.Text
  set newValue CostCategory {..} = CostCategory {name = newValue, ..}
instance Property "RuleVersion" CostCategory where
  type PropertyType "RuleVersion" CostCategory = Value Prelude.Text
  set newValue CostCategory {..}
    = CostCategory {ruleVersion = newValue, ..}
instance Property "Rules" CostCategory where
  type PropertyType "Rules" CostCategory = Value Prelude.Text
  set newValue CostCategory {..}
    = CostCategory {rules = newValue, ..}
instance Property "SplitChargeRules" CostCategory where
  type PropertyType "SplitChargeRules" CostCategory = Value Prelude.Text
  set newValue CostCategory {..}
    = CostCategory {splitChargeRules = Prelude.pure newValue, ..}