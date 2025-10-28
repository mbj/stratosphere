module Stratosphere.NetworkFirewall.RuleGroup.CustomActionProperty (
        module Exports, CustomActionProperty(..), mkCustomActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.ActionDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html>
    CustomActionProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html#cfn-networkfirewall-rulegroup-customaction-actiondefinition>
                          actionDefinition :: ActionDefinitionProperty,
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-customaction.html#cfn-networkfirewall-rulegroup-customaction-actionname>
                          actionName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomActionProperty ::
  ActionDefinitionProperty
  -> Value Prelude.Text -> CustomActionProperty
mkCustomActionProperty actionDefinition actionName
  = CustomActionProperty
      {haddock_workaround_ = (), actionDefinition = actionDefinition,
       actionName = actionName}
instance ToResourceProperties CustomActionProperty where
  toResourceProperties CustomActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.CustomAction",
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