module Stratosphere.WAFv2.RuleGroup.NotStatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data NotStatementProperty :: Prelude.Type
instance ToResourceProperties NotStatementProperty
instance JSON.ToJSON NotStatementProperty