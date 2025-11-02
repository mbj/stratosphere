module Stratosphere.RoboMaker.SimulationApplication.SimulationSoftwareSuiteProperty (
        SimulationSoftwareSuiteProperty(..),
        mkSimulationSoftwareSuiteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimulationSoftwareSuiteProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html>
    SimulationSoftwareSuiteProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-name>
                                     name :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-simulationsoftwaresuite.html#cfn-robomaker-simulationapplication-simulationsoftwaresuite-version>
                                     version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimulationSoftwareSuiteProperty ::
  Value Prelude.Text -> SimulationSoftwareSuiteProperty
mkSimulationSoftwareSuiteProperty name
  = SimulationSoftwareSuiteProperty
      {haddock_workaround_ = (), name = name, version = Prelude.Nothing}
instance ToResourceProperties SimulationSoftwareSuiteProperty where
  toResourceProperties SimulationSoftwareSuiteProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication.SimulationSoftwareSuite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON SimulationSoftwareSuiteProperty where
  toJSON SimulationSoftwareSuiteProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Name" SimulationSoftwareSuiteProperty where
  type PropertyType "Name" SimulationSoftwareSuiteProperty = Value Prelude.Text
  set newValue SimulationSoftwareSuiteProperty {..}
    = SimulationSoftwareSuiteProperty {name = newValue, ..}
instance Property "Version" SimulationSoftwareSuiteProperty where
  type PropertyType "Version" SimulationSoftwareSuiteProperty = Value Prelude.Text
  set newValue SimulationSoftwareSuiteProperty {..}
    = SimulationSoftwareSuiteProperty
        {version = Prelude.pure newValue, ..}