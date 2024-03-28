module Stratosphere.EKS.AccessEntry.AccessScopeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccessScopeProperty :: Prelude.Type
instance ToResourceProperties AccessScopeProperty
instance Prelude.Eq AccessScopeProperty
instance Prelude.Show AccessScopeProperty
instance JSON.ToJSON AccessScopeProperty