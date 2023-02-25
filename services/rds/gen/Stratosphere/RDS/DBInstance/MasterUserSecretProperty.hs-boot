module Stratosphere.RDS.DBInstance.MasterUserSecretProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MasterUserSecretProperty :: Prelude.Type
instance ToResourceProperties MasterUserSecretProperty
instance JSON.ToJSON MasterUserSecretProperty