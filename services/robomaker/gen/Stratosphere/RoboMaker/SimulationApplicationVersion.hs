module Stratosphere.RoboMaker.SimulationApplicationVersion (
        SimulationApplicationVersion(..), mkSimulationApplicationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimulationApplicationVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html>
    SimulationApplicationVersion {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-application>
                                  application :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-simulationapplicationversion.html#cfn-robomaker-simulationapplicationversion-currentrevisionid>
                                  currentRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimulationApplicationVersion ::
  Value Prelude.Text -> SimulationApplicationVersion
mkSimulationApplicationVersion application
  = SimulationApplicationVersion
      {haddock_workaround_ = (), application = application,
       currentRevisionId = Prelude.Nothing}
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