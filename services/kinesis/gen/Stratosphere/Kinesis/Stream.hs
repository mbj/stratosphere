module Stratosphere.Kinesis.Stream (
        module Exports, Stream(..), mkStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kinesis.Stream.StreamEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.Kinesis.Stream.StreamModeDetailsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stream
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html>
    Stream {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-desiredshardlevelmetrics>
            desiredShardLevelMetrics :: (Prelude.Maybe (ValueList Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-name>
            name :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-retentionperiodhours>
            retentionPeriodHours :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-shardcount>
            shardCount :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-streamencryption>
            streamEncryption :: (Prelude.Maybe StreamEncryptionProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-streammodedetails>
            streamModeDetails :: (Prelude.Maybe StreamModeDetailsProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-stream.html#cfn-kinesis-stream-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStream :: Stream
mkStream
  = Stream
      {haddock_workaround_ = (),
       desiredShardLevelMetrics = Prelude.Nothing, name = Prelude.Nothing,
       retentionPeriodHours = Prelude.Nothing,
       shardCount = Prelude.Nothing, streamEncryption = Prelude.Nothing,
       streamModeDetails = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Stream where
  toResourceProperties Stream {..}
    = ResourceProperties
        {awsType = "AWS::Kinesis::Stream", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DesiredShardLevelMetrics"
                              Prelude.<$> desiredShardLevelMetrics,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RetentionPeriodHours" Prelude.<$> retentionPeriodHours,
                            (JSON..=) "ShardCount" Prelude.<$> shardCount,
                            (JSON..=) "StreamEncryption" Prelude.<$> streamEncryption,
                            (JSON..=) "StreamModeDetails" Prelude.<$> streamModeDetails,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Stream where
  toJSON Stream {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DesiredShardLevelMetrics"
                 Prelude.<$> desiredShardLevelMetrics,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RetentionPeriodHours" Prelude.<$> retentionPeriodHours,
               (JSON..=) "ShardCount" Prelude.<$> shardCount,
               (JSON..=) "StreamEncryption" Prelude.<$> streamEncryption,
               (JSON..=) "StreamModeDetails" Prelude.<$> streamModeDetails,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DesiredShardLevelMetrics" Stream where
  type PropertyType "DesiredShardLevelMetrics" Stream = ValueList Prelude.Text
  set newValue Stream {..}
    = Stream {desiredShardLevelMetrics = Prelude.pure newValue, ..}
instance Property "Name" Stream where
  type PropertyType "Name" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {name = Prelude.pure newValue, ..}
instance Property "RetentionPeriodHours" Stream where
  type PropertyType "RetentionPeriodHours" Stream = Value Prelude.Integer
  set newValue Stream {..}
    = Stream {retentionPeriodHours = Prelude.pure newValue, ..}
instance Property "ShardCount" Stream where
  type PropertyType "ShardCount" Stream = Value Prelude.Integer
  set newValue Stream {..}
    = Stream {shardCount = Prelude.pure newValue, ..}
instance Property "StreamEncryption" Stream where
  type PropertyType "StreamEncryption" Stream = StreamEncryptionProperty
  set newValue Stream {..}
    = Stream {streamEncryption = Prelude.pure newValue, ..}
instance Property "StreamModeDetails" Stream where
  type PropertyType "StreamModeDetails" Stream = StreamModeDetailsProperty
  set newValue Stream {..}
    = Stream {streamModeDetails = Prelude.pure newValue, ..}
instance Property "Tags" Stream where
  type PropertyType "Tags" Stream = [Tag]
  set newValue Stream {..}
    = Stream {tags = Prelude.pure newValue, ..}