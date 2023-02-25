module Stratosphere.DMS.Endpoint.S3SettingsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3SettingsProperty :: Prelude.Type
instance ToResourceProperties S3SettingsProperty
instance JSON.ToJSON S3SettingsProperty