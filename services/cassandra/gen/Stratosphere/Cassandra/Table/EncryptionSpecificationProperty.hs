module Stratosphere.Cassandra.Table.EncryptionSpecificationProperty (
        EncryptionSpecificationProperty(..),
        mkEncryptionSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-encryptionspecification.html>
    EncryptionSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-encryptionspecification.html#cfn-cassandra-table-encryptionspecification-encryptiontype>
                                     encryptionType :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-encryptionspecification.html#cfn-cassandra-table-encryptionspecification-kmskeyidentifier>
                                     kmsKeyIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionSpecificationProperty ::
  Value Prelude.Text -> EncryptionSpecificationProperty
mkEncryptionSpecificationProperty encryptionType
  = EncryptionSpecificationProperty
      {haddock_workaround_ = (), encryptionType = encryptionType,
       kmsKeyIdentifier = Prelude.Nothing}
instance ToResourceProperties EncryptionSpecificationProperty where
  toResourceProperties EncryptionSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.EncryptionSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionType" JSON..= encryptionType]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier]))}
instance JSON.ToJSON EncryptionSpecificationProperty where
  toJSON EncryptionSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionType" JSON..= encryptionType]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKeyIdentifier" Prelude.<$> kmsKeyIdentifier])))
instance Property "EncryptionType" EncryptionSpecificationProperty where
  type PropertyType "EncryptionType" EncryptionSpecificationProperty = Value Prelude.Text
  set newValue EncryptionSpecificationProperty {..}
    = EncryptionSpecificationProperty {encryptionType = newValue, ..}
instance Property "KmsKeyIdentifier" EncryptionSpecificationProperty where
  type PropertyType "KmsKeyIdentifier" EncryptionSpecificationProperty = Value Prelude.Text
  set newValue EncryptionSpecificationProperty {..}
    = EncryptionSpecificationProperty
        {kmsKeyIdentifier = Prelude.pure newValue, ..}