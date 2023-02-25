module Stratosphere.DMS.Endpoint.KinesisSettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KinesisSettingsProperty :: Prelude.Type
instance ToResourceProperties KinesisSettingsProperty
instance JSON.ToJSON KinesisSettingsProperty