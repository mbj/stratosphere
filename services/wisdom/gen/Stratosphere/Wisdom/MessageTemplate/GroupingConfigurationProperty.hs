module Stratosphere.Wisdom.MessageTemplate.GroupingConfigurationProperty (
        GroupingConfigurationProperty(..), mkGroupingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-groupingconfiguration.html>
    GroupingConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-groupingconfiguration.html#cfn-wisdom-messagetemplate-groupingconfiguration-criteria>
                                   criteria :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-groupingconfiguration.html#cfn-wisdom-messagetemplate-groupingconfiguration-values>
                                   values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupingConfigurationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> GroupingConfigurationProperty
mkGroupingConfigurationProperty criteria values
  = GroupingConfigurationProperty
      {haddock_workaround_ = (), criteria = criteria, values = values}
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