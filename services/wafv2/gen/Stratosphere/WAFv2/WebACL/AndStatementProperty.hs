module Stratosphere.WAFv2.WebACL.AndStatementProperty (
        module Exports, AndStatementProperty(..), mkAndStatementProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFv2.WebACL.StatementProperty as Exports
import Stratosphere.ResourceProperties
data AndStatementProperty
  = AndStatementProperty {statements :: [StatementProperty]}
mkAndStatementProperty ::
  [StatementProperty] -> AndStatementProperty
mkAndStatementProperty statements
  = AndStatementProperty {statements = statements}
instance ToResourceProperties AndStatementProperty where
  toResourceProperties AndStatementProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::WebACL.AndStatement",
         properties = ["Statements" JSON..= statements]}
instance JSON.ToJSON AndStatementProperty where
  toJSON AndStatementProperty {..}
    = JSON.object ["Statements" JSON..= statements]
instance Property "Statements" AndStatementProperty where
  type PropertyType "Statements" AndStatementProperty = [StatementProperty]
  set newValue AndStatementProperty {}
    = AndStatementProperty {statements = newValue, ..}