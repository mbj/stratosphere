module Stratosphere.QuickSight.Dashboard.DataPathSortProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataPathSortProperty :: Prelude.Type
instance ToResourceProperties DataPathSortProperty
instance JSON.ToJSON DataPathSortProperty