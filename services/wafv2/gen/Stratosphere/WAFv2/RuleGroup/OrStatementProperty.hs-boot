module Stratosphere.WAFv2.RuleGroup.OrStatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OrStatementProperty :: Prelude.Type
instance ToResourceProperties OrStatementProperty
instance JSON.ToJSON OrStatementProperty