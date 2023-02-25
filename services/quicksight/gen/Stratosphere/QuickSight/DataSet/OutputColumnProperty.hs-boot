module Stratosphere.QuickSight.DataSet.OutputColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputColumnProperty :: Prelude.Type
instance ToResourceProperties OutputColumnProperty
instance JSON.ToJSON OutputColumnProperty