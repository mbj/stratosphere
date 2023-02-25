module Stratosphere.S3.MultiRegionAccessPoint.RegionProperty (
        RegionProperty(..), mkRegionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionProperty
  = RegionProperty {bucket :: (Value Prelude.Text)}
mkRegionProperty :: Value Prelude.Text -> RegionProperty
mkRegionProperty bucket = RegionProperty {bucket = bucket}
instance ToResourceProperties RegionProperty where
  toResourceProperties RegionProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::MultiRegionAccessPoint.Region",
         properties = ["Bucket" JSON..= bucket]}
instance JSON.ToJSON RegionProperty where
  toJSON RegionProperty {..} = JSON.object ["Bucket" JSON..= bucket]
instance Property "Bucket" RegionProperty where
  type PropertyType "Bucket" RegionProperty = Value Prelude.Text
  set newValue RegionProperty {}
    = RegionProperty {bucket = newValue, ..}