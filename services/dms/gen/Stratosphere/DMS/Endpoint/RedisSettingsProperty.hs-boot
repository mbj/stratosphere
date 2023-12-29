module Stratosphere.DMS.Endpoint.RedisSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RedisSettingsProperty :: Prelude.Type
instance ToResourceProperties RedisSettingsProperty
instance Prelude.Eq RedisSettingsProperty
instance Prelude.Show RedisSettingsProperty
instance JSON.ToJSON RedisSettingsProperty