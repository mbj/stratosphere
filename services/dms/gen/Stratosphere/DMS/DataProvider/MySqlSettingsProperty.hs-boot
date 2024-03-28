module Stratosphere.DMS.DataProvider.MySqlSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MySqlSettingsProperty :: Prelude.Type
instance ToResourceProperties MySqlSettingsProperty
instance Prelude.Eq MySqlSettingsProperty
instance Prelude.Show MySqlSettingsProperty
instance JSON.ToJSON MySqlSettingsProperty