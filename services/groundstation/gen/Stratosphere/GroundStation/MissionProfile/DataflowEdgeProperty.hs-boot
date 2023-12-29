module Stratosphere.GroundStation.MissionProfile.DataflowEdgeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataflowEdgeProperty :: Prelude.Type
instance ToResourceProperties DataflowEdgeProperty
instance Prelude.Eq DataflowEdgeProperty
instance Prelude.Show DataflowEdgeProperty
instance JSON.ToJSON DataflowEdgeProperty