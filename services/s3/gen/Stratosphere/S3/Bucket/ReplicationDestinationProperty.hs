module Stratosphere.S3.Bucket.ReplicationDestinationProperty (
        module Exports, ReplicationDestinationProperty(..),
        mkReplicationDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.AccessControlTranslationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.MetricsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationTimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html>
    ReplicationDestinationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-accesscontroltranslation>
                                    accessControlTranslation :: (Prelude.Maybe AccessControlTranslationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-account>
                                    account :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-bucket>
                                    bucket :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-encryptionconfiguration>
                                    encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-metrics>
                                    metrics :: (Prelude.Maybe MetricsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-replicationtime>
                                    replicationTime :: (Prelude.Maybe ReplicationTimeProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationdestination.html#cfn-s3-bucket-replicationdestination-storageclass>
                                    storageClass :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationDestinationProperty ::
  Value Prelude.Text -> ReplicationDestinationProperty
mkReplicationDestinationProperty bucket
  = ReplicationDestinationProperty
      {haddock_workaround_ = (), bucket = bucket,
       accessControlTranslation = Prelude.Nothing,
       account = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       metrics = Prelude.Nothing, replicationTime = Prelude.Nothing,
       storageClass = Prelude.Nothing}
instance ToResourceProperties ReplicationDestinationProperty where
  toResourceProperties ReplicationDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessControlTranslation"
                                 Prelude.<$> accessControlTranslation,
                               (JSON..=) "Account" Prelude.<$> account,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "Metrics" Prelude.<$> metrics,
                               (JSON..=) "ReplicationTime" Prelude.<$> replicationTime,
                               (JSON..=) "StorageClass" Prelude.<$> storageClass]))}
instance JSON.ToJSON ReplicationDestinationProperty where
  toJSON ReplicationDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes
                 [(JSON..=) "AccessControlTranslation"
                    Prelude.<$> accessControlTranslation,
                  (JSON..=) "Account" Prelude.<$> account,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "Metrics" Prelude.<$> metrics,
                  (JSON..=) "ReplicationTime" Prelude.<$> replicationTime,
                  (JSON..=) "StorageClass" Prelude.<$> storageClass])))
instance Property "AccessControlTranslation" ReplicationDestinationProperty where
  type PropertyType "AccessControlTranslation" ReplicationDestinationProperty = AccessControlTranslationProperty
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {accessControlTranslation = Prelude.pure newValue, ..}
instance Property "Account" ReplicationDestinationProperty where
  type PropertyType "Account" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {account = Prelude.pure newValue, ..}
instance Property "Bucket" ReplicationDestinationProperty where
  type PropertyType "Bucket" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty {bucket = newValue, ..}
instance Property "EncryptionConfiguration" ReplicationDestinationProperty where
  type PropertyType "EncryptionConfiguration" ReplicationDestinationProperty = EncryptionConfigurationProperty
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "Metrics" ReplicationDestinationProperty where
  type PropertyType "Metrics" ReplicationDestinationProperty = MetricsProperty
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {metrics = Prelude.pure newValue, ..}
instance Property "ReplicationTime" ReplicationDestinationProperty where
  type PropertyType "ReplicationTime" ReplicationDestinationProperty = ReplicationTimeProperty
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {replicationTime = Prelude.pure newValue, ..}
instance Property "StorageClass" ReplicationDestinationProperty where
  type PropertyType "StorageClass" ReplicationDestinationProperty = Value Prelude.Text
  set newValue ReplicationDestinationProperty {..}
    = ReplicationDestinationProperty
        {storageClass = Prelude.pure newValue, ..}