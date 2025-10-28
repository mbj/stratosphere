module Stratosphere.MediaConnect.Flow.EncryptionProperty (
        EncryptionProperty(..), mkEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html>
    EncryptionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-algorithm>
                        algorithm :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-constantinitializationvector>
                        constantInitializationVector :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-deviceid>
                        deviceId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-keytype>
                        keyType :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-region>
                        region :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-resourceid>
                        resourceId :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-rolearn>
                        roleArn :: (Value Prelude.Text),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-secretarn>
                        secretArn :: (Prelude.Maybe (Value Prelude.Text)),
                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-encryption.html#cfn-mediaconnect-flow-encryption-url>
                        url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionProperty :: Value Prelude.Text -> EncryptionProperty
mkEncryptionProperty roleArn
  = EncryptionProperty
      {roleArn = roleArn, algorithm = Prelude.Nothing,
       constantInitializationVector = Prelude.Nothing,
       deviceId = Prelude.Nothing, keyType = Prelude.Nothing,
       region = Prelude.Nothing, resourceId = Prelude.Nothing,
       secretArn = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties EncryptionProperty where
  toResourceProperties EncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.Encryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                               (JSON..=) "ConstantInitializationVector"
                                 Prelude.<$> constantInitializationVector,
                               (JSON..=) "DeviceId" Prelude.<$> deviceId,
                               (JSON..=) "KeyType" Prelude.<$> keyType,
                               (JSON..=) "Region" Prelude.<$> region,
                               (JSON..=) "ResourceId" Prelude.<$> resourceId,
                               (JSON..=) "SecretArn" Prelude.<$> secretArn,
                               (JSON..=) "Url" Prelude.<$> url]))}
instance JSON.ToJSON EncryptionProperty where
  toJSON EncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Algorithm" Prelude.<$> algorithm,
                  (JSON..=) "ConstantInitializationVector"
                    Prelude.<$> constantInitializationVector,
                  (JSON..=) "DeviceId" Prelude.<$> deviceId,
                  (JSON..=) "KeyType" Prelude.<$> keyType,
                  (JSON..=) "Region" Prelude.<$> region,
                  (JSON..=) "ResourceId" Prelude.<$> resourceId,
                  (JSON..=) "SecretArn" Prelude.<$> secretArn,
                  (JSON..=) "Url" Prelude.<$> url])))
instance Property "Algorithm" EncryptionProperty where
  type PropertyType "Algorithm" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {algorithm = Prelude.pure newValue, ..}
instance Property "ConstantInitializationVector" EncryptionProperty where
  type PropertyType "ConstantInitializationVector" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty
        {constantInitializationVector = Prelude.pure newValue, ..}
instance Property "DeviceId" EncryptionProperty where
  type PropertyType "DeviceId" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {deviceId = Prelude.pure newValue, ..}
instance Property "KeyType" EncryptionProperty where
  type PropertyType "KeyType" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {keyType = Prelude.pure newValue, ..}
instance Property "Region" EncryptionProperty where
  type PropertyType "Region" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {region = Prelude.pure newValue, ..}
instance Property "ResourceId" EncryptionProperty where
  type PropertyType "ResourceId" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {resourceId = Prelude.pure newValue, ..}
instance Property "RoleArn" EncryptionProperty where
  type PropertyType "RoleArn" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {roleArn = newValue, ..}
instance Property "SecretArn" EncryptionProperty where
  type PropertyType "SecretArn" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {secretArn = Prelude.pure newValue, ..}
instance Property "Url" EncryptionProperty where
  type PropertyType "Url" EncryptionProperty = Value Prelude.Text
  set newValue EncryptionProperty {..}
    = EncryptionProperty {url = Prelude.pure newValue, ..}