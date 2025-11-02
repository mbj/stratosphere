module Stratosphere.Budgets.BudgetsAction.ScpActionDefinitionProperty (
        ScpActionDefinitionProperty(..), mkScpActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScpActionDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-scpactiondefinition.html>
    ScpActionDefinitionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-scpactiondefinition.html#cfn-budgets-budgetsaction-scpactiondefinition-policyid>
                                 policyId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-budgets-budgetsaction-scpactiondefinition.html#cfn-budgets-budgetsaction-scpactiondefinition-targetids>
                                 targetIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScpActionDefinitionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> ScpActionDefinitionProperty
mkScpActionDefinitionProperty policyId targetIds
  = ScpActionDefinitionProperty
      {haddock_workaround_ = (), policyId = policyId,
       targetIds = targetIds}
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