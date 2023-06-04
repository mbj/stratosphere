module Stratosphere.QuickSight.Template.MeasureFieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MeasureFieldProperty :: Prelude.Type
instance ToResourceProperties MeasureFieldProperty
instance JSON.ToJSON MeasureFieldProperty