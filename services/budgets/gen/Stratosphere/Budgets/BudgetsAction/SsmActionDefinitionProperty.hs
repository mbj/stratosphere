module Stratosphere.Budgets.BudgetsAction.SsmActionDefinitionProperty (
        SsmActionDefinitionProperty(..), mkSsmActionDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SsmActionDefinitionProperty
  = SsmActionDefinitionProperty {instanceIds :: (ValueList Prelude.Text),
                                 region :: (Value Prelude.Text),
                                 subtype :: (Value Prelude.Text)}
mkSsmActionDefinitionProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SsmActionDefinitionProperty
mkSsmActionDefinitionProperty instanceIds region subtype
  = SsmActionDefinitionProperty
      {instanceIds = instanceIds, region = region, subtype = subtype}
instance ToResourceProperties SsmActionDefinitionProperty where
  toResourceProperties SsmActionDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.SsmActionDefinition",
         supportsTags = Prelude.False,
         properties = ["InstanceIds" JSON..= instanceIds,
                       "Region" JSON..= region, "Subtype" JSON..= subtype]}
instance JSON.ToJSON SsmActionDefinitionProperty where
  toJSON SsmActionDefinitionProperty {..}
    = JSON.object
        ["InstanceIds" JSON..= instanceIds, "Region" JSON..= region,
         "Subtype" JSON..= subtype]
instance Property "InstanceIds" SsmActionDefinitionProperty where
  type PropertyType "InstanceIds" SsmActionDefinitionProperty = ValueList Prelude.Text
  set newValue SsmActionDefinitionProperty {..}
    = SsmActionDefinitionProperty {instanceIds = newValue, ..}
instance Property "Region" SsmActionDefinitionProperty where
  type PropertyType "Region" SsmActionDefinitionProperty = Value Prelude.Text
  set newValue SsmActionDefinitionProperty {..}
    = SsmActionDefinitionProperty {region = newValue, ..}
instance Property "Subtype" SsmActionDefinitionProperty where
  type PropertyType "Subtype" SsmActionDefinitionProperty = Value Prelude.Text
  set newValue SsmActionDefinitionProperty {..}
    = SsmActionDefinitionProperty {subtype = newValue, ..}