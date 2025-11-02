module Stratosphere.RoboMaker.SimulationApplication.RenderingEngineProperty (
        RenderingEngineProperty(..), mkRenderingEngineProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenderingEngineProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html>
    RenderingEngineProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-renderingengine.html#cfn-robomaker-simulationapplication-renderingengine-version>
                             version :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenderingEngineProperty ::
  Value Prelude.Text -> Value Prelude.Text -> RenderingEngineProperty
mkRenderingEngineProperty name version
  = RenderingEngineProperty
      {haddock_workaround_ = (), name = name, version = version}
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