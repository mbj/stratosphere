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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html>
    StreamProcessor {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-boundingboxregionsofinterest>
                     boundingBoxRegionsOfInterest :: (Prelude.Maybe [BoundingBoxProperty]),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-connectedhomesettings>
                     connectedHomeSettings :: (Prelude.Maybe ConnectedHomeSettingsProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-datasharingpreference>
                     dataSharingPreference :: (Prelude.Maybe DataSharingPreferenceProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-facesearchsettings>
                     faceSearchSettings :: (Prelude.Maybe FaceSearchSettingsProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-kinesisdatastream>
                     kinesisDataStream :: (Prelude.Maybe KinesisDataStreamProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-kinesisvideostream>
                     kinesisVideoStream :: KinesisVideoStreamProperty,
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-kmskeyid>
                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-name>
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-notificationchannel>
                     notificationChannel :: (Prelude.Maybe NotificationChannelProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-polygonregionsofinterest>
                     polygonRegionsOfInterest :: (Prelude.Maybe JSON.Object),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-rolearn>
                     roleArn :: (Value Prelude.Text),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-s3destination>
                     s3Destination :: (Prelude.Maybe S3DestinationProperty),
                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rekognition-streamprocessor.html#cfn-rekognition-streamprocessor-tags>
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