module Stratosphere.QuickSight.Analysis.AnalysisErrorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AnalysisErrorProperty :: Prelude.Type
instance ToResourceProperties AnalysisErrorProperty
instance JSON.ToJSON AnalysisErrorProperty