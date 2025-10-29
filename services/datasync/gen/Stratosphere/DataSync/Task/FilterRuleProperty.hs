module Stratosphere.DataSync.Task.FilterRuleProperty (
        FilterRuleProperty(..), mkFilterRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRuleProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-filterrule.html>
    FilterRuleProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-filterrule.html#cfn-datasync-task-filterrule-filtertype>
                        filterType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datasync-task-filterrule.html#cfn-datasync-task-filterrule-value>
                        value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterRuleProperty :: FilterRuleProperty
mkFilterRuleProperty
  = FilterRuleProperty
      {filterType = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties FilterRuleProperty where
  toResourceProperties FilterRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.FilterRule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FilterType" Prelude.<$> filterType,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON FilterRuleProperty where
  toJSON FilterRuleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FilterType" Prelude.<$> filterType,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "FilterType" FilterRuleProperty where
  type PropertyType "FilterType" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {filterType = Prelude.pure newValue, ..}
instance Property "Value" FilterRuleProperty where
  type PropertyType "Value" FilterRuleProperty = Value Prelude.Text
  set newValue FilterRuleProperty {..}
    = FilterRuleProperty {value = Prelude.pure newValue, ..}