module Stratosphere.Config.ConfigRule.ScopeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ScopeProperty :: Prelude.Type
instance ToResourceProperties ScopeProperty
instance JSON.ToJSON ScopeProperty