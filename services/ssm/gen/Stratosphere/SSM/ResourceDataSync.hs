module Stratosphere.SSM.ResourceDataSync (
        module Exports, ResourceDataSync(..), mkResourceDataSync
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.ResourceDataSync.S3DestinationProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.ResourceDataSync.SyncSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceDataSync
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html>
    ResourceDataSync {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketname>
                      bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketprefix>
                      bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-bucketregion>
                      bucketRegion :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-kmskeyarn>
                      kMSKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-s3destination>
                      s3Destination :: (Prelude.Maybe S3DestinationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncformat>
                      syncFormat :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncname>
                      syncName :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-syncsource>
                      syncSource :: (Prelude.Maybe SyncSourceProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ssm-resourcedatasync.html#cfn-ssm-resourcedatasync-synctype>
                      syncType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceDataSync :: Value Prelude.Text -> ResourceDataSync
mkResourceDataSync syncName
  = ResourceDataSync
      {haddock_workaround_ = (), syncName = syncName,
       bucketName = Prelude.Nothing, bucketPrefix = Prelude.Nothing,
       bucketRegion = Prelude.Nothing, kMSKeyArn = Prelude.Nothing,
       s3Destination = Prelude.Nothing, syncFormat = Prelude.Nothing,
       syncSource = Prelude.Nothing, syncType = Prelude.Nothing}
instance ToResourceProperties ResourceDataSync where
  toResourceProperties ResourceDataSync {..}
    = ResourceProperties
        {awsType = "AWS::SSM::ResourceDataSync",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SyncName" JSON..= syncName]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketName" Prelude.<$> bucketName,
                               (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "BucketRegion" Prelude.<$> bucketRegion,
                               (JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn,
                               (JSON..=) "S3Destination" Prelude.<$> s3Destination,
                               (JSON..=) "SyncFormat" Prelude.<$> syncFormat,
                               (JSON..=) "SyncSource" Prelude.<$> syncSource,
                               (JSON..=) "SyncType" Prelude.<$> syncType]))}
instance JSON.ToJSON ResourceDataSync where
  toJSON ResourceDataSync {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SyncName" JSON..= syncName]
              (Prelude.catMaybes
                 [(JSON..=) "BucketName" Prelude.<$> bucketName,
                  (JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "BucketRegion" Prelude.<$> bucketRegion,
                  (JSON..=) "KMSKeyArn" Prelude.<$> kMSKeyArn,
                  (JSON..=) "S3Destination" Prelude.<$> s3Destination,
                  (JSON..=) "SyncFormat" Prelude.<$> syncFormat,
                  (JSON..=) "SyncSource" Prelude.<$> syncSource,
                  (JSON..=) "SyncType" Prelude.<$> syncType])))
instance Property "BucketName" ResourceDataSync where
  type PropertyType "BucketName" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {bucketName = Prelude.pure newValue, ..}
instance Property "BucketPrefix" ResourceDataSync where
  type PropertyType "BucketPrefix" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {bucketPrefix = Prelude.pure newValue, ..}
instance Property "BucketRegion" ResourceDataSync where
  type PropertyType "BucketRegion" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {bucketRegion = Prelude.pure newValue, ..}
instance Property "KMSKeyArn" ResourceDataSync where
  type PropertyType "KMSKeyArn" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {kMSKeyArn = Prelude.pure newValue, ..}
instance Property "S3Destination" ResourceDataSync where
  type PropertyType "S3Destination" ResourceDataSync = S3DestinationProperty
  set newValue ResourceDataSync {..}
    = ResourceDataSync {s3Destination = Prelude.pure newValue, ..}
instance Property "SyncFormat" ResourceDataSync where
  type PropertyType "SyncFormat" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {syncFormat = Prelude.pure newValue, ..}
instance Property "SyncName" ResourceDataSync where
  type PropertyType "SyncName" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {syncName = newValue, ..}
instance Property "SyncSource" ResourceDataSync where
  type PropertyType "SyncSource" ResourceDataSync = SyncSourceProperty
  set newValue ResourceDataSync {..}
    = ResourceDataSync {syncSource = Prelude.pure newValue, ..}
instance Property "SyncType" ResourceDataSync where
  type PropertyType "SyncType" ResourceDataSync = Value Prelude.Text
  set newValue ResourceDataSync {..}
    = ResourceDataSync {syncType = Prelude.pure newValue, ..}