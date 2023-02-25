module Stratosphere.Athena.WorkGroup.EngineVersionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EngineVersionProperty :: Prelude.Type
instance ToResourceProperties EngineVersionProperty
instance JSON.ToJSON EngineVersionProperty