module Stratosphere.QuickSight.Analysis.GradientStopProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GradientStopProperty :: Prelude.Type
instance ToResourceProperties GradientStopProperty
instance JSON.ToJSON GradientStopProperty