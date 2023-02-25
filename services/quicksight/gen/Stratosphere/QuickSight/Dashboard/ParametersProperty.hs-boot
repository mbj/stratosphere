module Stratosphere.QuickSight.Dashboard.ParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ParametersProperty :: Prelude.Type
instance ToResourceProperties ParametersProperty
instance JSON.ToJSON ParametersProperty