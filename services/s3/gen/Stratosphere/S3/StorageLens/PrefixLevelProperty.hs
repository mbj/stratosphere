module Stratosphere.S3.StorageLens.PrefixLevelProperty (
        module Exports, PrefixLevelProperty(..), mkPrefixLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLens.PrefixLevelStorageMetricsProperty as Exports
import Stratosphere.ResourceProperties
data PrefixLevelProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevel.html>
    PrefixLevelProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-storagelens-prefixlevel.html#cfn-s3-storagelens-prefixlevel-storagemetrics>
                         storageMetrics :: PrefixLevelStorageMetricsProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
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