module Stratosphere.KinesisFirehose.DeliveryStream.DeliveryStreamEncryptionConfigurationInputProperty (
        DeliveryStreamEncryptionConfigurationInputProperty(..),
        mkDeliveryStreamEncryptionConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliveryStreamEncryptionConfigurationInputProperty
  = DeliveryStreamEncryptionConfigurationInputProperty {keyARN :: (Prelude.Maybe (Value Prelude.Text)),
                                                        keyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryStreamEncryptionConfigurationInputProperty ::
  Value Prelude.Text
  -> DeliveryStreamEncryptionConfigurationInputProperty
mkDeliveryStreamEncryptionConfigurationInputProperty keyType
  = DeliveryStreamEncryptionConfigurationInputProperty
      {keyType = keyType, keyARN = Prelude.Nothing}
instance ToResourceProperties DeliveryStreamEncryptionConfigurationInputProperty where
  toResourceProperties
    DeliveryStreamEncryptionConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.DeliveryStreamEncryptionConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyType" JSON..= keyType]
                           (Prelude.catMaybes [(JSON..=) "KeyARN" Prelude.<$> keyARN]))}
instance JSON.ToJSON DeliveryStreamEncryptionConfigurationInputProperty where
  toJSON DeliveryStreamEncryptionConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyType" JSON..= keyType]
              (Prelude.catMaybes [(JSON..=) "KeyARN" Prelude.<$> keyARN])))
instance Property "KeyARN" DeliveryStreamEncryptionConfigurationInputProperty where
  type PropertyType "KeyARN" DeliveryStreamEncryptionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    DeliveryStreamEncryptionConfigurationInputProperty {..}
    = DeliveryStreamEncryptionConfigurationInputProperty
        {keyARN = Prelude.pure newValue, ..}
instance Property "KeyType" DeliveryStreamEncryptionConfigurationInputProperty where
  type PropertyType "KeyType" DeliveryStreamEncryptionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    DeliveryStreamEncryptionConfigurationInputProperty {..}
    = DeliveryStreamEncryptionConfigurationInputProperty
        {keyType = newValue, ..}