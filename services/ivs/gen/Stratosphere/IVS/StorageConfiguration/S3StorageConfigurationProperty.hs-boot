module Stratosphere.IVS.StorageConfiguration.S3StorageConfigurationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3StorageConfigurationProperty :: Prelude.Type
instance ToResourceProperties S3StorageConfigurationProperty
instance Prelude.Eq S3StorageConfigurationProperty
instance Prelude.Show S3StorageConfigurationProperty
instance JSON.ToJSON S3StorageConfigurationProperty