module Stratosphere.Budgets.BudgetsAction.ScpActionDefinitionProperty (
        ScpActionDefinitionProperty(..), mkScpActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScpActionDefinitionProperty
  = ScpActionDefinitionProperty {policyId :: (Value Prelude.Text),
                                 targetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScpActionDefinitionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ScpActionDefinitionProperty
mkScpActionDefinitionProperty policyId targetIds
  = ScpActionDefinitionProperty
      {policyId = policyId, targetIds = targetIds}
instance ToResourceProperties ScpActionDefinitionProperty where
  toResourceProperties ScpActionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.ScpActionDefinition",
         supportsTags = Prelude.False,
         properties = ["PolicyId" JSON..= policyId,
                       "TargetIds" JSON..= targetIds]}
instance JSON.ToJSON ScpActionDefinitionProperty where
  toJSON ScpActionDefinitionProperty {..}
    = JSON.object
        ["PolicyId" JSON..= policyId, "TargetIds" JSON..= targetIds]
instance Property "PolicyId" ScpActionDefinitionProperty where
  type PropertyType "PolicyId" ScpActionDefinitionProperty = Value Prelude.Text
  set newValue ScpActionDefinitionProperty {..}
    = ScpActionDefinitionProperty {policyId = newValue, ..}
instance Property "TargetIds" ScpActionDefinitionProperty where
  type PropertyType "TargetIds" ScpActionDefinitionProperty = ValueList Prelude.Text
  set newValue ScpActionDefinitionProperty {..}
    = ScpActionDefinitionProperty {targetIds = newValue, ..}