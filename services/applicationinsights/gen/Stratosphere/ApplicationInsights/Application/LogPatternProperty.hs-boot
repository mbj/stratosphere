module Stratosphere.ApplicationInsights.Application.LogPatternProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogPatternProperty :: Prelude.Type
instance ToResourceProperties LogPatternProperty
instance Prelude.Eq LogPatternProperty
instance Prelude.Show LogPatternProperty
instance JSON.ToJSON LogPatternProperty