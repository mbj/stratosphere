module Stratosphere.WAFv2.RuleGroup.OrStatementProperty (
        module Exports, OrStatementProperty(..), mkOrStatementProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.StatementProperty as Exports
import Stratosphere.ResourceProperties
data OrStatementProperty
  = OrStatementProperty {statements :: [StatementProperty]}
mkOrStatementProperty :: [StatementProperty] -> OrStatementProperty
mkOrStatementProperty statements
  = OrStatementProperty {statements = statements}
instance ToResourceProperties OrStatementProperty where
  toResourceProperties OrStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.OrStatement",
         properties = ["Statements" JSON..= statements]}
instance JSON.ToJSON OrStatementProperty where
  toJSON OrStatementProperty {..}
    = JSON.object ["Statements" JSON..= statements]
instance Property "Statements" OrStatementProperty where
  type PropertyType "Statements" OrStatementProperty = [StatementProperty]
  set newValue OrStatementProperty {}
    = OrStatementProperty {statements = newValue, ..}