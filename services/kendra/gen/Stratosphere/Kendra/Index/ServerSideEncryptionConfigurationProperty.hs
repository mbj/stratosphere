module Stratosphere.Kendra.Index.ServerSideEncryptionConfigurationProperty (
        ServerSideEncryptionConfigurationProperty(..),
        mkServerSideEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionConfigurationProperty
  = ServerSideEncryptionConfigurationProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
mkServerSideEncryptionConfigurationProperty ::
  ServerSideEncryptionConfigurationProperty
mkServerSideEncryptionConfigurationProperty
  = ServerSideEncryptionConfigurationProperty
      {kmsKeyId = Prelude.Nothing}
instance ToResourceProperties ServerSideEncryptionConfigurationProperty where
  toResourceProperties ServerSideEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.ServerSideEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])}
instance JSON.ToJSON ServerSideEncryptionConfigurationProperty where
  toJSON ServerSideEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))
instance Property "KmsKeyId" ServerSideEncryptionConfigurationProperty where
  type PropertyType "KmsKeyId" ServerSideEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ServerSideEncryptionConfigurationProperty {}
    = ServerSideEncryptionConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}