module Stratosphere.QuickSight.Dashboard.SeriesItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SeriesItemProperty :: Prelude.Type
instance ToResourceProperties SeriesItemProperty
instance JSON.ToJSON SeriesItemProperty