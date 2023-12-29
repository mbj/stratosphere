module Stratosphere.S3.Bucket (
        module Exports, Bucket(..), mkBucket
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.AccelerateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.AnalyticsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.BucketEncryptionProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.CorsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.IntelligentTieringConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.InventoryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.LifecycleConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.LoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.MetricsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.NotificationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.ObjectLockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.OwnershipControlsProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.PublicAccessBlockConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.VersioningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.Bucket.WebsiteConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Bucket
  = Bucket {accelerateConfiguration :: (Prelude.Maybe AccelerateConfigurationProperty),
            accessControl :: (Prelude.Maybe (Value Prelude.Text)),
            analyticsConfigurations :: (Prelude.Maybe [AnalyticsConfigurationProperty]),
            bucketEncryption :: (Prelude.Maybe BucketEncryptionProperty),
            bucketName :: (Prelude.Maybe (Value Prelude.Text)),
            corsConfiguration :: (Prelude.Maybe CorsConfigurationProperty),
            intelligentTieringConfigurations :: (Prelude.Maybe [IntelligentTieringConfigurationProperty]),
            inventoryConfigurations :: (Prelude.Maybe [InventoryConfigurationProperty]),
            lifecycleConfiguration :: (Prelude.Maybe LifecycleConfigurationProperty),
            loggingConfiguration :: (Prelude.Maybe LoggingConfigurationProperty),
            metricsConfigurations :: (Prelude.Maybe [MetricsConfigurationProperty]),
            notificationConfiguration :: (Prelude.Maybe NotificationConfigurationProperty),
            objectLockConfiguration :: (Prelude.Maybe ObjectLockConfigurationProperty),
            objectLockEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
            ownershipControls :: (Prelude.Maybe OwnershipControlsProperty),
            publicAccessBlockConfiguration :: (Prelude.Maybe PublicAccessBlockConfigurationProperty),
            replicationConfiguration :: (Prelude.Maybe ReplicationConfigurationProperty),
            tags :: (Prelude.Maybe [Tag]),
            versioningConfiguration :: (Prelude.Maybe VersioningConfigurationProperty),
            websiteConfiguration :: (Prelude.Maybe WebsiteConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBucket :: Bucket
mkBucket
  = Bucket
      {accelerateConfiguration = Prelude.Nothing,
       accessControl = Prelude.Nothing,
       analyticsConfigurations = Prelude.Nothing,
       bucketEncryption = Prelude.Nothing, bucketName = Prelude.Nothing,
       corsConfiguration = Prelude.Nothing,
       intelligentTieringConfigurations = Prelude.Nothing,
       inventoryConfigurations = Prelude.Nothing,
       lifecycleConfiguration = Prelude.Nothing,
       loggingConfiguration = Prelude.Nothing,
       metricsConfigurations = Prelude.Nothing,
       notificationConfiguration = Prelude.Nothing,
       objectLockConfiguration = Prelude.Nothing,
       objectLockEnabled = Prelude.Nothing,
       ownershipControls = Prelude.Nothing,
       publicAccessBlockConfiguration = Prelude.Nothing,
       replicationConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       versioningConfiguration = Prelude.Nothing,
       websiteConfiguration = Prelude.Nothing}
instance ToResourceProperties Bucket where
  toResourceProperties Bucket {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccelerateConfiguration"
                              Prelude.<$> accelerateConfiguration,
                            (JSON..=) "AccessControl" Prelude.<$> accessControl,
                            (JSON..=) "AnalyticsConfigurations"
                              Prelude.<$> analyticsConfigurations,
                            (JSON..=) "BucketEncryption" Prelude.<$> bucketEncryption,
                            (JSON..=) "BucketName" Prelude.<$> bucketName,
                            (JSON..=) "CorsConfiguration" Prelude.<$> corsConfiguration,
                            (JSON..=) "IntelligentTieringConfigurations"
                              Prelude.<$> intelligentTieringConfigurations,
                            (JSON..=) "InventoryConfigurations"
                              Prelude.<$> inventoryConfigurations,
                            (JSON..=) "LifecycleConfiguration"
                              Prelude.<$> lifecycleConfiguration,
                            (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
                            (JSON..=) "MetricsConfigurations"
                              Prelude.<$> metricsConfigurations,
                            (JSON..=) "NotificationConfiguration"
                              Prelude.<$> notificationConfiguration,
                            (JSON..=) "ObjectLockConfiguration"
                              Prelude.<$> objectLockConfiguration,
                            (JSON..=) "ObjectLockEnabled" Prelude.<$> objectLockEnabled,
                            (JSON..=) "OwnershipControls" Prelude.<$> ownershipControls,
                            (JSON..=) "PublicAccessBlockConfiguration"
                              Prelude.<$> publicAccessBlockConfiguration,
                            (JSON..=) "ReplicationConfiguration"
                              Prelude.<$> replicationConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VersioningConfiguration"
                              Prelude.<$> versioningConfiguration,
                            (JSON..=) "WebsiteConfiguration"
                              Prelude.<$> websiteConfiguration])}
instance JSON.ToJSON Bucket where
  toJSON Bucket {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccelerateConfiguration"
                 Prelude.<$> accelerateConfiguration,
               (JSON..=) "AccessControl" Prelude.<$> accessControl,
               (JSON..=) "AnalyticsConfigurations"
                 Prelude.<$> analyticsConfigurations,
               (JSON..=) "BucketEncryption" Prelude.<$> bucketEncryption,
               (JSON..=) "BucketName" Prelude.<$> bucketName,
               (JSON..=) "CorsConfiguration" Prelude.<$> corsConfiguration,
               (JSON..=) "IntelligentTieringConfigurations"
                 Prelude.<$> intelligentTieringConfigurations,
               (JSON..=) "InventoryConfigurations"
                 Prelude.<$> inventoryConfigurations,
               (JSON..=) "LifecycleConfiguration"
                 Prelude.<$> lifecycleConfiguration,
               (JSON..=) "LoggingConfiguration" Prelude.<$> loggingConfiguration,
               (JSON..=) "MetricsConfigurations"
                 Prelude.<$> metricsConfigurations,
               (JSON..=) "NotificationConfiguration"
                 Prelude.<$> notificationConfiguration,
               (JSON..=) "ObjectLockConfiguration"
                 Prelude.<$> objectLockConfiguration,
               (JSON..=) "ObjectLockEnabled" Prelude.<$> objectLockEnabled,
               (JSON..=) "OwnershipControls" Prelude.<$> ownershipControls,
               (JSON..=) "PublicAccessBlockConfiguration"
                 Prelude.<$> publicAccessBlockConfiguration,
               (JSON..=) "ReplicationConfiguration"
                 Prelude.<$> replicationConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VersioningConfiguration"
                 Prelude.<$> versioningConfiguration,
               (JSON..=) "WebsiteConfiguration"
                 Prelude.<$> websiteConfiguration]))
