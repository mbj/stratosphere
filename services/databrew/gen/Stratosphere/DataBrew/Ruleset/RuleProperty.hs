module Stratosphere.DataBrew.Ruleset.RuleProperty (
        module Exports, RuleProperty(..), mkRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataBrew.Ruleset.ColumnSelectorProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Ruleset.SubstitutionValueProperty as Exports
import {-# SOURCE #-} Stratosphere.DataBrew.Ruleset.ThresholdProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html>
    RuleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-checkexpression>
                  checkExpression :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-columnselectors>
                  columnSelectors :: (Prelude.Maybe [ColumnSelectorProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-disabled>
                  disabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-name>
                  name :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-substitutionmap>
                  substitutionMap :: (Prelude.Maybe [SubstitutionValueProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-ruleset-rule.html#cfn-databrew-ruleset-rule-threshold>
                  threshold :: (Prelude.Maybe ThresholdProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RuleProperty
mkRuleProperty checkExpression name
  = RuleProperty
      {checkExpression = checkExpression, name = name,
       columnSelectors = Prelude.Nothing, disabled = Prelude.Nothing,
       substitutionMap = Prelude.Nothing, threshold = Prelude.Nothing}
instance ToResourceProperties RuleProperty where
  toResourceProperties RuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Ruleset.Rule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CheckExpression" JSON..= checkExpression, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "ColumnSelectors" Prelude.<$> columnSelectors,
                               (JSON..=) "Disabled" Prelude.<$> disabled,
                               (JSON..=) "SubstitutionMap" Prelude.<$> substitutionMap,
                               (JSON..=) "Threshold" Prelude.<$> threshold]))}
instance JSON.ToJSON RuleProperty where
  toJSON RuleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CheckExpression" JSON..= checkExpression, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "ColumnSelectors" Prelude.<$> columnSelectors,
                  (JSON..=) "Disabled" Prelude.<$> disabled,
                  (JSON..=) "SubstitutionMap" Prelude.<$> substitutionMap,
                  (JSON..=) "Threshold" Prelude.<$> threshold])))
instance Property "CheckExpression" RuleProperty where
  type PropertyType "CheckExpression" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..}
    = RuleProperty {checkExpression = newValue, ..}
instance Property "ColumnSelectors" RuleProperty where
  type PropertyType "ColumnSelectors" RuleProperty = [ColumnSelectorProperty]
  set newValue RuleProperty {..}
    = RuleProperty {columnSelectors = Prelude.pure newValue, ..}
instance Property "Disabled" RuleProperty where
  type PropertyType "Disabled" RuleProperty = Value Prelude.Bool
  set newValue RuleProperty {..}
    = RuleProperty {disabled = Prelude.pure newValue, ..}
instance Property "Name" RuleProperty where
  type PropertyType "Name" RuleProperty = Value Prelude.Text
  set newValue RuleProperty {..} = RuleProperty {name = newValue, ..}
instance Property "SubstitutionMap" RuleProperty where
  type PropertyType "SubstitutionMap" RuleProperty = [SubstitutionValueProperty]
  set newValue RuleProperty {..}
    = RuleProperty {substitutionMap = Prelude.pure newValue, ..}
instance Property "Threshold" RuleProperty where
  type PropertyType "Threshold" RuleProperty = ThresholdProperty
  set newValue RuleProperty {..}
    = RuleProperty {threshold = Prelude.pure newValue, ..}