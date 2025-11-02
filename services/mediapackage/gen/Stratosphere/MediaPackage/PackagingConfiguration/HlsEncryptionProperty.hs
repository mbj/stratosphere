module Stratosphere.MediaPackage.PackagingConfiguration.HlsEncryptionProperty (
        module Exports, HlsEncryptionProperty(..), mkHlsEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-hlsencryption.html>
    HlsEncryptionProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-hlsencryption.html#cfn-mediapackage-packagingconfiguration-hlsencryption-constantinitializationvector>
                           constantInitializationVector :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-hlsencryption.html#cfn-mediapackage-packagingconfiguration-hlsencryption-encryptionmethod>
                           encryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-hlsencryption.html#cfn-mediapackage-packagingconfiguration-hlsencryption-spekekeyprovider>
                           spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsEncryptionProperty ::
  SpekeKeyProviderProperty -> HlsEncryptionProperty
mkHlsEncryptionProperty spekeKeyProvider
  = HlsEncryptionProperty
      {haddock_workaround_ = (), spekeKeyProvider = spekeKeyProvider,
       constantInitializationVector = Prelude.Nothing,
       encryptionMethod = Prelude.Nothing}
instance ToResourceProperties HlsEncryptionProperty where
  toResourceProperties HlsEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.HlsEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SpekeKeyProvider" JSON..= spekeKeyProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "ConstantInitializationVector"
                                 Prelude.<$> constantInitializationVector,
                               (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod]))}
instance JSON.ToJSON HlsEncryptionProperty where
  toJSON HlsEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SpekeKeyProvider" JSON..= spekeKeyProvider]
              (Prelude.catMaybes
                 [(JSON..=) "ConstantInitializationVector"
                    Prelude.<$> constantInitializationVector,
                  (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod])))
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
instance Property "SpekeKeyProvider" HlsEncryptionProperty where
  type PropertyType "SpekeKeyProvider" HlsEncryptionProperty = SpekeKeyProviderProperty
  set newValue HlsEncryptionProperty {..}
    = HlsEncryptionProperty {spekeKeyProvider = newValue, ..}