module Stratosphere.S3Tables.TableBucket.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-encryptionconfiguration.html>
    EncryptionConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-encryptionconfiguration.html#cfn-s3tables-tablebucket-encryptionconfiguration-kmskeyarn>
                                     kMSKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-tablebucket-encryptionconfiguration.html#cfn-s3tables-tablebucket-encryptionconfiguration-ssealgorithm>
                                     sSEAlgorithm :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  EncryptionConfigurationProperty
mkEncryptionConfigurationProperty
  = EncryptionConfigurationProperty
      {haddock_workaround_ = (), kMSKeyArn = Prelude.Nothing,
       sSEAlgorithm = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::TableBucket.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn,
                            (JSON..=) "SSEAlgorithm" Prelude.<$> sSEAlgorithm])}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn,
               (JSON..=) "SSEAlgorithm" Prelude.<$> sSEAlgorithm]))
instance Property "KMSKeyArn" EncryptionConfigurationProperty where
  type PropertyType "KMSKeyArn" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {kMSKeyArn = Prelude.pure newValue, ..}
instance Property "SSEAlgorithm" EncryptionConfigurationProperty where
  type PropertyType "SSEAlgorithm" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {sSEAlgorithm = Prelude.pure newValue, ..}