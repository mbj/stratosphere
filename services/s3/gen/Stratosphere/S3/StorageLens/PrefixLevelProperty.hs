module Stratosphere.S3.StorageLens.PrefixLevelProperty (
        module Exports, PrefixLevelProperty(..), mkPrefixLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.PrefixLevelStorageMetricsProperty as Exports
import Stratosphere.ResourceProperties
data PrefixLevelProperty
  = PrefixLevelProperty {storageMetrics :: PrefixLevelStorageMetricsProperty}
mkPrefixLevelProperty ::
  PrefixLevelStorageMetricsProperty -> PrefixLevelProperty
mkPrefixLevelProperty storageMetrics
  = PrefixLevelProperty {storageMetrics = storageMetrics}
instance ToResourceProperties PrefixLevelProperty where
  toResourceProperties PrefixLevelProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLens.PrefixLevel",
         supportsTags = Prelude.False,
         properties = ["StorageMetrics" JSON..= storageMetrics]}
instance JSON.ToJSON PrefixLevelProperty where
  toJSON PrefixLevelProperty {..}
    = JSON.object ["StorageMetrics" JSON..= storageMetrics]
instance Property "StorageMetrics" PrefixLevelProperty where
  type PropertyType "StorageMetrics" PrefixLevelProperty = PrefixLevelStorageMetricsProperty
  set newValue PrefixLevelProperty {}
    = PrefixLevelProperty {storageMetrics = newValue, ..}