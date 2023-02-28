module Stratosphere.RoboMaker.SimulationApplicationVersion (
        SimulationApplicationVersion(..), mkSimulationApplicationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimulationApplicationVersion
  = SimulationApplicationVersion {application :: (Value Prelude.Text),
                                  currentRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
mkSimulationApplicationVersion ::
  Value Prelude.Text -> SimulationApplicationVersion
mkSimulationApplicationVersion application
  = SimulationApplicationVersion
      {application = application, currentRevisionId = Prelude.Nothing}
instance ToResourceProperties SimulationApplicationVersion where
  toResourceProperties SimulationApplicationVersion {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplicationVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Application" JSON..= application]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId]))}
instance JSON.ToJSON SimulationApplicationVersion where
  toJSON SimulationApplicationVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Application" JSON..= application]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId])))
instance Property "Application" SimulationApplicationVersion where
  type PropertyType "Application" SimulationApplicationVersion = Value Prelude.Text
  set newValue SimulationApplicationVersion {..}
    = SimulationApplicationVersion {application = newValue, ..}
instance Property "CurrentRevisionId" SimulationApplicationVersion where
  type PropertyType "CurrentRevisionId" SimulationApplicationVersion = Value Prelude.Text
  set newValue SimulationApplicationVersion {..}
    = SimulationApplicationVersion
        {currentRevisionId = Prelude.pure newValue, ..}