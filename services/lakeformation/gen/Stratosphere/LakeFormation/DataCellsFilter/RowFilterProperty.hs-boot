module Stratosphere.LakeFormation.DataCellsFilter.RowFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RowFilterProperty :: Prelude.Type
instance ToResourceProperties RowFilterProperty
instance JSON.ToJSON RowFilterProperty