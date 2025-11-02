module Stratosphere.ECS.Cluster.ExecuteCommandLogConfigurationProperty (
        ExecuteCommandLogConfigurationProperty(..),
        mkExecuteCommandLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExecuteCommandLogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html>
    ExecuteCommandLogConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html#cfn-ecs-cluster-executecommandlogconfiguration-cloudwatchencryptionenabled>
                                            cloudWatchEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html#cfn-ecs-cluster-executecommandlogconfiguration-cloudwatchloggroupname>
                                            cloudWatchLogGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html#cfn-ecs-cluster-executecommandlogconfiguration-s3bucketname>
                                            s3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html#cfn-ecs-cluster-executecommandlogconfiguration-s3encryptionenabled>
                                            s3EncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-executecommandlogconfiguration.html#cfn-ecs-cluster-executecommandlogconfiguration-s3keyprefix>
                                            s3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecuteCommandLogConfigurationProperty ::
  ExecuteCommandLogConfigurationProperty
mkExecuteCommandLogConfigurationProperty
  = ExecuteCommandLogConfigurationProperty
      {haddock_workaround_ = (),
       cloudWatchEncryptionEnabled = Prelude.Nothing,
       cloudWatchLogGroupName = Prelude.Nothing,
       s3BucketName = Prelude.Nothing,
       s3EncryptionEnabled = Prelude.Nothing,
       s3KeyPrefix = Prelude.Nothing}
instance ToResourceProperties ExecuteCommandLogConfigurationProperty where
  toResourceProperties ExecuteCommandLogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ExecuteCommandLogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchEncryptionEnabled"
                              Prelude.<$> cloudWatchEncryptionEnabled,
                            (JSON..=) "CloudWatchLogGroupName"
                              Prelude.<$> cloudWatchLogGroupName,
                            (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
                            (JSON..=) "S3EncryptionEnabled" Prelude.<$> s3EncryptionEnabled,
                            (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix])}
instance JSON.ToJSON ExecuteCommandLogConfigurationProperty where
  toJSON ExecuteCommandLogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchEncryptionEnabled"
                 Prelude.<$> cloudWatchEncryptionEnabled,
               (JSON..=) "CloudWatchLogGroupName"
                 Prelude.<$> cloudWatchLogGroupName,
               (JSON..=) "S3BucketName" Prelude.<$> s3BucketName,
               (JSON..=) "S3EncryptionEnabled" Prelude.<$> s3EncryptionEnabled,
               (JSON..=) "S3KeyPrefix" Prelude.<$> s3KeyPrefix]))
instance Property "CloudWatchEncryptionEnabled" ExecuteCommandLogConfigurationProperty where
  type PropertyType "CloudWatchEncryptionEnabled" ExecuteCommandLogConfigurationProperty = Value Prelude.Bool
  set newValue ExecuteCommandLogConfigurationProperty {..}
    = ExecuteCommandLogConfigurationProperty
        {cloudWatchEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "CloudWatchLogGroupName" ExecuteCommandLogConfigurationProperty where
  type PropertyType "CloudWatchLogGroupName" ExecuteCommandLogConfigurationProperty = Value Prelude.Text
  set newValue ExecuteCommandLogConfigurationProperty {..}
    = ExecuteCommandLogConfigurationProperty
        {cloudWatchLogGroupName = Prelude.pure newValue, ..}
instance Property "S3BucketName" ExecuteCommandLogConfigurationProperty where
  type PropertyType "S3BucketName" ExecuteCommandLogConfigurationProperty = Value Prelude.Text
  set newValue ExecuteCommandLogConfigurationProperty {..}
    = ExecuteCommandLogConfigurationProperty
        {s3BucketName = Prelude.pure newValue, ..}
instance Property "S3EncryptionEnabled" ExecuteCommandLogConfigurationProperty where
  type PropertyType "S3EncryptionEnabled" ExecuteCommandLogConfigurationProperty = Value Prelude.Bool
  set newValue ExecuteCommandLogConfigurationProperty {..}
    = ExecuteCommandLogConfigurationProperty
        {s3EncryptionEnabled = Prelude.pure newValue, ..}
instance Property "S3KeyPrefix" ExecuteCommandLogConfigurationProperty where
  type PropertyType "S3KeyPrefix" ExecuteCommandLogConfigurationProperty = Value Prelude.Text
  set newValue ExecuteCommandLogConfigurationProperty {..}
    = ExecuteCommandLogConfigurationProperty
        {s3KeyPrefix = Prelude.pure newValue, ..}