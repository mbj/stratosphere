module Stratosphere.QuickSight.DataSet.CustomSqlProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomSqlProperty :: Prelude.Type
instance ToResourceProperties CustomSqlProperty
instance Prelude.Eq CustomSqlProperty
instance Prelude.Show CustomSqlProperty
instance JSON.ToJSON CustomSqlProperty