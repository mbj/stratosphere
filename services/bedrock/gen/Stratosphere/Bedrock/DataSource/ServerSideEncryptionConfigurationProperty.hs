module Stratosphere.Bedrock.DataSource.ServerSideEncryptionConfigurationProperty (
        ServerSideEncryptionConfigurationProperty(..),
        mkServerSideEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerSideEncryptionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-serversideencryptionconfiguration.html>
    ServerSideEncryptionConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-serversideencryptionconfiguration.html#cfn-bedrock-datasource-serversideencryptionconfiguration-kmskeyarn>
                                               kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerSideEncryptionConfigurationProperty ::
  ServerSideEncryptionConfigurationProperty
mkServerSideEncryptionConfigurationProperty
  = ServerSideEncryptionConfigurationProperty
      {haddock_workaround_ = (), kmsKeyArn = Prelude.Nothing}
instance ToResourceProperties ServerSideEncryptionConfigurationProperty where
  toResourceProperties ServerSideEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.ServerSideEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn])}
instance JSON.ToJSON ServerSideEncryptionConfigurationProperty where
  toJSON ServerSideEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn]))
instance Property "KmsKeyArn" ServerSideEncryptionConfigurationProperty where
  type PropertyType "KmsKeyArn" ServerSideEncryptionConfigurationProperty = Value Prelude.Text
  set newValue ServerSideEncryptionConfigurationProperty {..}
    = ServerSideEncryptionConfigurationProperty
        {kmsKeyArn = Prelude.pure newValue, ..}