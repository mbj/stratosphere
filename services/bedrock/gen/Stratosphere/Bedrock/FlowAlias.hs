module Stratosphere.Bedrock.FlowAlias (
        module Exports, FlowAlias(..), mkFlowAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowAlias.FlowAliasRoutingConfigurationListItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowAlias
  = FlowAlias {description :: (Prelude.Maybe (Value Prelude.Text)),
               flowArn :: (Value Prelude.Text),
               name :: (Value Prelude.Text),
               routingConfiguration :: [FlowAliasRoutingConfigurationListItemProperty],
               tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowAlias ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> [FlowAliasRoutingConfigurationListItemProperty] -> FlowAlias
mkFlowAlias flowArn name routingConfiguration
  = FlowAlias
      {flowArn = flowArn, name = name,
       routingConfiguration = routingConfiguration,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FlowAlias where
  toResourceProperties FlowAlias {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowAlias", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlowArn" JSON..= flowArn, "Name" JSON..= name,
                            "RoutingConfiguration" JSON..= routingConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FlowAlias where
  toJSON FlowAlias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlowArn" JSON..= flowArn, "Name" JSON..= name,
               "RoutingConfiguration" JSON..= routingConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" FlowAlias where
  type PropertyType "Description" FlowAlias = Value Prelude.Text
  set newValue FlowAlias {..}
    = FlowAlias {description = Prelude.pure newValue, ..}
instance Property "FlowArn" FlowAlias where
  type PropertyType "FlowArn" FlowAlias = Value Prelude.Text
  set newValue FlowAlias {..} = FlowAlias {flowArn = newValue, ..}
instance Property "Name" FlowAlias where
  type PropertyType "Name" FlowAlias = Value Prelude.Text
  set newValue FlowAlias {..} = FlowAlias {name = newValue, ..}
instance Property "RoutingConfiguration" FlowAlias where
  type PropertyType "RoutingConfiguration" FlowAlias = [FlowAliasRoutingConfigurationListItemProperty]
  set newValue FlowAlias {..}
    = FlowAlias {routingConfiguration = newValue, ..}
instance Property "Tags" FlowAlias where
  type PropertyType "Tags" FlowAlias = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue FlowAlias {..}
    = FlowAlias {tags = Prelude.pure newValue, ..}