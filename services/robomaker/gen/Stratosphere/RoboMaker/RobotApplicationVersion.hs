module Stratosphere.RoboMaker.RobotApplicationVersion (
        RobotApplicationVersion(..), mkRobotApplicationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RobotApplicationVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html>
    RobotApplicationVersion {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-application>
                             application :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robotapplicationversion.html#cfn-robomaker-robotapplicationversion-currentrevisionid>
                             currentRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRobotApplicationVersion ::
  Value Prelude.Text -> RobotApplicationVersion
mkRobotApplicationVersion application
  = RobotApplicationVersion
      {haddock_workaround_ = (), application = application,
       currentRevisionId = Prelude.Nothing}
instance ToResourceProperties RobotApplicationVersion where
  toResourceProperties RobotApplicationVersion {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::RobotApplicationVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Application" JSON..= application]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId]))}
instance JSON.ToJSON RobotApplicationVersion where
  toJSON RobotApplicationVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Application" JSON..= application]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentRevisionId" Prelude.<$> currentRevisionId])))
instance Property "Application" RobotApplicationVersion where
  type PropertyType "Application" RobotApplicationVersion = Value Prelude.Text
  set newValue RobotApplicationVersion {..}
    = RobotApplicationVersion {application = newValue, ..}
instance Property "CurrentRevisionId" RobotApplicationVersion where
  type PropertyType "CurrentRevisionId" RobotApplicationVersion = Value Prelude.Text
  set newValue RobotApplicationVersion {..}
    = RobotApplicationVersion
        {currentRevisionId = Prelude.pure newValue, ..}