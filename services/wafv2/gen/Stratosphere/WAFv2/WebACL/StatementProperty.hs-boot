module Stratosphere.WAFv2.WebACL.StatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StatementProperty :: Prelude.Type
instance ToResourceProperties StatementProperty
instance Prelude.Eq StatementProperty
instance Prelude.Show StatementProperty
instance JSON.ToJSON StatementProperty