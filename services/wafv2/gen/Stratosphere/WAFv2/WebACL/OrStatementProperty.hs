module Stratosphere.WAFv2.WebACL.OrStatementProperty (
        module Exports, OrStatementProperty(..), mkOrStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
data OrStatementProperty
  = OrStatementProperty {statements :: [StatementProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrStatementProperty :: [StatementProperty] -> OrStatementProperty
mkOrStatementProperty statements
  = OrStatementProperty {statements = statements}
instance ToResourceProperties OrStatementProperty where
  toResourceProperties OrStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.OrStatement",
         supportsTags = Prelude.False,
         properties = ["Statements" JSON..= statements]}
instance JSON.ToJSON OrStatementProperty where
  toJSON OrStatementProperty {..}
    = JSON.object ["Statements" JSON..= statements]
instance Property "Statements" OrStatementProperty where
  type PropertyType "Statements" OrStatementProperty = [StatementProperty]
  set newValue OrStatementProperty {}
    = OrStatementProperty {statements = newValue, ..}