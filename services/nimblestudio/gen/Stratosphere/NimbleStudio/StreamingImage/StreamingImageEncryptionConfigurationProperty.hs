module Stratosphere.NimbleStudio.StreamingImage.StreamingImageEncryptionConfigurationProperty (
        StreamingImageEncryptionConfigurationProperty(..),
        mkStreamingImageEncryptionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamingImageEncryptionConfigurationProperty
  = StreamingImageEncryptionConfigurationProperty {keyArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                   keyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamingImageEncryptionConfigurationProperty ::
  Value Prelude.Text -> StreamingImageEncryptionConfigurationProperty
mkStreamingImageEncryptionConfigurationProperty keyType
  = StreamingImageEncryptionConfigurationProperty
      {keyType = keyType, keyArn = Prelude.Nothing}
instance ToResourceProperties StreamingImageEncryptionConfigurationProperty where
  toResourceProperties
    StreamingImageEncryptionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StreamingImage.StreamingImageEncryptionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyType" JSON..= keyType]
                           (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn]))}
instance JSON.ToJSON StreamingImageEncryptionConfigurationProperty where
  toJSON StreamingImageEncryptionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyType" JSON..= keyType]
              (Prelude.catMaybes [(JSON..=) "KeyArn" Prelude.<$> keyArn])))
instance Property "KeyArn" StreamingImageEncryptionConfigurationProperty where
  type PropertyType "KeyArn" StreamingImageEncryptionConfigurationProperty = Value Prelude.Text
  set newValue StreamingImageEncryptionConfigurationProperty {..}
    = StreamingImageEncryptionConfigurationProperty
        {keyArn = Prelude.pure newValue, ..}
instance Property "KeyType" StreamingImageEncryptionConfigurationProperty where
  type PropertyType "KeyType" StreamingImageEncryptionConfigurationProperty = Value Prelude.Text
  set newValue StreamingImageEncryptionConfigurationProperty {..}
    = StreamingImageEncryptionConfigurationProperty
        {keyType = newValue, ..}