module Stratosphere.DataSync.Task.FilterRuleProperty (
        FilterRuleProperty(..), mkFilterRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterRuleProperty
  = FilterRuleProperty {filterType :: (Prelude.Maybe (Value Prelude.Text)),
                        value :: (Prelude.Maybe (Value Prelude.Text))}
mkFilterRuleProperty :: FilterRuleProperty
mkFilterRuleProperty
  = FilterRuleProperty
      {filterType = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties FilterRuleProperty where
  toResourceProperties FilterRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.FilterRule",
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