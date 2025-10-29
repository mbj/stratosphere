module Stratosphere.QLDB.Stream (
        module Exports, Stream(..), mkStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QLDB.Stream.KinesisConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stream
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html>
    Stream {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-exclusiveendtime>
            exclusiveEndTime :: (Prelude.Maybe (Value Prelude.Text)),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-inclusivestarttime>
            inclusiveStartTime :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-kinesisconfiguration>
            kinesisConfiguration :: KinesisConfigurationProperty,
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-ledgername>
            ledgerName :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-rolearn>
            roleArn :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-streamname>
            streamName :: (Value Prelude.Text),
            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-qldb-stream.html#cfn-qldb-stream-tags>
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStream ::
  Value Prelude.Text
  -> KinesisConfigurationProperty
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Stream
mkStream
  inclusiveStartTime
  kinesisConfiguration
  ledgerName
  roleArn
  streamName
  = Stream
      {inclusiveStartTime = inclusiveStartTime,
       kinesisConfiguration = kinesisConfiguration,
       ledgerName = ledgerName, roleArn = roleArn,
       streamName = streamName, exclusiveEndTime = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Stream where
  toResourceProperties Stream {..}
    = ResourceProperties
        {awsType = "AWS::QLDB::Stream", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InclusiveStartTime" JSON..= inclusiveStartTime,
                            "KinesisConfiguration" JSON..= kinesisConfiguration,
                            "LedgerName" JSON..= ledgerName, "RoleArn" JSON..= roleArn,
                            "StreamName" JSON..= streamName]
                           (Prelude.catMaybes
                              [(JSON..=) "ExclusiveEndTime" Prelude.<$> exclusiveEndTime,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Stream where
  toJSON Stream {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InclusiveStartTime" JSON..= inclusiveStartTime,
               "KinesisConfiguration" JSON..= kinesisConfiguration,
               "LedgerName" JSON..= ledgerName, "RoleArn" JSON..= roleArn,
               "StreamName" JSON..= streamName]
              (Prelude.catMaybes
                 [(JSON..=) "ExclusiveEndTime" Prelude.<$> exclusiveEndTime,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ExclusiveEndTime" Stream where
  type PropertyType "ExclusiveEndTime" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {exclusiveEndTime = Prelude.pure newValue, ..}
instance Property "InclusiveStartTime" Stream where
  type PropertyType "InclusiveStartTime" Stream = Value Prelude.Text
  set newValue Stream {..}
    = Stream {inclusiveStartTime = newValue, ..}
instance Property "KinesisConfiguration" Stream where
  type PropertyType "KinesisConfiguration" Stream = KinesisConfigurationProperty
  set newValue Stream {..}
    = Stream {kinesisConfiguration = newValue, ..}
instance Property "LedgerName" Stream where
  type PropertyType "LedgerName" Stream = Value Prelude.Text
  set newValue Stream {..} = Stream {ledgerName = newValue, ..}
instance Property "RoleArn" Stream where
  type PropertyType "RoleArn" Stream = Value Prelude.Text
  set newValue Stream {..} = Stream {roleArn = newValue, ..}
instance Property "StreamName" Stream where
  type PropertyType "StreamName" Stream = Value Prelude.Text
  set newValue Stream {..} = Stream {streamName = newValue, ..}
instance Property "Tags" Stream where
  type PropertyType "Tags" Stream = [Tag]
  set newValue Stream {..}
    = Stream {tags = Prelude.pure newValue, ..}