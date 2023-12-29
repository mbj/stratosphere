module Stratosphere.WAFv2.RuleGroup.NotStatementProperty (
        module Exports, NotStatementProperty(..), mkNotStatementProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.RuleGroup.StatementProperty as Exports
import Stratosphere.ResourceProperties
data NotStatementProperty
  = NotStatementProperty {statement :: StatementProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotStatementProperty :: StatementProperty -> NotStatementProperty
mkNotStatementProperty statement
  = NotStatementProperty {statement = statement}
instance ToResourceProperties NotStatementProperty where
  toResourceProperties NotStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::RuleGroup.NotStatement",
         supportsTags = Prelude.False,
         properties = ["Statement" JSON..= statement]}
instance JSON.ToJSON NotStatementProperty where
  toJSON NotStatementProperty {..}
    = JSON.object ["Statement" JSON..= statement]
instance Property "Statement" NotStatementProperty where
  type PropertyType "Statement" NotStatementProperty = StatementProperty
  set newValue NotStatementProperty {}
    = NotStatementProperty {statement = newValue, ..}