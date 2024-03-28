module Stratosphere.ElastiCache.ServerlessCache (
        module Exports, ServerlessCache(..), mkServerlessCache
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.ServerlessCache.CacheUsageLimitsProperty as Exports
import {-# SOURCE #-} Stratosphere.ElastiCache.ServerlessCache.EndpointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServerlessCache
  = ServerlessCache {cacheUsageLimits :: (Prelude.Maybe CacheUsageLimitsProperty),
                     dailySnapshotTime :: (Prelude.Maybe (Value Prelude.Text)),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     endpoint :: (Prelude.Maybe EndpointProperty),
                     engine :: (Value Prelude.Text),
                     finalSnapshotName :: (Prelude.Maybe (Value Prelude.Text)),
                     kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                     majorEngineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                     readerEndpoint :: (Prelude.Maybe EndpointProperty),
                     securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                     serverlessCacheName :: (Value Prelude.Text),
                     snapshotArnsToRestore :: (Prelude.Maybe (ValueList Prelude.Text)),
                     snapshotRetentionLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                     subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag]),
                     userGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServerlessCache ::
  Value Prelude.Text -> Value Prelude.Text -> ServerlessCache
mkServerlessCache engine serverlessCacheName
  = ServerlessCache
      {engine = engine, serverlessCacheName = serverlessCacheName,
       cacheUsageLimits = Prelude.Nothing,
       dailySnapshotTime = Prelude.Nothing, description = Prelude.Nothing,
       endpoint = Prelude.Nothing, finalSnapshotName = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, majorEngineVersion = Prelude.Nothing,
       readerEndpoint = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       snapshotArnsToRestore = Prelude.Nothing,
       snapshotRetentionLimit = Prelude.Nothing,
       subnetIds = Prelude.Nothing, tags = Prelude.Nothing,
       userGroupId = Prelude.Nothing}
instance ToResourceProperties ServerlessCache where
  toResourceProperties ServerlessCache {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Engine" JSON..= engine,
                            "ServerlessCacheName" JSON..= serverlessCacheName]
                           (Prelude.catMaybes
                              [(JSON..=) "CacheUsageLimits" Prelude.<$> cacheUsageLimits,
                               (JSON..=) "DailySnapshotTime" Prelude.<$> dailySnapshotTime,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Endpoint" Prelude.<$> endpoint,
                               (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MajorEngineVersion" Prelude.<$> majorEngineVersion,
                               (JSON..=) "ReaderEndpoint" Prelude.<$> readerEndpoint,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SnapshotArnsToRestore"
                                 Prelude.<$> snapshotArnsToRestore,
                               (JSON..=) "SnapshotRetentionLimit"
                                 Prelude.<$> snapshotRetentionLimit,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserGroupId" Prelude.<$> userGroupId]))}
instance JSON.ToJSON ServerlessCache where
  toJSON ServerlessCache {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Engine" JSON..= engine,
               "ServerlessCacheName" JSON..= serverlessCacheName]
              (Prelude.catMaybes
                 [(JSON..=) "CacheUsageLimits" Prelude.<$> cacheUsageLimits,
                  (JSON..=) "DailySnapshotTime" Prelude.<$> dailySnapshotTime,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Endpoint" Prelude.<$> endpoint,
                  (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MajorEngineVersion" Prelude.<$> majorEngineVersion,
                  (JSON..=) "ReaderEndpoint" Prelude.<$> readerEndpoint,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SnapshotArnsToRestore"
                    Prelude.<$> snapshotArnsToRestore,
                  (JSON..=) "SnapshotRetentionLimit"
                    Prelude.<$> snapshotRetentionLimit,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserGroupId" Prelude.<$> userGroupId])))
instance Property "CacheUsageLimits" ServerlessCache where
  type PropertyType "CacheUsageLimits" ServerlessCache = CacheUsageLimitsProperty
  set newValue ServerlessCache {..}
    = ServerlessCache {cacheUsageLimits = Prelude.pure newValue, ..}
instance Property "DailySnapshotTime" ServerlessCache where
  type PropertyType "DailySnapshotTime" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {dailySnapshotTime = Prelude.pure newValue, ..}
instance Property "Description" ServerlessCache where
  type PropertyType "Description" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {description = Prelude.pure newValue, ..}
instance Property "Endpoint" ServerlessCache where
  type PropertyType "Endpoint" ServerlessCache = EndpointProperty
  set newValue ServerlessCache {..}
    = ServerlessCache {endpoint = Prelude.pure newValue, ..}
instance Property "Engine" ServerlessCache where
  type PropertyType "Engine" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {engine = newValue, ..}
instance Property "FinalSnapshotName" ServerlessCache where
  type PropertyType "FinalSnapshotName" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {finalSnapshotName = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ServerlessCache where
  type PropertyType "KmsKeyId" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MajorEngineVersion" ServerlessCache where
  type PropertyType "MajorEngineVersion" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {majorEngineVersion = Prelude.pure newValue, ..}
instance Property "ReaderEndpoint" ServerlessCache where
  type PropertyType "ReaderEndpoint" ServerlessCache = EndpointProperty
  set newValue ServerlessCache {..}
    = ServerlessCache {readerEndpoint = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ServerlessCache where
  type PropertyType "SecurityGroupIds" ServerlessCache = ValueList Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {securityGroupIds = Prelude.pure newValue, ..}
instance Property "ServerlessCacheName" ServerlessCache where
  type PropertyType "ServerlessCacheName" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {serverlessCacheName = newValue, ..}
instance Property "SnapshotArnsToRestore" ServerlessCache where
  type PropertyType "SnapshotArnsToRestore" ServerlessCache = ValueList Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache
        {snapshotArnsToRestore = Prelude.pure newValue, ..}
instance Property "SnapshotRetentionLimit" ServerlessCache where
  type PropertyType "SnapshotRetentionLimit" ServerlessCache = Value Prelude.Integer
  set newValue ServerlessCache {..}
    = ServerlessCache
        {snapshotRetentionLimit = Prelude.pure newValue, ..}
instance Property "SubnetIds" ServerlessCache where
  type PropertyType "SubnetIds" ServerlessCache = ValueList Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" ServerlessCache where
  type PropertyType "Tags" ServerlessCache = [Tag]
  set newValue ServerlessCache {..}
    = ServerlessCache {tags = Prelude.pure newValue, ..}
instance Property "UserGroupId" ServerlessCache where
  type PropertyType "UserGroupId" ServerlessCache = Value Prelude.Text
  set newValue ServerlessCache {..}
    = ServerlessCache {userGroupId = Prelude.pure newValue, ..}