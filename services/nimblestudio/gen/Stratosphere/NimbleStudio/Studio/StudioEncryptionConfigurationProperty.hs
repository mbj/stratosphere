module Stratosphere.NimbleStudio.Studio.StudioEncryptionConfigurationProperty (
        StudioEncryptionConfigurationProperty(..),
        mkStudioEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StudioEncryptionConfigurationProperty
  = StudioEncryptionConfigurationProperty {keyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           keyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioEncryptionConfigurationProperty ::
  Value Prelude.Text -> StudioEncryptionConfigurationProperty
mkStudioEncryptionConfigurationProperty keyType
  = StudioEncryptionConfigurationProperty
      {keyType = keyType, keyArn = Prelude.Nothing}
instance ToResourceProperties StudioEncryptionConfigurationProperty where
  toResourceProperties StudioEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::Studio.StudioEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyType" JSON..= keyType]
                           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))}
instance JSON.ToJSON StudioEncryptionConfigurationProperty where
  toJSON StudioEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyType" JSON..= keyType]
              (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])))
instance Property "KeyArn" StudioEncryptionConfigurationProperty where
  type PropertyType "KeyArn" StudioEncryptionConfigurationProperty = Value Prelude.Text
  set newValue StudioEncryptionConfigurationProperty {..}
    = StudioEncryptionConfigurationProperty
        {keyArn = Prelude.pure newValue, ..}
instance Property "KeyType" StudioEncryptionConfigurationProperty where
  type PropertyType "KeyType" StudioEncryptionConfigurationProperty = Value Prelude.Text
  set newValue StudioEncryptionConfigurationProperty {..}
    = StudioEncryptionConfigurationProperty {keyType = newValue, ..}