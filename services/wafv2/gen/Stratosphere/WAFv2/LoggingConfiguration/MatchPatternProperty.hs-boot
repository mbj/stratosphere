module Stratosphere.WAFv2.LoggingConfiguration.MatchPatternProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MatchPatternProperty :: Prelude.Type
instance ToResourceProperties MatchPatternProperty
instance JSON.ToJSON MatchPatternProperty