module Stratosphere.Bedrock.FlowAlias.FlowAliasRoutingConfigurationListItemProperty (
        FlowAliasRoutingConfigurationListItemProperty(..),
        mkFlowAliasRoutingConfigurationListItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowAliasRoutingConfigurationListItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowalias-flowaliasroutingconfigurationlistitem.html>
    FlowAliasRoutingConfigurationListItemProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowalias-flowaliasroutingconfigurationlistitem.html#cfn-bedrock-flowalias-flowaliasroutingconfigurationlistitem-flowversion>
                                                   flowVersion :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowAliasRoutingConfigurationListItemProperty ::
  FlowAliasRoutingConfigurationListItemProperty
mkFlowAliasRoutingConfigurationListItemProperty
  = FlowAliasRoutingConfigurationListItemProperty
      {haddock_workaround_ = (), flowVersion = Prelude.Nothing}
instance ToResourceProperties FlowAliasRoutingConfigurationListItemProperty where
  toResourceProperties
    FlowAliasRoutingConfigurationListItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowAlias.FlowAliasRoutingConfigurationListItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FlowVersion" Prelude.<$> flowVersion])}
instance JSON.ToJSON FlowAliasRoutingConfigurationListItemProperty where
  toJSON FlowAliasRoutingConfigurationListItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FlowVersion" Prelude.<$> flowVersion]))
instance Property "FlowVersion" FlowAliasRoutingConfigurationListItemProperty where
  type PropertyType "FlowVersion" FlowAliasRoutingConfigurationListItemProperty = Value Prelude.Text
  set newValue FlowAliasRoutingConfigurationListItemProperty {..}
    = FlowAliasRoutingConfigurationListItemProperty
        {flowVersion = Prelude.pure newValue, ..}