instance Property "AccelerateConfiguration" Bucket where
  type PropertyType "AccelerateConfiguration" Bucket = AccelerateConfigurationProperty
  set newValue Bucket {..}
    = Bucket {accelerateConfiguration = Prelude.pure newValue, ..}
instance Property "AccessControl" Bucket where
  type PropertyType "AccessControl" Bucket = Value Prelude.Text
  set newValue Bucket {..}
    = Bucket {accessControl = Prelude.pure newValue, ..}
instance Property "AnalyticsConfigurations" Bucket where
  type PropertyType "AnalyticsConfigurations" Bucket = [AnalyticsConfigurationProperty]
  set newValue Bucket {..}
    = Bucket {analyticsConfigurations = Prelude.pure newValue, ..}
instance Property "BucketEncryption" Bucket where
  type PropertyType "BucketEncryption" Bucket = BucketEncryptionProperty
  set newValue Bucket {..}
    = Bucket {bucketEncryption = Prelude.pure newValue, ..}
instance Property "BucketName" Bucket where
  type PropertyType "BucketName" Bucket = Value Prelude.Text
  set newValue Bucket {..}
    = Bucket {bucketName = Prelude.pure newValue, ..}
instance Property "CorsConfiguration" Bucket where
  type PropertyType "CorsConfiguration" Bucket = CorsConfigurationProperty
  set newValue Bucket {..}
    = Bucket {corsConfiguration = Prelude.pure newValue, ..}
