module Stratosphere.HealthLake.FHIRDatastore.KmsEncryptionConfigProperty (
        KmsEncryptionConfigProperty(..), mkKmsEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KmsEncryptionConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-kmsencryptionconfig.html>
    KmsEncryptionConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-kmsencryptionconfig.html#cfn-healthlake-fhirdatastore-kmsencryptionconfig-cmktype>
                                 cmkType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-healthlake-fhirdatastore-kmsencryptionconfig.html#cfn-healthlake-fhirdatastore-kmsencryptionconfig-kmskeyid>
                                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKmsEncryptionConfigProperty ::
  Value Prelude.Text -> KmsEncryptionConfigProperty
mkKmsEncryptionConfigProperty cmkType
  = KmsEncryptionConfigProperty
      {haddock_workaround_ = (), cmkType = cmkType,
       kmsKeyId = Prelude.Nothing}
instance ToResourceProperties KmsEncryptionConfigProperty where
  toResourceProperties KmsEncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::HealthLake::FHIRDatastore.KmsEncryptionConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CmkType" JSON..= cmkType]
                           (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId]))}
instance JSON.ToJSON KmsEncryptionConfigProperty where
  toJSON KmsEncryptionConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CmkType" JSON..= cmkType]
              (Prelude.catMaybes [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId])))
instance Property "CmkType" KmsEncryptionConfigProperty where
  type PropertyType "CmkType" KmsEncryptionConfigProperty = Value Prelude.Text
  set newValue KmsEncryptionConfigProperty {..}
    = KmsEncryptionConfigProperty {cmkType = newValue, ..}
instance Property "KmsKeyId" KmsEncryptionConfigProperty where
  type PropertyType "KmsKeyId" KmsEncryptionConfigProperty = Value Prelude.Text
  set newValue KmsEncryptionConfigProperty {..}
    = KmsEncryptionConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}