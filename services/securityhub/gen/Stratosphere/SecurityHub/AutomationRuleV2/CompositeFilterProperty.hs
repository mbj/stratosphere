module Stratosphere.SecurityHub.AutomationRuleV2.CompositeFilterProperty (
        module Exports, CompositeFilterProperty(..),
        mkCompositeFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfBooleanFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfDateFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfMapFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfNumberFilterProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityHub.AutomationRuleV2.OcsfStringFilterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CompositeFilterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html>
    CompositeFilterProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-booleanfilters>
                             booleanFilters :: (Prelude.Maybe [OcsfBooleanFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-datefilters>
                             dateFilters :: (Prelude.Maybe [OcsfDateFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-mapfilters>
                             mapFilters :: (Prelude.Maybe [OcsfMapFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-numberfilters>
                             numberFilters :: (Prelude.Maybe [OcsfNumberFilterProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-operator>
                             operator :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-automationrulev2-compositefilter.html#cfn-securityhub-automationrulev2-compositefilter-stringfilters>
                             stringFilters :: (Prelude.Maybe [OcsfStringFilterProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCompositeFilterProperty :: CompositeFilterProperty
mkCompositeFilterProperty
  = CompositeFilterProperty
      {haddock_workaround_ = (), booleanFilters = Prelude.Nothing,
       dateFilters = Prelude.Nothing, mapFilters = Prelude.Nothing,
       numberFilters = Prelude.Nothing, operator = Prelude.Nothing,
       stringFilters = Prelude.Nothing}
instance ToResourceProperties CompositeFilterProperty where
  toResourceProperties CompositeFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRuleV2.CompositeFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BooleanFilters" Prelude.<$> booleanFilters,
                            (JSON..=) "DateFilters" Prelude.<$> dateFilters,
                            (JSON..=) "MapFilters" Prelude.<$> mapFilters,
                            (JSON..=) "NumberFilters" Prelude.<$> numberFilters,
                            (JSON..=) "Operator" Prelude.<$> operator,
                            (JSON..=) "StringFilters" Prelude.<$> stringFilters])}
instance JSON.ToJSON CompositeFilterProperty where
  toJSON CompositeFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BooleanFilters" Prelude.<$> booleanFilters,
               (JSON..=) "DateFilters" Prelude.<$> dateFilters,
               (JSON..=) "MapFilters" Prelude.<$> mapFilters,
               (JSON..=) "NumberFilters" Prelude.<$> numberFilters,
               (JSON..=) "Operator" Prelude.<$> operator,
               (JSON..=) "StringFilters" Prelude.<$> stringFilters]))
instance Property "BooleanFilters" CompositeFilterProperty where
  type PropertyType "BooleanFilters" CompositeFilterProperty = [OcsfBooleanFilterProperty]
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty
        {booleanFilters = Prelude.pure newValue, ..}
instance Property "DateFilters" CompositeFilterProperty where
  type PropertyType "DateFilters" CompositeFilterProperty = [OcsfDateFilterProperty]
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty {dateFilters = Prelude.pure newValue, ..}
instance Property "MapFilters" CompositeFilterProperty where
  type PropertyType "MapFilters" CompositeFilterProperty = [OcsfMapFilterProperty]
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty {mapFilters = Prelude.pure newValue, ..}
instance Property "NumberFilters" CompositeFilterProperty where
  type PropertyType "NumberFilters" CompositeFilterProperty = [OcsfNumberFilterProperty]
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty
        {numberFilters = Prelude.pure newValue, ..}
instance Property "Operator" CompositeFilterProperty where
  type PropertyType "Operator" CompositeFilterProperty = Value Prelude.Text
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty {operator = Prelude.pure newValue, ..}
instance Property "StringFilters" CompositeFilterProperty where
  type PropertyType "StringFilters" CompositeFilterProperty = [OcsfStringFilterProperty]
  set newValue CompositeFilterProperty {..}
    = CompositeFilterProperty
        {stringFilters = Prelude.pure newValue, ..}