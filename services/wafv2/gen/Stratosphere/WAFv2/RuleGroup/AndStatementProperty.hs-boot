module Stratosphere.WAFv2.RuleGroup.AndStatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AndStatementProperty :: Prelude.Type
instance ToResourceProperties AndStatementProperty
instance JSON.ToJSON AndStatementProperty