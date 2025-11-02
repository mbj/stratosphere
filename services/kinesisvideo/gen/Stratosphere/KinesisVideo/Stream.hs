module Stratosphere.KinesisVideo.Stream (
        Stream(..), mkStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stream
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html>
    Stream {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-dataretentioninhours>
            dataRetentionInHours :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-devicename>
            deviceName :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-kmskeyid>
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-mediatype>
            mediaType :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisvideo-stream.html#cfn-kinesisvideo-stream-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStream :: Stream
mkStream
  = Stream
      {haddock_workaround_ = (), dataRetentionInHours = Prelude.Nothing,
       deviceName = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       mediaType = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Stream where
  toResourceProperties Stream {..}
    = ResourceProperties
        {awsType = "AWS::KinesisVideo::Stream",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataRetentionInHours" Prelude.<$> dataRetentionInHours,
                            (JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "MediaType" Prelude.<$> mediaType,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Stream where
  toJSON Stream {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataRetentionInHours" Prelude.<$> dataRetentionInHours,
               (JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "MediaType" Prelude.<$> mediaType,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DataRetentionInHours" Stream where
  type PropertyType "DataRetentionInHours" Stream = Value Prelude.Integer
  set newValue Stream {..}
    = Stream {dataRetentionInHours = Prelude.pure newValue, ..}
instance Property "DeviceName" Stream where
  type PropertyType "DeviceName" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {deviceName = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Stream where
  type PropertyType "KmsKeyId" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MediaType" Stream where
  type PropertyType "MediaType" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {mediaType = Prelude.pure newValue, ..}
instance Property "Name" Stream where
  type PropertyType "Name" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {name = Prelude.pure newValue, ..}
instance Property "Tags" Stream where
  type PropertyType "Tags" Stream = [Tag]
  set newValue Stream {..}
    = Stream {tags = Prelude.pure newValue, ..}