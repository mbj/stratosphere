module Stratosphere.DMS.Endpoint.MongoDbSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MongoDbSettingsProperty :: Prelude.Type
instance ToResourceProperties MongoDbSettingsProperty
instance JSON.ToJSON MongoDbSettingsProperty