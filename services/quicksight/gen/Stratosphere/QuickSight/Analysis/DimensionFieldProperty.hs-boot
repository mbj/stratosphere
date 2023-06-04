module Stratosphere.QuickSight.Analysis.DimensionFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DimensionFieldProperty :: Prelude.Type
instance ToResourceProperties DimensionFieldProperty
instance JSON.ToJSON DimensionFieldProperty