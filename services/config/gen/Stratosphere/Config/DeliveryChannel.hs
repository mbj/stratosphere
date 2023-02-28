module Stratosphere.Config.DeliveryChannel (
        module Exports, DeliveryChannel(..), mkDeliveryChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.DeliveryChannel.ConfigSnapshotDeliveryPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliveryChannel
  = DeliveryChannel {configSnapshotDeliveryProperties :: (Prelude.Maybe ConfigSnapshotDeliveryPropertiesProperty),
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     s3BucketName :: (Value Prelude.Text),
                     s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                     s3KmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                     snsTopicARN :: (Prelude.Maybe (Value Prelude.Text))}
mkDeliveryChannel :: Value Prelude.Text -> DeliveryChannel
mkDeliveryChannel s3BucketName
  = DeliveryChannel
      {s3BucketName = s3BucketName,
       configSnapshotDeliveryProperties = Prelude.Nothing,
       name = Prelude.Nothing, s3KeyPrefix = Prelude.Nothing,
       s3KmsKeyArn = Prelude.Nothing, snsTopicARN = Prelude.Nothing}
instance ToResourceProperties DeliveryChannel where
  toResourceProperties DeliveryChannel {..}
    = ResourceProperties
        {awsType = "AWS::Config::DeliveryChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3BucketName" JSON..= s3BucketName]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfigSnapshotDeliveryProperties"
                                 Prelude.<$> configSnapshotDeliveryProperties,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix,
                               (JSON..=) "S3KmsKeyArn" Prelude.<$> s3KmsKeyArn,
                               (JSON..=) "SnsTopicARN" Prelude.<$> snsTopicARN]))}
instance JSON.ToJSON DeliveryChannel where
  toJSON DeliveryChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3BucketName" JSON..= s3BucketName]
              (Prelude.catMaybes
                 [(JSON..=) "ConfigSnapshotDeliveryProperties"
                    Prelude.<$> configSnapshotDeliveryProperties,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix,
                  (JSON..=) "S3KmsKeyArn" Prelude.<$> s3KmsKeyArn,
                  (JSON..=) "SnsTopicARN" Prelude.<$> snsTopicARN])))
instance Property "ConfigSnapshotDeliveryProperties" DeliveryChannel where
  type PropertyType "ConfigSnapshotDeliveryProperties" DeliveryChannel = ConfigSnapshotDeliveryPropertiesProperty
  set newValue DeliveryChannel {..}
    = DeliveryChannel
        {configSnapshotDeliveryProperties = Prelude.pure newValue, ..}
instance Property "Name" DeliveryChannel where
  type PropertyType "Name" DeliveryChannel = Value Prelude.Text
  set newValue DeliveryChannel {..}
    = DeliveryChannel {name = Prelude.pure newValue, ..}
instance Property "S3BucketName" DeliveryChannel where
  type PropertyType "S3BucketName" DeliveryChannel = Value Prelude.Text
  set newValue DeliveryChannel {..}
    = DeliveryChannel {s3BucketName = newValue, ..}
instance Property "S3KeyPrefix" DeliveryChannel where
  type PropertyType "S3KeyPrefix" DeliveryChannel = Value Prelude.Text
  set newValue DeliveryChannel {..}
    = DeliveryChannel {s3KeyPrefix = Prelude.pure newValue, ..}
instance Property "S3KmsKeyArn" DeliveryChannel where
  type PropertyType "S3KmsKeyArn" DeliveryChannel = Value Prelude.Text
  set newValue DeliveryChannel {..}
    = DeliveryChannel {s3KmsKeyArn = Prelude.pure newValue, ..}
instance Property "SnsTopicARN" DeliveryChannel where
  type PropertyType "SnsTopicARN" DeliveryChannel = Value Prelude.Text
  set newValue DeliveryChannel {..}
    = DeliveryChannel {snsTopicARN = Prelude.pure newValue, ..}