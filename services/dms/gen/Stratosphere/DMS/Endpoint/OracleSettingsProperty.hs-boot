module Stratosphere.DMS.Endpoint.OracleSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OracleSettingsProperty :: Prelude.Type
instance ToResourceProperties OracleSettingsProperty
instance JSON.ToJSON OracleSettingsProperty