module Stratosphere.WAFv2.WebACL.StatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatementProperty :: Prelude.Type
instance ToResourceProperties StatementProperty
instance JSON.ToJSON StatementProperty