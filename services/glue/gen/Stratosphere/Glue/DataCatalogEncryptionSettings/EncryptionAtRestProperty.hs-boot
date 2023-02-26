module Stratosphere.Glue.DataCatalogEncryptionSettings.EncryptionAtRestProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EncryptionAtRestProperty :: Prelude.Type
instance ToResourceProperties EncryptionAtRestProperty
instance JSON.ToJSON EncryptionAtRestProperty