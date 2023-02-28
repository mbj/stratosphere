module Stratosphere.GameLift.Fleet.ServerProcessProperty (
        ServerProcessProperty(..), mkServerProcessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerProcessProperty
  = ServerProcessProperty {concurrentExecutions :: (Value Prelude.Integer),
                           launchPath :: (Value Prelude.Text),
                           parameters :: (Prelude.Maybe (Value Prelude.Text))}
mkServerProcessProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> ServerProcessProperty
mkServerProcessProperty concurrentExecutions launchPath
  = ServerProcessProperty
      {concurrentExecutions = concurrentExecutions,
       launchPath = launchPath, parameters = Prelude.Nothing}
instance ToResourceProperties ServerProcessProperty where
  toResourceProperties ServerProcessProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.ServerProcess",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConcurrentExecutions" JSON..= concurrentExecutions,
                            "LaunchPath" JSON..= launchPath]
                           (Prelude.catMaybes
                              [(JSON..=) "Parameters" Prelude.<$> parameters]))}
instance JSON.ToJSON ServerProcessProperty where
  toJSON ServerProcessProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConcurrentExecutions" JSON..= concurrentExecutions,
               "LaunchPath" JSON..= launchPath]
              (Prelude.catMaybes
                 [(JSON..=) "Parameters" Prelude.<$> parameters])))
instance Property "ConcurrentExecutions" ServerProcessProperty where
  type PropertyType "ConcurrentExecutions" ServerProcessProperty = Value Prelude.Integer
  set newValue ServerProcessProperty {..}
    = ServerProcessProperty {concurrentExecutions = newValue, ..}
instance Property "LaunchPath" ServerProcessProperty where
  type PropertyType "LaunchPath" ServerProcessProperty = Value Prelude.Text
  set newValue ServerProcessProperty {..}
    = ServerProcessProperty {launchPath = newValue, ..}
instance Property "Parameters" ServerProcessProperty where
  type PropertyType "Parameters" ServerProcessProperty = Value Prelude.Text
  set newValue ServerProcessProperty {..}
    = ServerProcessProperty {parameters = Prelude.pure newValue, ..}