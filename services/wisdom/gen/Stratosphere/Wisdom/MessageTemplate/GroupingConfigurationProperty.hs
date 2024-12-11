module Stratosphere.Wisdom.MessageTemplate.GroupingConfigurationProperty (
        GroupingConfigurationProperty(..), mkGroupingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupingConfigurationProperty
  = GroupingConfigurationProperty {criteria :: (Value Prelude.Text),
                                   values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupingConfigurationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> GroupingConfigurationProperty
mkGroupingConfigurationProperty criteria values
  = GroupingConfigurationProperty
      {criteria = criteria, values = values}
instance ToResourceProperties GroupingConfigurationProperty where
  toResourceProperties GroupingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.GroupingConfiguration",
         supportsTags = Prelude.False,
         properties = ["Criteria" JSON..= criteria,
                       "Values" JSON..= values]}
instance JSON.ToJSON GroupingConfigurationProperty where
  toJSON GroupingConfigurationProperty {..}
    = JSON.object
        ["Criteria" JSON..= criteria, "Values" JSON..= values]
instance Property "Criteria" GroupingConfigurationProperty where
  type PropertyType "Criteria" GroupingConfigurationProperty = Value Prelude.Text
  set newValue GroupingConfigurationProperty {..}
    = GroupingConfigurationProperty {criteria = newValue, ..}
instance Property "Values" GroupingConfigurationProperty where
  type PropertyType "Values" GroupingConfigurationProperty = ValueList Prelude.Text
  set newValue GroupingConfigurationProperty {..}
    = GroupingConfigurationProperty {values = newValue, ..}