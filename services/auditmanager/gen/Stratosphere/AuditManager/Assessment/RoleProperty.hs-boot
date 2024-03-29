module Stratosphere.AuditManager.Assessment.RoleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RoleProperty :: Prelude.Type
instance ToResourceProperties RoleProperty
instance Prelude.Eq RoleProperty
instance Prelude.Show RoleProperty
instance JSON.ToJSON RoleProperty