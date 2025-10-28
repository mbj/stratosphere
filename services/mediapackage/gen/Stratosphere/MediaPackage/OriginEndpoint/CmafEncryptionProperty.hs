module Stratosphere.MediaPackage.OriginEndpoint.CmafEncryptionProperty (
        module Exports, CmafEncryptionProperty(..),
        mkCmafEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CmafEncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafencryption.html>
    CmafEncryptionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafencryption.html#cfn-mediapackage-originendpoint-cmafencryption-constantinitializationvector>
                            constantInitializationVector :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafencryption.html#cfn-mediapackage-originendpoint-cmafencryption-encryptionmethod>
                            encryptionMethod :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafencryption.html#cfn-mediapackage-originendpoint-cmafencryption-keyrotationintervalseconds>
                            keyRotationIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-originendpoint-cmafencryption.html#cfn-mediapackage-originendpoint-cmafencryption-spekekeyprovider>
                            spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCmafEncryptionProperty ::
  SpekeKeyProviderProperty -> CmafEncryptionProperty
mkCmafEncryptionProperty spekeKeyProvider
  = CmafEncryptionProperty
      {haddock_workaround_ = (), spekeKeyProvider = spekeKeyProvider,
       constantInitializationVector = Prelude.Nothing,
       encryptionMethod = Prelude.Nothing,
       keyRotationIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties CmafEncryptionProperty where
  toResourceProperties CmafEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.CmafEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SpekeKeyProvider" JSON..= spekeKeyProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "ConstantInitializationVector"
                                 Prelude.<$> constantInitializationVector,
                               (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod,
                               (JSON..=) "KeyRotationIntervalSeconds"
                                 Prelude.<$> keyRotationIntervalSeconds]))}
instance JSON.ToJSON CmafEncryptionProperty where
  toJSON CmafEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SpekeKeyProvider" JSON..= spekeKeyProvider]
              (Prelude.catMaybes
                 [(JSON..=) "ConstantInitializationVector"
                    Prelude.<$> constantInitializationVector,
                  (JSON..=) "EncryptionMethod" Prelude.<$> encryptionMethod,
                  (JSON..=) "KeyRotationIntervalSeconds"
                    Prelude.<$> keyRotationIntervalSeconds])))
instance Property "ConstantInitializationVector" CmafEncryptionProperty where
  type PropertyType "ConstantInitializationVector" CmafEncryptionProperty = Value Prelude.Text
  set newValue CmafEncryptionProperty {..}
    = CmafEncryptionProperty
        {constantInitializationVector = Prelude.pure newValue, ..}
instance Property "EncryptionMethod" CmafEncryptionProperty where
  type PropertyType "EncryptionMethod" CmafEncryptionProperty = Value Prelude.Text
  set newValue CmafEncryptionProperty {..}
    = CmafEncryptionProperty
        {encryptionMethod = Prelude.pure newValue, ..}
instance Property "KeyRotationIntervalSeconds" CmafEncryptionProperty where
  type PropertyType "KeyRotationIntervalSeconds" CmafEncryptionProperty = Value Prelude.Integer
  set newValue CmafEncryptionProperty {..}
    = CmafEncryptionProperty
        {keyRotationIntervalSeconds = Prelude.pure newValue, ..}
instance Property "SpekeKeyProvider" CmafEncryptionProperty where
  type PropertyType "SpekeKeyProvider" CmafEncryptionProperty = SpekeKeyProviderProperty
  set newValue CmafEncryptionProperty {..}
    = CmafEncryptionProperty {spekeKeyProvider = newValue, ..}