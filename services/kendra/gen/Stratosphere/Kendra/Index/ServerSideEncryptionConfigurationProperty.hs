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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-serversideencryptionconfiguration.html>
    ServerSideEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-serversideencryptionconfiguration.html#cfn-kendra-index-serversideencryptionconfiguration-kmskeyid>
                                               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerSideEncryptionConfigurationProperty ::
  ServerSideEncryptionConfigurationProperty
mkServerSideEncryptionConfigurationProperty
  = ServerSideEncryptionConfigurationProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing}
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
  set newValue ServerSideEncryptionConfigurationProperty {..}
    = ServerSideEncryptionConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}