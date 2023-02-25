module Stratosphere.OpsWorksCM.Server.EngineAttributeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EngineAttributeProperty :: Prelude.Type
instance ToResourceProperties EngineAttributeProperty
instance JSON.ToJSON EngineAttributeProperty