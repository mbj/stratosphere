module Stratosphere.DMS.Endpoint.DynamoDbSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DynamoDbSettingsProperty :: Prelude.Type
instance ToResourceProperties DynamoDbSettingsProperty
instance JSON.ToJSON DynamoDbSettingsProperty