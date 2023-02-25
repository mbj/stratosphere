module Stratosphere.QuickSight.DataSet.FilterOperationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FilterOperationProperty :: Prelude.Type
instance ToResourceProperties FilterOperationProperty
instance JSON.ToJSON FilterOperationProperty