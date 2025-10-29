module Stratosphere.KinesisFirehose.DeliveryStream.KMSEncryptionConfigProperty (
        KMSEncryptionConfigProperty(..), mkKMSEncryptionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KMSEncryptionConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html>
    KMSEncryptionConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-kmsencryptionconfig.html#cfn-kinesisfirehose-deliverystream-kmsencryptionconfig-awskmskeyarn>
                                 aWSKMSKeyARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKMSEncryptionConfigProperty ::
  Value Prelude.Text -> KMSEncryptionConfigProperty
mkKMSEncryptionConfigProperty aWSKMSKeyARN
  = KMSEncryptionConfigProperty {aWSKMSKeyARN = aWSKMSKeyARN}
instance ToResourceProperties KMSEncryptionConfigProperty where
  toResourceProperties KMSEncryptionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.KMSEncryptionConfig",
         supportsTags = Prelude.False,
         properties = ["AWSKMSKeyARN" JSON..= aWSKMSKeyARN]}
instance JSON.ToJSON KMSEncryptionConfigProperty where
  toJSON KMSEncryptionConfigProperty {..}
    = JSON.object ["AWSKMSKeyARN" JSON..= aWSKMSKeyARN]
instance Property "AWSKMSKeyARN" KMSEncryptionConfigProperty where
  type PropertyType "AWSKMSKeyARN" KMSEncryptionConfigProperty = Value Prelude.Text
  set newValue KMSEncryptionConfigProperty {}
    = KMSEncryptionConfigProperty {aWSKMSKeyARN = newValue, ..}