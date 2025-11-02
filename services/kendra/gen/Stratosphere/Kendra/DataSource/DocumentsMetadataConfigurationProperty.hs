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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentsmetadataconfiguration.html>
    DocumentsMetadataConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentsmetadataconfiguration.html#cfn-kendra-datasource-documentsmetadataconfiguration-s3prefix>
                                            s3Prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentsMetadataConfigurationProperty ::
  DocumentsMetadataConfigurationProperty
mkDocumentsMetadataConfigurationProperty
  = DocumentsMetadataConfigurationProperty
      {haddock_workaround_ = (), s3Prefix = Prelude.Nothing}
instance ToResourceProperties DocumentsMetadataConfigurationProperty where
  toResourceProperties DocumentsMetadataConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::DataSource.DocumentsMetadataConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix])}
instance JSON.ToJSON DocumentsMetadataConfigurationProperty where
  toJSON DocumentsMetadataConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Prefix" Prelude.<$> s3Prefix]))
instance Property "S3Prefix" DocumentsMetadataConfigurationProperty where
  type PropertyType "S3Prefix" DocumentsMetadataConfigurationProperty = Value Prelude.Text
  set newValue DocumentsMetadataConfigurationProperty {..}
    = DocumentsMetadataConfigurationProperty
        {s3Prefix = Prelude.pure newValue, ..}