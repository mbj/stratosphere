module Stratosphere.RoboMaker.RobotApplicationVersion (
        RobotApplicationVersion(..), mkRobotApplicationVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RobotApplicationVersion
  = RobotApplicationVersion {application :: (Value Prelude.Text),
                             currentRevisionId :: (Prelude.Maybe (Value Prelude.Text))}
mkRobotApplicationVersion ::
  Value Prelude.Text -> RobotApplicationVersion
mkRobotApplicationVersion application
  = RobotApplicationVersion
      {application = application, currentRevisionId = Prelude.Nothing}
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