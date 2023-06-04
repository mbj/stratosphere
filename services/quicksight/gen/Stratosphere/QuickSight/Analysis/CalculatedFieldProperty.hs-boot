module Stratosphere.QuickSight.Analysis.CalculatedFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CalculatedFieldProperty :: Prelude.Type
instance ToResourceProperties CalculatedFieldProperty
instance JSON.ToJSON CalculatedFieldProperty