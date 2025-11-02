module Stratosphere.RoboMaker.Robot (
        Robot(..), mkRobot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Robot
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html>
    Robot {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-architecture>
           architecture :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-fleet>
           fleet :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-greengrassgroupid>
           greengrassGroupId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-robomaker-robot.html#cfn-robomaker-robot-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRobot :: Value Prelude.Text -> Value Prelude.Text -> Robot
mkRobot architecture greengrassGroupId
  = Robot
      {haddock_workaround_ = (), architecture = architecture,
       greengrassGroupId = greengrassGroupId, fleet = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Robot where
  toResourceProperties Robot {..}
    = ResourceProperties
        {awsType = "AWS::RoboMaker::Robot", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Architecture" JSON..= architecture,
                            "GreengrassGroupId" JSON..= greengrassGroupId]
                           (Prelude.catMaybes
                              [(JSON..=) "Fleet" Prelude.<$> fleet,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Robot where
  toJSON Robot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Architecture" JSON..= architecture,
               "GreengrassGroupId" JSON..= greengrassGroupId]
              (Prelude.catMaybes
                 [(JSON..=) "Fleet" Prelude.<$> fleet,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Architecture" Robot where
  type PropertyType "Architecture" Robot = Value Prelude.Text
  set newValue Robot {..} = Robot {architecture = newValue, ..}
instance Property "Fleet" Robot where
  type PropertyType "Fleet" Robot = Value Prelude.Text
  set newValue Robot {..} = Robot {fleet = Prelude.pure newValue, ..}
instance Property "GreengrassGroupId" Robot where
  type PropertyType "GreengrassGroupId" Robot = Value Prelude.Text
  set newValue Robot {..} = Robot {greengrassGroupId = newValue, ..}
instance Property "Name" Robot where
  type PropertyType "Name" Robot = Value Prelude.Text
  set newValue Robot {..} = Robot {name = Prelude.pure newValue, ..}
instance Property "Tags" Robot where
  type PropertyType "Tags" Robot = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Robot {..} = Robot {tags = Prelude.pure newValue, ..}