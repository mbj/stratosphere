module Stratosphere.RoboMaker.RobotApplication (
        module Exports, RobotApplication(..), mkRobotApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RoboMaker.RobotApplication.RobotSoftwareSuiteProperty as Exports
import {-# SOURCE #-} Stratosphere.RoboMaker.RobotApplication.SourceConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RobotApplication
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html>
    RobotApplication {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-currentrevisionid>
                      currentRevisionId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-environment>
                      environment :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-robotsoftwaresuite>
                      robotSoftwareSuite :: RobotSoftwareSuiteProperty,
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-sources>
                      sources :: (Prelude.Maybe [SourceConfigProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplication.html#cfn-robomaker-robotapplication-tags>
                      tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRobotApplication ::
  RobotSoftwareSuiteProperty -> RobotApplication
mkRobotApplication robotSoftwareSuite
  = RobotApplication
      {robotSoftwareSuite = robotSoftwareSuite,
       currentRevisionId = Prelude.Nothing, environment = Prelude.Nothing,
       name = Prelude.Nothing, sources = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties RobotApplication where
  toResourceProperties RobotApplication {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::RobotApplication",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RobotSoftwareSuite" JSON..= robotSoftwareSuite]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Sources" Prelude.<$> sources,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RobotApplication where
  toJSON RobotApplication {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RobotSoftwareSuite" JSON..= robotSoftwareSuite]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Sources" Prelude.<$> sources,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CurrentRevisionId" RobotApplication where
  type PropertyType "CurrentRevisionId" RobotApplication = Value Prelude.Text
  set newValue RobotApplication {..}
    = RobotApplication {currentRevisionId = Prelude.pure newValue, ..}
instance Property "Environment" RobotApplication where
  type PropertyType "Environment" RobotApplication = Value Prelude.Text
  set newValue RobotApplication {..}
    = RobotApplication {environment = Prelude.pure newValue, ..}
instance Property "Name" RobotApplication where
  type PropertyType "Name" RobotApplication = Value Prelude.Text
  set newValue RobotApplication {..}
    = RobotApplication {name = Prelude.pure newValue, ..}
instance Property "RobotSoftwareSuite" RobotApplication where
  type PropertyType "RobotSoftwareSuite" RobotApplication = RobotSoftwareSuiteProperty
  set newValue RobotApplication {..}
    = RobotApplication {robotSoftwareSuite = newValue, ..}
instance Property "Sources" RobotApplication where
  type PropertyType "Sources" RobotApplication = [SourceConfigProperty]
  set newValue RobotApplication {..}
    = RobotApplication {sources = Prelude.pure newValue, ..}
instance Property "Tags" RobotApplication where
  type PropertyType "Tags" RobotApplication = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RobotApplication {..}
    = RobotApplication {tags = Prelude.pure newValue, ..}