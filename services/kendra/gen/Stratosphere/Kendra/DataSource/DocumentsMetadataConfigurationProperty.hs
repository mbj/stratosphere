module Stratosphere.Kendra.DataSource.DocumentsMetadataConfigurationProperty (
        DocumentsMetadataConfigurationProperty(..),
        mkDocumentsMetadataConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentsMetadataConfigurationProperty
  = DocumentsMetadataConfigurationProperty {s3Prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkDocumentsMetadataConfigurationProperty ::
  DocumentsMetadataConfigurationProperty
mkDocumentsMetadataConfigurationProperty
  = DocumentsMetadataConfigurationProperty
      {s3Prefix = Prelude.Nothing}
instance ToResourceProperties DocumentsMetadataConfigurationProperty where
  toResourceProperties DocumentsMetadataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentsMetadataConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix])}
instance JSON.ToJSON DocumentsMetadataConfigurationProperty where
  toJSON DocumentsMetadataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix]))
instance Property "S3Prefix" DocumentsMetadataConfigurationProperty where
  type PropertyType "S3Prefix" DocumentsMetadataConfigurationProperty = Value Prelude.Text
  set newValue DocumentsMetadataConfigurationProperty {}
    = DocumentsMetadataConfigurationProperty
        {s3Prefix = Prelude.pure newValue, ..}