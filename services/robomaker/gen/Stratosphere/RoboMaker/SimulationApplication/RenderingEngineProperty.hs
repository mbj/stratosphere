module Stratosphere.RoboMaker.SimulationApplication.RenderingEngineProperty (
        RenderingEngineProperty(..), mkRenderingEngineProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenderingEngineProperty
  = RenderingEngineProperty {name :: (Value Prelude.Text),
                             version :: (Value Prelude.Text)}
mkRenderingEngineProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RenderingEngineProperty
mkRenderingEngineProperty name version
  = RenderingEngineProperty {name = name, version = version}
instance ToResourceProperties RenderingEngineProperty where
  toResourceProperties RenderingEngineProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication.RenderingEngine",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Version" JSON..= version]}
instance JSON.ToJSON RenderingEngineProperty where
  toJSON RenderingEngineProperty {..}
    = JSON.object ["Name" JSON..= name, "Version" JSON..= version]
instance Property "Name" RenderingEngineProperty where
  type PropertyType "Name" RenderingEngineProperty = Value Prelude.Text
  set newValue RenderingEngineProperty {..}
    = RenderingEngineProperty {name = newValue, ..}
instance Property "Version" RenderingEngineProperty where
  type PropertyType "Version" RenderingEngineProperty = Value Prelude.Text
  set newValue RenderingEngineProperty {..}
    = RenderingEngineProperty {version = newValue, ..}