module Stratosphere.QuickSight.DataSet.PhysicalTableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PhysicalTableProperty :: Prelude.Type
instance ToResourceProperties PhysicalTableProperty
instance JSON.ToJSON PhysicalTableProperty