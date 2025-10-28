module Stratosphere.RoboMaker.SimulationApplication.RobotSoftwareSuiteProperty (
        RobotSoftwareSuiteProperty(..), mkRobotSoftwareSuiteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RobotSoftwareSuiteProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html>
    RobotSoftwareSuiteProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-name>
                                name :: (Value Prelude.Text),
                                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-robomaker-simulationapplication-robotsoftwaresuite.html#cfn-robomaker-simulationapplication-robotsoftwaresuite-version>
                                version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRobotSoftwareSuiteProperty ::
  Value Prelude.Text -> RobotSoftwareSuiteProperty
mkRobotSoftwareSuiteProperty name
  = RobotSoftwareSuiteProperty
      {name = name, version = Prelude.Nothing}
instance ToResourceProperties RobotSoftwareSuiteProperty where
  toResourceProperties RobotSoftwareSuiteProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::SimulationApplication.RobotSoftwareSuite",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON RobotSoftwareSuiteProperty where
  toJSON RobotSoftwareSuiteProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])))
instance Property "Name" RobotSoftwareSuiteProperty where
  type PropertyType "Name" RobotSoftwareSuiteProperty = Value Prelude.Text
  set newValue RobotSoftwareSuiteProperty {..}
    = RobotSoftwareSuiteProperty {name = newValue, ..}
instance Property "Version" RobotSoftwareSuiteProperty where
  type PropertyType "Version" RobotSoftwareSuiteProperty = Value Prelude.Text
  set newValue RobotSoftwareSuiteProperty {..}
    = RobotSoftwareSuiteProperty {version = Prelude.pure newValue, ..}