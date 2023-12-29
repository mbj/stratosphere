module Stratosphere.Rekognition.StreamProcessor (
        module Exports, StreamProcessor(..), mkStreamProcessor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.BoundingBoxProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.ConnectedHomeSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.DataSharingPreferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.FaceSearchSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.KinesisDataStreamProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.KinesisVideoStreamProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.NotificationChannelProperty as Exports
import {-# SOURCE #-} Stratosphere.Rekognition.StreamProcessor.S3DestinationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StreamProcessor
  = StreamProcessor {boundingBoxRegionsOfInterest :: (Prelude.Maybe [BoundingBoxProperty]),
                     connectedHomeSettings :: (Prelude.Maybe ConnectedHomeSettingsProperty),
                     dataSharingPreference :: (Prelude.Maybe DataSharingPreferenceProperty),
                     faceSearchSettings :: (Prelude.Maybe FaceSearchSettingsProperty),
                     kinesisDataStream :: (Prelude.Maybe KinesisDataStreamProperty),
                     kinesisVideoStream :: KinesisVideoStreamProperty,
                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     notificationChannel :: (Prelude.Maybe NotificationChannelProperty),
                     polygonRegionsOfInterest :: (Prelude.Maybe JSON.Object),
                     roleArn :: (Value Prelude.Text),
                     s3Destination :: (Prelude.Maybe S3DestinationProperty),
                     tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamProcessor ::
  KinesisVideoStreamProperty -> Value Prelude.Text -> StreamProcessor
mkStreamProcessor kinesisVideoStream roleArn
  = StreamProcessor
      {kinesisVideoStream = kinesisVideoStream, roleArn = roleArn,
       boundingBoxRegionsOfInterest = Prelude.Nothing,
       connectedHomeSettings = Prelude.Nothing,
       dataSharingPreference = Prelude.Nothing,
       faceSearchSettings = Prelude.Nothing,
       kinesisDataStream = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       name = Prelude.Nothing, notificationChannel = Prelude.Nothing,
       polygonRegionsOfInterest = Prelude.Nothing,
       s3Destination = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties StreamProcessor where
  toResourceProperties StreamProcessor {..}
    = ResourceProperties
        {awsType = "AWS::Rekognition::StreamProcessor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KinesisVideoStream" JSON..= kinesisVideoStream,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BoundingBoxRegionsOfInterest"
                                 Prelude.<$> boundingBoxRegionsOfInterest,
                               (JSON..=) "ConnectedHomeSettings"
                                 Prelude.<$> connectedHomeSettings,
                               (JSON..=) "DataSharingPreference"
                                 Prelude.<$> dataSharingPreference,
                               (JSON..=) "FaceSearchSettings" Prelude.<$> faceSearchSettings,
                               (JSON..=) "KinesisDataStream" Prelude.<$> kinesisDataStream,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NotificationChannel" Prelude.<$> notificationChannel,
                               (JSON..=) "PolygonRegionsOfInterest"
                                 Prelude.<$> polygonRegionsOfInterest,
                               (JSON..=) "S3Destination" Prelude.<$> s3Destination,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StreamProcessor where
  toJSON StreamProcessor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KinesisVideoStream" JSON..= kinesisVideoStream,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BoundingBoxRegionsOfInterest"
                    Prelude.<$> boundingBoxRegionsOfInterest,
                  (JSON..=) "ConnectedHomeSettings"
                    Prelude.<$> connectedHomeSettings,
                  (JSON..=) "DataSharingPreference"
                    Prelude.<$> dataSharingPreference,
                  (JSON..=) "FaceSearchSettings" Prelude.<$> faceSearchSettings,
                  (JSON..=) "KinesisDataStream" Prelude.<$> kinesisDataStream,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NotificationChannel" Prelude.<$> notificationChannel,
                  (JSON..=) "PolygonRegionsOfInterest"
                    Prelude.<$> polygonRegionsOfInterest,
                  (JSON..=) "S3Destination" Prelude.<$> s3Destination,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BoundingBoxRegionsOfInterest" StreamProcessor where
  type PropertyType "BoundingBoxRegionsOfInterest" StreamProcessor = [BoundingBoxProperty]
  set newValue StreamProcessor {..}
    = StreamProcessor
        {boundingBoxRegionsOfInterest = Prelude.pure newValue, ..}
instance Property "ConnectedHomeSettings" StreamProcessor where
  type PropertyType "ConnectedHomeSettings" StreamProcessor = ConnectedHomeSettingsProperty
  set newValue StreamProcessor {..}
    = StreamProcessor
        {connectedHomeSettings = Prelude.pure newValue, ..}
instance Property "DataSharingPreference" StreamProcessor where
  type PropertyType "DataSharingPreference" StreamProcessor = DataSharingPreferenceProperty
  set newValue StreamProcessor {..}
    = StreamProcessor
        {dataSharingPreference = Prelude.pure newValue, ..}
instance Property "FaceSearchSettings" StreamProcessor where
  type PropertyType "FaceSearchSettings" StreamProcessor = FaceSearchSettingsProperty
  set newValue StreamProcessor {..}
    = StreamProcessor {faceSearchSettings = Prelude.pure newValue, ..}
instance Property "KinesisDataStream" StreamProcessor where
  type PropertyType "KinesisDataStream" StreamProcessor = KinesisDataStreamProperty
  set newValue StreamProcessor {..}
    = StreamProcessor {kinesisDataStream = Prelude.pure newValue, ..}
instance Property "KinesisVideoStream" StreamProcessor where
  type PropertyType "KinesisVideoStream" StreamProcessor = KinesisVideoStreamProperty
  set newValue StreamProcessor {..}
    = StreamProcessor {kinesisVideoStream = newValue, ..}
instance Property "KmsKeyId" StreamProcessor where
  type PropertyType "KmsKeyId" StreamProcessor = Value Prelude.Text
  set newValue StreamProcessor {..}
    = StreamProcessor {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" StreamProcessor where
  type PropertyType "Name" StreamProcessor = Value Prelude.Text
  set newValue StreamProcessor {..}
    = StreamProcessor {name = Prelude.pure newValue, ..}
instance Property "NotificationChannel" StreamProcessor where
  type PropertyType "NotificationChannel" StreamProcessor = NotificationChannelProperty
  set newValue StreamProcessor {..}
    = StreamProcessor {notificationChannel = Prelude.pure newValue, ..}
instance Property "PolygonRegionsOfInterest" StreamProcessor where
  type PropertyType "PolygonRegionsOfInterest" StreamProcessor = JSON.Object
  set newValue StreamProcessor {..}
    = StreamProcessor
        {polygonRegionsOfInterest = Prelude.pure newValue, ..}
instance Property "RoleArn" StreamProcessor where
  type PropertyType "RoleArn" StreamProcessor = Value Prelude.Text
  set newValue StreamProcessor {..}
    = StreamProcessor {roleArn = newValue, ..}
instance Property "S3Destination" StreamProcessor where
  type PropertyType "S3Destination" StreamProcessor = S3DestinationProperty
  set newValue StreamProcessor {..}
    = StreamProcessor {s3Destination = Prelude.pure newValue, ..}
instance Property "Tags" StreamProcessor where
  type PropertyType "Tags" StreamProcessor = [Tag]
  set newValue StreamProcessor {..}
    = StreamProcessor {tags = Prelude.pure newValue, ..}