module Stratosphere.DMS.Endpoint.KafkaSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KafkaSettingsProperty :: Prelude.Type
instance ToResourceProperties KafkaSettingsProperty
instance Prelude.Eq KafkaSettingsProperty
instance Prelude.Show KafkaSettingsProperty
instance JSON.ToJSON KafkaSettingsProperty