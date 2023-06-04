module Stratosphere.QuickSight.Template.ColumnSortProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnSortProperty :: Prelude.Type
instance ToResourceProperties ColumnSortProperty
instance JSON.ToJSON ColumnSortProperty