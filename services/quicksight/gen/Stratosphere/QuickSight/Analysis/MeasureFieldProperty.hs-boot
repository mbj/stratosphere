module Stratosphere.QuickSight.Analysis.MeasureFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MeasureFieldProperty :: Prelude.Type
instance ToResourceProperties MeasureFieldProperty
instance Prelude.Eq MeasureFieldProperty
instance Prelude.Show MeasureFieldProperty
instance JSON.ToJSON MeasureFieldProperty