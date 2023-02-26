module Stratosphere.QuickSight.DataSet.RelationalTableProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RelationalTableProperty :: Prelude.Type
instance ToResourceProperties RelationalTableProperty
instance JSON.ToJSON RelationalTableProperty