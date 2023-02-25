module Stratosphere.DMS.Endpoint.MySqlSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MySqlSettingsProperty :: Prelude.Type
instance ToResourceProperties MySqlSettingsProperty
instance JSON.ToJSON MySqlSettingsProperty