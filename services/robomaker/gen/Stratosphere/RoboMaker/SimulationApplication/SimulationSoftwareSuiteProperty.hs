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
  = SimulationSoftwareSuiteProperty {name :: (Value Prelude.Text),
                                     version :: (Prelude.Maybe (Value Prelude.Text))}
mkSimulationSoftwareSuiteProperty ::
  Value Prelude.Text -> SimulationSoftwareSuiteProperty
mkSimulationSoftwareSuiteProperty name
  = SimulationSoftwareSuiteProperty
      {name = name, version = Prelude.Nothing}
instance ToResourceProperties SimulationSoftwareSuiteProperty where
  toResourceProperties SimulationSoftwareSuiteProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication.SimulationSoftwareSuite",
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