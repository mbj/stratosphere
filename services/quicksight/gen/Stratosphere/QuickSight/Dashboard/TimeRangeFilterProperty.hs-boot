module Stratosphere.QuickSight.Dashboard.TimeRangeFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimeRangeFilterProperty :: Prelude.Type
instance ToResourceProperties TimeRangeFilterProperty
instance JSON.ToJSON TimeRangeFilterProperty