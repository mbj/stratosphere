module Stratosphere.Glue.SecurityConfiguration.S3EncryptionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3EncryptionProperty :: Prelude.Type
instance ToResourceProperties S3EncryptionProperty
instance JSON.ToJSON S3EncryptionProperty