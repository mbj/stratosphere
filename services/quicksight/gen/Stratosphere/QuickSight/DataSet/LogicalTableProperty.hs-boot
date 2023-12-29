module Stratosphere.QuickSight.DataSet.LogicalTableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogicalTableProperty :: Prelude.Type
instance ToResourceProperties LogicalTableProperty
instance Prelude.Eq LogicalTableProperty
instance Prelude.Show LogicalTableProperty
instance JSON.ToJSON LogicalTableProperty