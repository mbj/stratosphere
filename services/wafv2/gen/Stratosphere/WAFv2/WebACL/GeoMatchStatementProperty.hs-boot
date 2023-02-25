module Stratosphere.WAFv2.WebACL.GeoMatchStatementProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GeoMatchStatementProperty :: Prelude.Type
instance ToResourceProperties GeoMatchStatementProperty
instance JSON.ToJSON GeoMatchStatementProperty