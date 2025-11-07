module Stratosphere.ApplicationSignals.GroupingConfiguration (
        module Exports, GroupingConfiguration(..), mkGroupingConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.GroupingConfiguration.GroupingAttributeDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data GroupingConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationsignals-groupingconfiguration.html>
    GroupingConfiguration {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationsignals-groupingconfiguration.html#cfn-applicationsignals-groupingconfiguration-groupingattributedefinitions>
                           groupingAttributeDefinitions :: [GroupingAttributeDefinitionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGroupingConfiguration ::
  [GroupingAttributeDefinitionProperty] -> GroupingConfiguration
mkGroupingConfiguration groupingAttributeDefinitions
  = GroupingConfiguration
      {haddock_workaround_ = (),
       groupingAttributeDefinitions = groupingAttributeDefinitions}
instance ToResourceProperties GroupingConfiguration where
  toResourceProperties GroupingConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::GroupingConfiguration",
         supportsTags = Prelude.False,
         properties = ["GroupingAttributeDefinitions"
                         JSON..= groupingAttributeDefinitions]}
instance JSON.ToJSON GroupingConfiguration where
  toJSON GroupingConfiguration {..}
    = JSON.object
        ["GroupingAttributeDefinitions"
           JSON..= groupingAttributeDefinitions]
instance Property "GroupingAttributeDefinitions" GroupingConfiguration where
  type PropertyType "GroupingAttributeDefinitions" GroupingConfiguration = [GroupingAttributeDefinitionProperty]
  set newValue GroupingConfiguration {..}
    = GroupingConfiguration
        {groupingAttributeDefinitions = newValue, ..}