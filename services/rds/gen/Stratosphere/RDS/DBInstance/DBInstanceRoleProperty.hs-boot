module Stratosphere.RDS.DBInstance.DBInstanceRoleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DBInstanceRoleProperty :: Prelude.Type
instance ToResourceProperties DBInstanceRoleProperty
instance Prelude.Eq DBInstanceRoleProperty
instance Prelude.Show DBInstanceRoleProperty
instance JSON.ToJSON DBInstanceRoleProperty