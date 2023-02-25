module Stratosphere.QuickSight.DataSet.ColumnTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnTagProperty :: Prelude.Type
instance ToResourceProperties ColumnTagProperty
instance JSON.ToJSON ColumnTagProperty