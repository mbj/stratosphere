module Stratosphere.QuickSight.Analysis.SeriesItemProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SeriesItemProperty :: Prelude.Type
instance ToResourceProperties SeriesItemProperty
instance Prelude.Eq SeriesItemProperty
instance Prelude.Show SeriesItemProperty
instance JSON.ToJSON SeriesItemProperty