module Stratosphere.QuickSight.DataSet.LogicalTableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogicalTableProperty :: Prelude.Type
instance ToResourceProperties LogicalTableProperty
instance JSON.ToJSON LogicalTableProperty