module Stratosphere.Budgets.BudgetsAction.DefinitionProperty (
        module Exports, DefinitionProperty(..), mkDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.IamActionDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.ScpActionDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.Budgets.BudgetsAction.SsmActionDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data DefinitionProperty
  = DefinitionProperty {iamActionDefinition :: (Prelude.Maybe IamActionDefinitionProperty),
                        scpActionDefinition :: (Prelude.Maybe ScpActionDefinitionProperty),
                        ssmActionDefinition :: (Prelude.Maybe SsmActionDefinitionProperty)}
mkDefinitionProperty :: DefinitionProperty
mkDefinitionProperty
  = DefinitionProperty
      {iamActionDefinition = Prelude.Nothing,
       scpActionDefinition = Prelude.Nothing,
       ssmActionDefinition = Prelude.Nothing}
instance ToResourceProperties DefinitionProperty where
  toResourceProperties DefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Budgets::BudgetsAction.Definition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IamActionDefinition" Prelude.<$> iamActionDefinition,
                            (JSON..=) "ScpActionDefinition" Prelude.<$> scpActionDefinition,
                            (JSON..=) "SsmActionDefinition" Prelude.<$> ssmActionDefinition])}
instance JSON.ToJSON DefinitionProperty where
  toJSON DefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IamActionDefinition" Prelude.<$> iamActionDefinition,
               (JSON..=) "ScpActionDefinition" Prelude.<$> scpActionDefinition,
               (JSON..=) "SsmActionDefinition" Prelude.<$> ssmActionDefinition]))
instance Property "IamActionDefinition" DefinitionProperty where
  type PropertyType "IamActionDefinition" DefinitionProperty = IamActionDefinitionProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty
        {iamActionDefinition = Prelude.pure newValue, ..}
instance Property "ScpActionDefinition" DefinitionProperty where
  type PropertyType "ScpActionDefinition" DefinitionProperty = ScpActionDefinitionProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty
        {scpActionDefinition = Prelude.pure newValue, ..}
instance Property "SsmActionDefinition" DefinitionProperty where
  type PropertyType "SsmActionDefinition" DefinitionProperty = SsmActionDefinitionProperty
  set newValue DefinitionProperty {..}
    = DefinitionProperty
        {ssmActionDefinition = Prelude.pure newValue, ..}