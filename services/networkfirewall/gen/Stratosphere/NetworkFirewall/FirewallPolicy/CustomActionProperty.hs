module Stratosphere.NetworkFirewall.FirewallPolicy.CustomActionProperty (
        module Exports, CustomActionProperty(..), mkCustomActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.ActionDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionProperty
  = CustomActionProperty {actionDefinition :: ActionDefinitionProperty,
                          actionName :: (Value Prelude.Text)}
mkCustomActionProperty ::
  ActionDefinitionProperty
  -> Value Prelude.Text -> CustomActionProperty
mkCustomActionProperty actionDefinition actionName
  = CustomActionProperty
      {actionDefinition = actionDefinition, actionName = actionName}
instance ToResourceProperties CustomActionProperty where
  toResourceProperties CustomActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.CustomAction",
         supportsTags = Prelude.False,
         properties = ["ActionDefinition" JSON..= actionDefinition,
                       "ActionName" JSON..= actionName]}
instance JSON.ToJSON CustomActionProperty where
  toJSON CustomActionProperty {..}
    = JSON.object
        ["ActionDefinition" JSON..= actionDefinition,
         "ActionName" JSON..= actionName]
instance Property "ActionDefinition" CustomActionProperty where
  type PropertyType "ActionDefinition" CustomActionProperty = ActionDefinitionProperty
  set newValue CustomActionProperty {..}
    = CustomActionProperty {actionDefinition = newValue, ..}
instance Property "ActionName" CustomActionProperty where
  type PropertyType "ActionName" CustomActionProperty = Value Prelude.Text
  set newValue CustomActionProperty {..}
    = CustomActionProperty {actionName = newValue, ..}