module Stratosphere.QuickSight.DataSet.ColumnGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnGroupProperty :: Prelude.Type
instance ToResourceProperties ColumnGroupProperty
instance JSON.ToJSON ColumnGroupProperty