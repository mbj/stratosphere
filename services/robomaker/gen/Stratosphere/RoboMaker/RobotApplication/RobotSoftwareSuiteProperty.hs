module Stratosphere.RoboMaker.RobotApplication.RobotSoftwareSuiteProperty (
        RobotSoftwareSuiteProperty(..), mkRobotSoftwareSuiteProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RobotSoftwareSuiteProperty
  = RobotSoftwareSuiteProperty {name :: (Value Prelude.Text),
                                version :: (Prelude.Maybe (Value Prelude.Text))}
mkRobotSoftwareSuiteProperty ::
  Value Prelude.Text -> RobotSoftwareSuiteProperty
mkRobotSoftwareSuiteProperty name
  = RobotSoftwareSuiteProperty
      {name = name, version = Prelude.Nothing}
instance ToResourceProperties RobotSoftwareSuiteProperty where
  toResourceProperties RobotSoftwareSuiteProperty {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::RobotApplication.RobotSoftwareSuite",
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