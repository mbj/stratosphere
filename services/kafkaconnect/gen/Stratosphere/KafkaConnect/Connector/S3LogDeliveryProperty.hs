module Stratosphere.KafkaConnect.Connector.S3LogDeliveryProperty (
        S3LogDeliveryProperty(..), mkS3LogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3LogDeliveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-s3logdelivery.html>
    S3LogDeliveryProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-s3logdelivery.html#cfn-kafkaconnect-connector-s3logdelivery-bucket>
                           bucket :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-s3logdelivery.html#cfn-kafkaconnect-connector-s3logdelivery-enabled>
                           enabled :: (Value Prelude.Bool),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-s3logdelivery.html#cfn-kafkaconnect-connector-s3logdelivery-prefix>
                           prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3LogDeliveryProperty ::
  Value Prelude.Bool -> S3LogDeliveryProperty
mkS3LogDeliveryProperty enabled
  = S3LogDeliveryProperty
      {haddock_workaround_ = (), enabled = enabled,
       bucket = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties S3LogDeliveryProperty where
  toResourceProperties S3LogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.S3LogDelivery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "Bucket" Prelude.<$> bucket,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3LogDeliveryProperty where
  toJSON S3LogDeliveryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "Bucket" Prelude.<$> bucket,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "Bucket" S3LogDeliveryProperty where
  type PropertyType "Bucket" S3LogDeliveryProperty = Value Prelude.Text
  set newValue S3LogDeliveryProperty {..}
    = S3LogDeliveryProperty {bucket = Prelude.pure newValue, ..}
instance Property "Enabled" S3LogDeliveryProperty where
  type PropertyType "Enabled" S3LogDeliveryProperty = Value Prelude.Bool
  set newValue S3LogDeliveryProperty {..}
    = S3LogDeliveryProperty {enabled = newValue, ..}
instance Property "Prefix" S3LogDeliveryProperty where
  type PropertyType "Prefix" S3LogDeliveryProperty = Value Prelude.Text
  set newValue S3LogDeliveryProperty {..}
    = S3LogDeliveryProperty {prefix = Prelude.pure newValue, ..}