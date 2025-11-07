module Stratosphere.ApplicationSignals.GroupingConfiguration.GroupingAttributeDefinitionProperty (
        GroupingAttributeDefinitionProperty(..),
        mkGroupingAttributeDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GroupingAttributeDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html>
    GroupingAttributeDefinitionProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-defaultgroupingvalue>
                                         defaultGroupingValue :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-groupingname>
                                         groupingName :: (Value Prelude.Text),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-groupingconfiguration-groupingattributedefinition.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinition-groupingsourcekeys>
                                         groupingSourceKeys :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupingAttributeDefinitionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> GroupingAttributeDefinitionProperty
mkGroupingAttributeDefinitionProperty
  groupingName
  groupingSourceKeys
  = GroupingAttributeDefinitionProperty
      {haddock_workaround_ = (), groupingName = groupingName,
       groupingSourceKeys = groupingSourceKeys,
       defaultGroupingValue = Prelude.Nothing}
instance ToResourceProperties GroupingAttributeDefinitionProperty where
  toResourceProperties GroupingAttributeDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::GroupingConfiguration.GroupingAttributeDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupingName" JSON..= groupingName,
                            "GroupingSourceKeys" JSON..= groupingSourceKeys]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultGroupingValue"
                                 Prelude.<$> defaultGroupingValue]))}
instance JSON.ToJSON GroupingAttributeDefinitionProperty where
  toJSON GroupingAttributeDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupingName" JSON..= groupingName,
               "GroupingSourceKeys" JSON..= groupingSourceKeys]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultGroupingValue"
                    Prelude.<$> defaultGroupingValue])))
instance Property "DefaultGroupingValue" GroupingAttributeDefinitionProperty where
  type PropertyType "DefaultGroupingValue" GroupingAttributeDefinitionProperty = Value Prelude.Text
  set newValue GroupingAttributeDefinitionProperty {..}
    = GroupingAttributeDefinitionProperty
        {defaultGroupingValue = Prelude.pure newValue, ..}
instance Property "GroupingName" GroupingAttributeDefinitionProperty where
  type PropertyType "GroupingName" GroupingAttributeDefinitionProperty = Value Prelude.Text
  set newValue GroupingAttributeDefinitionProperty {..}
    = GroupingAttributeDefinitionProperty {groupingName = newValue, ..}
instance Property "GroupingSourceKeys" GroupingAttributeDefinitionProperty where
  type PropertyType "GroupingSourceKeys" GroupingAttributeDefinitionProperty = ValueList Prelude.Text
  set newValue GroupingAttributeDefinitionProperty {..}
    = GroupingAttributeDefinitionProperty
        {groupingSourceKeys = newValue, ..}