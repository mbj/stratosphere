module Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColumnHierarchyProperty :: Prelude.Type
instance ToResourceProperties ColumnHierarchyProperty
instance JSON.ToJSON ColumnHierarchyProperty