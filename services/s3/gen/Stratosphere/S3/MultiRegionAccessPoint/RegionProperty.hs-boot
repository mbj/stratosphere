module Stratosphere.S3.MultiRegionAccessPoint.RegionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RegionProperty :: Prelude.Type
instance ToResourceProperties RegionProperty
instance JSON.ToJSON RegionProperty