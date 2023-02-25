module Stratosphere.RoboMaker.SimulationApplication (
        module Exports, SimulationApplication(..), mkSimulationApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RoboMaker.SimulationApplication.RenderingEngineProperty as Exports
import {-# SOURCE #-} Stratosphere.RoboMaker.SimulationApplication.RobotSoftwareSuiteProperty as Exports
import {-# SOURCE #-} Stratosphere.RoboMaker.SimulationApplication.SimulationSoftwareSuiteProperty as Exports
import {-# SOURCE #-} Stratosphere.RoboMaker.SimulationApplication.SourceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimulationApplication
  = SimulationApplication {currentRevisionId :: (Prelude.Maybe (Value Prelude.Text)),
                           environment :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           renderingEngine :: (Prelude.Maybe RenderingEngineProperty),
                           robotSoftwareSuite :: RobotSoftwareSuiteProperty,
                           simulationSoftwareSuite :: SimulationSoftwareSuiteProperty,
                           sources :: (Prelude.Maybe [SourceConfigProperty]),
                           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkSimulationApplication ::
  RobotSoftwareSuiteProperty
  -> SimulationSoftwareSuiteProperty -> SimulationApplication
mkSimulationApplication robotSoftwareSuite simulationSoftwareSuite
  = SimulationApplication
      {robotSoftwareSuite = robotSoftwareSuite,
       simulationSoftwareSuite = simulationSoftwareSuite,
       currentRevisionId = Prelude.Nothing, environment = Prelude.Nothing,
       name = Prelude.Nothing, renderingEngine = Prelude.Nothing,
       sources = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties SimulationApplication where
  toResourceProperties SimulationApplication {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RobotSoftwareSuite" JSON..= robotSoftwareSuite,
                            "SimulationSoftwareSuite" JSON..= simulationSoftwareSuite]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "RenderingEngine" Prelude.<$> renderingEngine,
                               (JSON..=) "Sources" Prelude.<$> sources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SimulationApplication where
  toJSON SimulationApplication {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RobotSoftwareSuite" JSON..= robotSoftwareSuite,
               "SimulationSoftwareSuite" JSON..= simulationSoftwareSuite]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "RenderingEngine" Prelude.<$> renderingEngine,
                  (JSON..=) "Sources" Prelude.<$> sources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CurrentRevisionId" SimulationApplication where
  type PropertyType "CurrentRevisionId" SimulationApplication = Value Prelude.Text
  set newValue SimulationApplication {..}
    = SimulationApplication
        {currentRevisionId = Prelude.pure newValue, ..}
instance Property "Environment" SimulationApplication where
  type PropertyType "Environment" SimulationApplication = Value Prelude.Text
  set newValue SimulationApplication {..}
    = SimulationApplication {environment = Prelude.pure newValue, ..}
instance Property "Name" SimulationApplication where
  type PropertyType "Name" SimulationApplication = Value Prelude.Text
  set newValue SimulationApplication {..}
    = SimulationApplication {name = Prelude.pure newValue, ..}
instance Property "RenderingEngine" SimulationApplication where
  type PropertyType "RenderingEngine" SimulationApplication = RenderingEngineProperty
  set newValue SimulationApplication {..}
    = SimulationApplication
        {renderingEngine = Prelude.pure newValue, ..}
instance Property "RobotSoftwareSuite" SimulationApplication where
  type PropertyType "RobotSoftwareSuite" SimulationApplication = RobotSoftwareSuiteProperty
  set newValue SimulationApplication {..}
    = SimulationApplication {robotSoftwareSuite = newValue, ..}
instance Property "SimulationSoftwareSuite" SimulationApplication where
  type PropertyType "SimulationSoftwareSuite" SimulationApplication = SimulationSoftwareSuiteProperty
  set newValue SimulationApplication {..}
    = SimulationApplication {simulationSoftwareSuite = newValue, ..}
instance Property "Sources" SimulationApplication where
  type PropertyType "Sources" SimulationApplication = [SourceConfigProperty]
  set newValue SimulationApplication {..}
    = SimulationApplication {sources = Prelude.pure newValue, ..}
instance Property "Tags" SimulationApplication where
  type PropertyType "Tags" SimulationApplication = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue SimulationApplication {..}
    = SimulationApplication {tags = Prelude.pure newValue, ..}