module Stratosphere.Glue.DataCatalogEncryptionSettings.ConnectionPasswordEncryptionProperty (
        ConnectionPasswordEncryptionProperty(..),
        mkConnectionPasswordEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionPasswordEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html>
    ConnectionPasswordEncryptionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-kmskeyid>
                                          kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-datacatalogencryptionsettings-connectionpasswordencryption.html#cfn-glue-datacatalogencryptionsettings-connectionpasswordencryption-returnconnectionpasswordencrypted>
                                          returnConnectionPasswordEncrypted :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionPasswordEncryptionProperty ::
  ConnectionPasswordEncryptionProperty
mkConnectionPasswordEncryptionProperty
  = ConnectionPasswordEncryptionProperty
      {haddock_workaround_ = (), kmsKeyId = Prelude.Nothing,
       returnConnectionPasswordEncrypted = Prelude.Nothing}
instance ToResourceProperties ConnectionPasswordEncryptionProperty where
  toResourceProperties ConnectionPasswordEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::DataCatalogEncryptionSettings.ConnectionPasswordEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "ReturnConnectionPasswordEncrypted"
                              Prelude.<$> returnConnectionPasswordEncrypted])}
instance JSON.ToJSON ConnectionPasswordEncryptionProperty where
  toJSON ConnectionPasswordEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "ReturnConnectionPasswordEncrypted"
                 Prelude.<$> returnConnectionPasswordEncrypted]))
instance Property "KmsKeyId" ConnectionPasswordEncryptionProperty where
  type PropertyType "KmsKeyId" ConnectionPasswordEncryptionProperty = Value Prelude.Text
  set newValue ConnectionPasswordEncryptionProperty {..}
    = ConnectionPasswordEncryptionProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "ReturnConnectionPasswordEncrypted" ConnectionPasswordEncryptionProperty where
  type PropertyType "ReturnConnectionPasswordEncrypted" ConnectionPasswordEncryptionProperty = Value Prelude.Bool
  set newValue ConnectionPasswordEncryptionProperty {..}
    = ConnectionPasswordEncryptionProperty
        {returnConnectionPasswordEncrypted = Prelude.pure newValue, ..}