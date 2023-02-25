module Stratosphere.RoboMaker.SimulationApplication.SourceConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceConfigProperty :: Prelude.Type
instance ToResourceProperties SourceConfigProperty
instance JSON.ToJSON SourceConfigProperty