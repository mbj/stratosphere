module Stratosphere.SecurityLake.DataLake (
        module Exports, DataLake(..), mkDataLake
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.DataLake.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityLake.DataLake.LifecycleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityLake.DataLake.ReplicationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DataLake
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html>
    DataLake {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html#cfn-securitylake-datalake-encryptionconfiguration>
              encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html#cfn-securitylake-datalake-lifecycleconfiguration>
              lifecycleConfiguration :: (Prelude.Maybe LifecycleConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html#cfn-securitylake-datalake-metastoremanagerrolearn>
              metaStoreManagerRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html#cfn-securitylake-datalake-replicationconfiguration>
              replicationConfiguration :: (Prelude.Maybe ReplicationConfigurationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-securitylake-datalake.html#cfn-securitylake-datalake-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLake :: DataLake
mkDataLake
  = DataLake
      {haddock_workaround_ = (),
       encryptionConfiguration = Prelude.Nothing,
       lifecycleConfiguration = Prelude.Nothing,
       metaStoreManagerRoleArn = Prelude.Nothing,
       replicationConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DataLake where
  toResourceProperties DataLake {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::DataLake",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EncryptionConfiguration"
                              Prelude.<$> encryptionConfiguration,
                            (JSON..=) "LifecycleConfiguration"
                              Prelude.<$> lifecycleConfiguration,
                            (JSON..=) "MetaStoreManagerRoleArn"
                              Prelude.<$> metaStoreManagerRoleArn,
                            (JSON..=) "ReplicationConfiguration"
                              Prelude.<$> replicationConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DataLake where
  toJSON DataLake {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EncryptionConfiguration"
                 Prelude.<$> encryptionConfiguration,
               (JSON..=) "LifecycleConfiguration"
                 Prelude.<$> lifecycleConfiguration,
               (JSON..=) "MetaStoreManagerRoleArn"
                 Prelude.<$> metaStoreManagerRoleArn,
               (JSON..=) "ReplicationConfiguration"
                 Prelude.<$> replicationConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "EncryptionConfiguration" DataLake where
  type PropertyType "EncryptionConfiguration" DataLake = EncryptionConfigurationProperty
  set newValue DataLake {..}
    = DataLake {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "LifecycleConfiguration" DataLake where
  type PropertyType "LifecycleConfiguration" DataLake = LifecycleConfigurationProperty
  set newValue DataLake {..}
    = DataLake {lifecycleConfiguration = Prelude.pure newValue, ..}
instance Property "MetaStoreManagerRoleArn" DataLake where
  type PropertyType "MetaStoreManagerRoleArn" DataLake = Value Prelude.Text
  set newValue DataLake {..}
    = DataLake {metaStoreManagerRoleArn = Prelude.pure newValue, ..}
instance Property "ReplicationConfiguration" DataLake where
  type PropertyType "ReplicationConfiguration" DataLake = ReplicationConfigurationProperty
  set newValue DataLake {..}
    = DataLake {replicationConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DataLake where
  type PropertyType "Tags" DataLake = [Tag]
  set newValue DataLake {..}
    = DataLake {tags = Prelude.pure newValue, ..}