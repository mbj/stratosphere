module Stratosphere.DMS.Endpoint.GcpMySQLSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GcpMySQLSettingsProperty :: Prelude.Type
instance ToResourceProperties GcpMySQLSettingsProperty
instance JSON.ToJSON GcpMySQLSettingsProperty