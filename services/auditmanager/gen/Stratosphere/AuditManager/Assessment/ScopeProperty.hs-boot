module Stratosphere.AuditManager.Assessment.ScopeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScopeProperty :: Prelude.Type
instance ToResourceProperties ScopeProperty
instance Prelude.Eq ScopeProperty
instance Prelude.Show ScopeProperty
instance JSON.ToJSON ScopeProperty