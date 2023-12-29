module Stratosphere.DLM.LifecyclePolicy.EncryptionConfigurationProperty (
        EncryptionConfigurationProperty(..),
        mkEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionConfigurationProperty
  = EncryptionConfigurationProperty {cmkArn :: (Prelude.Maybe (Value Prelude.Text)),
                                     encrypted :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionConfigurationProperty ::
  Value Prelude.Bool -> EncryptionConfigurationProperty
mkEncryptionConfigurationProperty encrypted
  = EncryptionConfigurationProperty
      {encrypted = encrypted, cmkArn = Prelude.Nothing}
instance ToResourceProperties EncryptionConfigurationProperty where
  toResourceProperties EncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DLM::LifecyclePolicy.EncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Encrypted" JSON..= encrypted]
                           (Prelude.catMaybes [(JSON..=) "CmkArn" Prelude.<$> cmkArn]))}
instance JSON.ToJSON EncryptionConfigurationProperty where
  toJSON EncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Encrypted" JSON..= encrypted]
              (Prelude.catMaybes [(JSON..=) "CmkArn" Prelude.<$> cmkArn])))
instance Property "CmkArn" EncryptionConfigurationProperty where
  type PropertyType "CmkArn" EncryptionConfigurationProperty = Value Prelude.Text
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty
        {cmkArn = Prelude.pure newValue, ..}
instance Property "Encrypted" EncryptionConfigurationProperty where
  type PropertyType "Encrypted" EncryptionConfigurationProperty = Value Prelude.Bool
  set newValue EncryptionConfigurationProperty {..}
    = EncryptionConfigurationProperty {encrypted = newValue, ..}