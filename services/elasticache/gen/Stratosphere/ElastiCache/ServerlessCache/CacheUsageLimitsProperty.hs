module Stratosphere.ElastiCache.ServerlessCache.CacheUsageLimitsProperty (
        module Exports, CacheUsageLimitsProperty(..),
        mkCacheUsageLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.ServerlessCache.DataStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.ElastiCache.ServerlessCache.ECPUPerSecondProperty as Exports
import Stratosphere.ResourceProperties
data CacheUsageLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html>
    CacheUsageLimitsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html#cfn-elasticache-serverlesscache-cacheusagelimits-datastorage>
                              dataStorage :: (Prelude.Maybe DataStorageProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-serverlesscache-cacheusagelimits.html#cfn-elasticache-serverlesscache-cacheusagelimits-ecpupersecond>
                              eCPUPerSecond :: (Prelude.Maybe ECPUPerSecondProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheUsageLimitsProperty :: CacheUsageLimitsProperty
mkCacheUsageLimitsProperty
  = CacheUsageLimitsProperty
      {haddock_workaround_ = (), dataStorage = Prelude.Nothing,
       eCPUPerSecond = Prelude.Nothing}
instance ToResourceProperties CacheUsageLimitsProperty where
  toResourceProperties CacheUsageLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ServerlessCache.CacheUsageLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataStorage" Prelude.<$> dataStorage,
                            (JSON..=) "ECPUPerSecond" Prelude.<$> eCPUPerSecond])}
instance JSON.ToJSON CacheUsageLimitsProperty where
  toJSON CacheUsageLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataStorage" Prelude.<$> dataStorage,
               (JSON..=) "ECPUPerSecond" Prelude.<$> eCPUPerSecond]))
instance Property "DataStorage" CacheUsageLimitsProperty where
  type PropertyType "DataStorage" CacheUsageLimitsProperty = DataStorageProperty
  set newValue CacheUsageLimitsProperty {..}
    = CacheUsageLimitsProperty
        {dataStorage = Prelude.pure newValue, ..}
instance Property "ECPUPerSecond" CacheUsageLimitsProperty where
  type PropertyType "ECPUPerSecond" CacheUsageLimitsProperty = ECPUPerSecondProperty
  set newValue CacheUsageLimitsProperty {..}
    = CacheUsageLimitsProperty
        {eCPUPerSecond = Prelude.pure newValue, ..}