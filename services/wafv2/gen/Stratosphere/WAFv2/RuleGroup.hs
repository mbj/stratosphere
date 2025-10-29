module Stratosphere.WAFv2.RuleGroup (
        module Exports, RuleGroup(..), mkRuleGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.CustomResponseBodyProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.LabelSummaryProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.RuleProperty as Exports
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.VisibilityConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RuleGroup
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html>
    RuleGroup {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-availablelabels>
               availableLabels :: (Prelude.Maybe [LabelSummaryProperty]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-capacity>
               capacity :: (Value Prelude.Integer),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-consumedlabels>
               consumedLabels :: (Prelude.Maybe [LabelSummaryProperty]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-customresponsebodies>
               customResponseBodies :: (Prelude.Maybe (Prelude.Map Prelude.Text CustomResponseBodyProperty)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-rules>
               rules :: (Prelude.Maybe [RuleProperty]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-scope>
               scope :: (Value Prelude.Text),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-rulegroup.html#cfn-wafv2-rulegroup-visibilityconfig>
               visibilityConfig :: VisibilityConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroup ::
  Value Prelude.Integer
  -> Value Prelude.Text -> VisibilityConfigProperty -> RuleGroup
mkRuleGroup capacity scope visibilityConfig
  = RuleGroup
      {capacity = capacity, scope = scope,
       visibilityConfig = visibilityConfig,
       availableLabels = Prelude.Nothing,
       consumedLabels = Prelude.Nothing,
       customResponseBodies = Prelude.Nothing,
       description = Prelude.Nothing, name = Prelude.Nothing,
       rules = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RuleGroup where
  toResourceProperties RuleGroup {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Capacity" JSON..= capacity, "Scope" JSON..= scope,
                            "VisibilityConfig" JSON..= visibilityConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailableLabels" Prelude.<$> availableLabels,
                               (JSON..=) "ConsumedLabels" Prelude.<$> consumedLabels,
                               (JSON..=) "CustomResponseBodies" Prelude.<$> customResponseBodies,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Rules" Prelude.<$> rules,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RuleGroup where
  toJSON RuleGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Capacity" JSON..= capacity, "Scope" JSON..= scope,
               "VisibilityConfig" JSON..= visibilityConfig]
              (Prelude.catMaybes
                 [(JSON..=) "AvailableLabels" Prelude.<$> availableLabels,
                  (JSON..=) "ConsumedLabels" Prelude.<$> consumedLabels,
                  (JSON..=) "CustomResponseBodies" Prelude.<$> customResponseBodies,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Rules" Prelude.<$> rules,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AvailableLabels" RuleGroup where
  type PropertyType "AvailableLabels" RuleGroup = [LabelSummaryProperty]
  set newValue RuleGroup {..}
    = RuleGroup {availableLabels = Prelude.pure newValue, ..}
instance Property "Capacity" RuleGroup where
  type PropertyType "Capacity" RuleGroup = Value Prelude.Integer
  set newValue RuleGroup {..} = RuleGroup {capacity = newValue, ..}
instance Property "ConsumedLabels" RuleGroup where
  type PropertyType "ConsumedLabels" RuleGroup = [LabelSummaryProperty]
  set newValue RuleGroup {..}
    = RuleGroup {consumedLabels = Prelude.pure newValue, ..}
instance Property "CustomResponseBodies" RuleGroup where
  type PropertyType "CustomResponseBodies" RuleGroup = Prelude.Map Prelude.Text CustomResponseBodyProperty
  set newValue RuleGroup {..}
    = RuleGroup {customResponseBodies = Prelude.pure newValue, ..}
instance Property "Description" RuleGroup where
  type PropertyType "Description" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..}
    = RuleGroup {description = Prelude.pure newValue, ..}
instance Property "Name" RuleGroup where
  type PropertyType "Name" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..}
    = RuleGroup {name = Prelude.pure newValue, ..}
instance Property "Rules" RuleGroup where
  type PropertyType "Rules" RuleGroup = [RuleProperty]
  set newValue RuleGroup {..}
    = RuleGroup {rules = Prelude.pure newValue, ..}
instance Property "Scope" RuleGroup where
  type PropertyType "Scope" RuleGroup = Value Prelude.Text
  set newValue RuleGroup {..} = RuleGroup {scope = newValue, ..}
instance Property "Tags" RuleGroup where
  type PropertyType "Tags" RuleGroup = [Tag]
  set newValue RuleGroup {..}
    = RuleGroup {tags = Prelude.pure newValue, ..}
instance Property "VisibilityConfig" RuleGroup where
  type PropertyType "VisibilityConfig" RuleGroup = VisibilityConfigProperty
  set newValue RuleGroup {..}
    = RuleGroup {visibilityConfig = newValue, ..}