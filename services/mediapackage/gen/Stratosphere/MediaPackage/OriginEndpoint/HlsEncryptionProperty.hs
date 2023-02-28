module Stratosphere.MediaPackage.OriginEndpoint.HlsEncryptionProperty (
        module Exports, HlsEncryptionProperty(..), mkHlsEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsEncryptionProperty
  = HlsEncryptionProperty {constantInitializationVector :: (Prelude.Maybe (Value Prelude.Text)),
                           encryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                           keyRotationIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                           repeatExtXKey :: (Prelude.Maybe (Value Prelude.Bool)),
                           spekeKeyProvider :: SpekeKeyProviderProperty}
mkHlsEncryptionProperty ::
  SpekeKeyProviderProperty -> HlsEncryptionProperty
mkHlsEncryptionProperty spekeKeyProvider
  = HlsEncryptionProperty
      {spekeKeyProvider = spekeKeyProvider,
       constantInitializationVector = Prelude.Nothing,
       encryptionMethod = Prelude.Nothing,
       keyRotationIntervalSeconds = Prelude.Nothing,
       repeatExtXKey = Prelude.Nothing}
instance ToResourceProperties HlsEncryptionProperty where
  toResourceProperties HlsEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.HlsEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SpekeKeyProvider" JSON..= spekeKeyProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "ConstantInitializationVector"
                                 Prelude.<$> constantInitializationVector,
                               (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod,
                               (JSON..=) "KeyRotationIntervalSeconds"
                                 Prelude.<$> keyRotationIntervalSeconds,
                               (JSON..=) "RepeatExtXKey" Prelude.<$> repeatExtXKey]))}
instance JSON.ToJSON HlsEncryptionProperty where
  toJSON HlsEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SpekeKeyProvider" JSON..= spekeKeyProvider]
              (Prelude.catMaybes
                 [(JSON..=) "ConstantInitializationVector"
                    Prelude.<$> constantInitializationVector,
                  (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod,
                  (JSON..=) "KeyRotationIntervalSeconds"
                    Prelude.<$> keyRotationIntervalSeconds,
                  (JSON..=) "RepeatExtXKey" Prelude.<$> repeatExtXKey])))
instance Property "ConstantInitializationVector" HlsEncryptionProperty where
  type PropertyType "ConstantInitializationVector" HlsEncryptionProperty = Value Prelude.Text
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty
        {constantInitializationVector = Prelude.pure newValue, ..}
instance Property "EncryptionMethod" HlsEncryptionProperty where
  type PropertyType "EncryptionMethod" HlsEncryptionProperty = Value Prelude.Text
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty
        {encryptionMethod = Prelude.pure newValue, ..}
instance Property "KeyRotationIntervalSeconds" HlsEncryptionProperty where
  type PropertyType "KeyRotationIntervalSeconds" HlsEncryptionProperty = Value Prelude.Integer
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty
        {keyRotationIntervalSeconds = Prelude.pure newValue, ..}
instance Property "RepeatExtXKey" HlsEncryptionProperty where
  type PropertyType "RepeatExtXKey" HlsEncryptionProperty = Value Prelude.Bool
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty {repeatExtXKey = Prelude.pure newValue, ..}
instance Property "SpekeKeyProvider" HlsEncryptionProperty where
  type PropertyType "SpekeKeyProvider" HlsEncryptionProperty = SpekeKeyProviderProperty
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty {spekeKeyProvider = newValue, ..}