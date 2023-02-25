module Stratosphere.Grafana.Workspace.RoleValuesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoleValuesProperty :: Prelude.Type
instance ToResourceProperties RoleValuesProperty
instance JSON.ToJSON RoleValuesProperty