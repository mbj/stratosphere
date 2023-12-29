module Stratosphere.GroundStation.DataflowEndpointGroup.DataflowEndpointProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DataflowEndpointProperty :: Prelude.Type
instance ToResourceProperties DataflowEndpointProperty
instance Prelude.Eq DataflowEndpointProperty
instance Prelude.Show DataflowEndpointProperty
instance JSON.ToJSON DataflowEndpointProperty