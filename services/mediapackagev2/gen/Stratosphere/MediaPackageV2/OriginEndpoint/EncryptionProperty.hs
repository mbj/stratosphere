module Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionProperty (
        module Exports, EncryptionProperty(..), mkEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionMethodProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryption.html>
    EncryptionProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryption.html#cfn-mediapackagev2-originendpoint-encryption-constantinitializationvector>
                        constantInitializationVector :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryption.html#cfn-mediapackagev2-originendpoint-encryption-encryptionmethod>
                        encryptionMethod :: EncryptionMethodProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryption.html#cfn-mediapackagev2-originendpoint-encryption-keyrotationintervalseconds>
                        keyRotationIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryption.html#cfn-mediapackagev2-originendpoint-encryption-spekekeyprovider>
                        spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionProperty ::
  EncryptionMethodProperty
  -> SpekeKeyProviderProperty -> EncryptionProperty
mkEncryptionProperty encryptionMethod spekeKeyProvider
  = EncryptionProperty
      {haddock_workaround_ = (), encryptionMethod = encryptionMethod,
       spekeKeyProvider = spekeKeyProvider,
       constantInitializationVector = Prelude.Nothing,
       keyRotationIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties EncryptionProperty where
  toResourceProperties EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.Encryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EncryptionMethod" JSON..= encryptionMethod,
                            "SpekeKeyProvider" JSON..= spekeKeyProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "ConstantInitializationVector"
                                 Prelude.<$> constantInitializationVector,
                               (JSON..=) "KeyRotationIntervalSeconds"
                                 Prelude.<$> keyRotationIntervalSeconds]))}
instance JSON.ToJSON EncryptionProperty where
  toJSON EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EncryptionMethod" JSON..= encryptionMethod,
               "SpekeKeyProvider" JSON..= spekeKeyProvider]
              (Prelude.catMaybes
                 [(JSON..=) "ConstantInitializationVector"
                    Prelude.<$> constantInitializationVector,
                  (JSON..=) "KeyRotationIntervalSeconds"
                    Prelude.<$> keyRotationIntervalSeconds])))
instance Property "ConstantInitializationVector" EncryptionProperty where
  type PropertyType "ConstantInitializationVector" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty
        {constantInitializationVector = Prelude.pure newValue, ..}
instance Property "EncryptionMethod" EncryptionProperty where
  type PropertyType "EncryptionMethod" EncryptionProperty = EncryptionMethodProperty
  set newValue EncryptionProperty {..}
    = EncryptionProperty {encryptionMethod = newValue, ..}
instance Property "KeyRotationIntervalSeconds" EncryptionProperty where
  type PropertyType "KeyRotationIntervalSeconds" EncryptionProperty = Value Prelude.Integer
  set newValue EncryptionProperty {..}
    = EncryptionProperty
        {keyRotationIntervalSeconds = Prelude.pure newValue, ..}
instance Property "SpekeKeyProvider" EncryptionProperty where
  type PropertyType "SpekeKeyProvider" EncryptionProperty = SpekeKeyProviderProperty
  set newValue EncryptionProperty {..}
    = EncryptionProperty {spekeKeyProvider = newValue, ..}