instance Property "IntelligentTieringConfigurations" Bucket where
  type PropertyType "IntelligentTieringConfigurations" Bucket = [IntelligentTieringConfigurationProperty]
  set newValue Bucket {..}
    = Bucket
        {intelligentTieringConfigurations = Prelude.pure newValue, ..}
instance Property "InventoryConfigurations" Bucket where
  type PropertyType "InventoryConfigurations" Bucket = [InventoryConfigurationProperty]
  set newValue Bucket {..}
    = Bucket {inventoryConfigurations = Prelude.pure newValue, ..}
instance Property "LifecycleConfiguration" Bucket where
  type PropertyType "LifecycleConfiguration" Bucket = LifecycleConfigurationProperty
  set newValue Bucket {..}
    = Bucket {lifecycleConfiguration = Prelude.pure newValue, ..}
instance Property "LoggingConfiguration" Bucket where
  type PropertyType "LoggingConfiguration" Bucket = LoggingConfigurationProperty
  set newValue Bucket {..}
    = Bucket {loggingConfiguration = Prelude.pure newValue, ..}
instance Property "MetricsConfigurations" Bucket where
  type PropertyType "MetricsConfigurations" Bucket = [MetricsConfigurationProperty]
  set newValue Bucket {..}
    = Bucket {metricsConfigurations = Prelude.pure newValue, ..}
instance Property "NotificationConfiguration" Bucket where
  type PropertyType "NotificationConfiguration" Bucket = NotificationConfigurationProperty
  set newValue Bucket {..}
    = Bucket {notificationConfiguration = Prelude.pure newValue, ..}
instance Property "ObjectLockConfiguration" Bucket where
  type PropertyType "ObjectLockConfiguration" Bucket = ObjectLockConfigurationProperty
  set newValue Bucket {..}
    = Bucket {objectLockConfiguration = Prelude.pure newValue, ..}
instance Property "ObjectLockEnabled" Bucket where
  type PropertyType "ObjectLockEnabled" Bucket = Value Prelude.Bool
  set newValue Bucket {..}
    = Bucket {objectLockEnabled = Prelude.pure newValue, ..}
instance Property "OwnershipControls" Bucket where
  type PropertyType "OwnershipControls" Bucket = OwnershipControlsProperty
  set newValue Bucket {..}
    = Bucket {ownershipControls = Prelude.pure newValue, ..}
instance Property "PublicAccessBlockConfiguration" Bucket where
  type PropertyType "PublicAccessBlockConfiguration" Bucket = PublicAccessBlockConfigurationProperty
  set newValue Bucket {..}
    = Bucket
        {publicAccessBlockConfiguration = Prelude.pure newValue, ..}
instance Property "ReplicationConfiguration" Bucket where
  type PropertyType "ReplicationConfiguration" Bucket = ReplicationConfigurationProperty
  set newValue Bucket {..}
    = Bucket {replicationConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" Bucket where
  type PropertyType "Tags" Bucket = [Tag]
  set newValue Bucket {..}
    = Bucket {tags = Prelude.pure newValue, ..}
instance Property "VersioningConfiguration" Bucket where
  type PropertyType "VersioningConfiguration" Bucket = VersioningConfigurationProperty
  set newValue Bucket {..}
    = Bucket {versioningConfiguration = Prelude.pure newValue, ..}
instance Property "WebsiteConfiguration" Bucket where
  type PropertyType "WebsiteConfiguration" Bucket = WebsiteConfigurationProperty
  set newValue Bucket {..}
    = Bucket {websiteConfiguration = Prelude.pure newValue, ..}