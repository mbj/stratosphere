module Stratosphere.Connect.InstanceStorageConfig (
        module Exports, InstanceStorageConfig(..), mkInstanceStorageConfig
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.KinesisFirehoseConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.KinesisStreamConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.KinesisVideoStreamConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.Connect.InstanceStorageConfig.S3ConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceStorageConfig
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html>
    InstanceStorageConfig {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-instancearn>
                           instanceArn :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-kinesisfirehoseconfig>
                           kinesisFirehoseConfig :: (Prelude.Maybe KinesisFirehoseConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-kinesisstreamconfig>
                           kinesisStreamConfig :: (Prelude.Maybe KinesisStreamConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-kinesisvideostreamconfig>
                           kinesisVideoStreamConfig :: (Prelude.Maybe KinesisVideoStreamConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-resourcetype>
                           resourceType :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-s3config>
                           s3Config :: (Prelude.Maybe S3ConfigProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-connect-instancestorageconfig.html#cfn-connect-instancestorageconfig-storagetype>
                           storageType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceStorageConfig ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> InstanceStorageConfig
mkInstanceStorageConfig instanceArn resourceType storageType
  = InstanceStorageConfig
      {haddock_workaround_ = (), instanceArn = instanceArn,
       resourceType = resourceType, storageType = storageType,
       kinesisFirehoseConfig = Prelude.Nothing,
       kinesisStreamConfig = Prelude.Nothing,
       kinesisVideoStreamConfig = Prelude.Nothing,
       s3Config = Prelude.Nothing}
instance ToResourceProperties InstanceStorageConfig where
  toResourceProperties InstanceStorageConfig {..}
    = ResourceProperties
        {awsType = "AWS::Connect::InstanceStorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn,
                            "ResourceType" JSON..= resourceType,
                            "StorageType" JSON..= storageType]
                           (Prelude.catMaybes
                              [(JSON..=) "KinesisFirehoseConfig"
                                 Prelude.<$> kinesisFirehoseConfig,
                               (JSON..=) "KinesisStreamConfig" Prelude.<$> kinesisStreamConfig,
                               (JSON..=) "KinesisVideoStreamConfig"
                                 Prelude.<$> kinesisVideoStreamConfig,
                               (JSON..=) "S3Config" Prelude.<$> s3Config]))}
instance JSON.ToJSON InstanceStorageConfig where
  toJSON InstanceStorageConfig {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn,
               "ResourceType" JSON..= resourceType,
               "StorageType" JSON..= storageType]
              (Prelude.catMaybes
                 [(JSON..=) "KinesisFirehoseConfig"
                    Prelude.<$> kinesisFirehoseConfig,
                  (JSON..=) "KinesisStreamConfig" Prelude.<$> kinesisStreamConfig,
                  (JSON..=) "KinesisVideoStreamConfig"
                    Prelude.<$> kinesisVideoStreamConfig,
                  (JSON..=) "S3Config" Prelude.<$> s3Config])))
instance Property "InstanceArn" InstanceStorageConfig where
  type PropertyType "InstanceArn" InstanceStorageConfig = Value Prelude.Text
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig {instanceArn = newValue, ..}
instance Property "KinesisFirehoseConfig" InstanceStorageConfig where
  type PropertyType "KinesisFirehoseConfig" InstanceStorageConfig = KinesisFirehoseConfigProperty
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig
        {kinesisFirehoseConfig = Prelude.pure newValue, ..}
instance Property "KinesisStreamConfig" InstanceStorageConfig where
  type PropertyType "KinesisStreamConfig" InstanceStorageConfig = KinesisStreamConfigProperty
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig
        {kinesisStreamConfig = Prelude.pure newValue, ..}
instance Property "KinesisVideoStreamConfig" InstanceStorageConfig where
  type PropertyType "KinesisVideoStreamConfig" InstanceStorageConfig = KinesisVideoStreamConfigProperty
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig
        {kinesisVideoStreamConfig = Prelude.pure newValue, ..}
instance Property "ResourceType" InstanceStorageConfig where
  type PropertyType "ResourceType" InstanceStorageConfig = Value Prelude.Text
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig {resourceType = newValue, ..}
instance Property "S3Config" InstanceStorageConfig where
  type PropertyType "S3Config" InstanceStorageConfig = S3ConfigProperty
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig {s3Config = Prelude.pure newValue, ..}
instance Property "StorageType" InstanceStorageConfig where
  type PropertyType "StorageType" InstanceStorageConfig = Value Prelude.Text
  set newValue InstanceStorageConfig {..}
    = InstanceStorageConfig {storageType = newValue, ..}