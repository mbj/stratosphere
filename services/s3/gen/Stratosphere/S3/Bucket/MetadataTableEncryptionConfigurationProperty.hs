module Stratosphere.S3.Bucket.MetadataTableEncryptionConfigurationProperty (
        MetadataTableEncryptionConfigurationProperty(..),
        mkMetadataTableEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataTableEncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatatableencryptionconfiguration.html>
    MetadataTableEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatatableencryptionconfiguration.html#cfn-s3-bucket-metadatatableencryptionconfiguration-kmskeyarn>
                                                  kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metadatatableencryptionconfiguration.html#cfn-s3-bucket-metadatatableencryptionconfiguration-ssealgorithm>
                                                  sseAlgorithm :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataTableEncryptionConfigurationProperty ::
  Value Prelude.Text -> MetadataTableEncryptionConfigurationProperty
mkMetadataTableEncryptionConfigurationProperty sseAlgorithm
  = MetadataTableEncryptionConfigurationProperty
      {haddock_workaround_ = (), sseAlgorithm = sseAlgorithm,
       kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties MetadataTableEncryptionConfigurationProperty where
  toResourceProperties
    MetadataTableEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.MetadataTableEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SseAlgorithm" JSON..= sseAlgorithm]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))}
instance JSON.ToJSON MetadataTableEncryptionConfigurationProperty where
  toJSON MetadataTableEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SseAlgorithm" JSON..= sseAlgorithm]
              (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])))
instance Property "KmsKeyArn" MetadataTableEncryptionConfigurationProperty where
  type PropertyType "KmsKeyArn" MetadataTableEncryptionConfigurationProperty = Value Prelude.Text
  set newValue MetadataTableEncryptionConfigurationProperty {..}
    = MetadataTableEncryptionConfigurationProperty
        {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "SseAlgorithm" MetadataTableEncryptionConfigurationProperty where
  type PropertyType "SseAlgorithm" MetadataTableEncryptionConfigurationProperty = Value Prelude.Text
  set newValue MetadataTableEncryptionConfigurationProperty {..}
    = MetadataTableEncryptionConfigurationProperty
        {sseAlgorithm = newValue, ..}