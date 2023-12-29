module Stratosphere.SSM.MaintenanceWindowTask.CloudWatchOutputConfigProperty (
        CloudWatchOutputConfigProperty(..),
        mkCloudWatchOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchOutputConfigProperty
  = CloudWatchOutputConfigProperty {cloudWatchLogGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                                    cloudWatchOutputEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchOutputConfigProperty :: CloudWatchOutputConfigProperty
mkCloudWatchOutputConfigProperty
  = CloudWatchOutputConfigProperty
      {cloudWatchLogGroupName = Prelude.Nothing,
       cloudWatchOutputEnabled = Prelude.Nothing}
instance ToResourceProperties CloudWatchOutputConfigProperty where
  toResourceProperties CloudWatchOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.CloudWatchOutputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogGroupName"
                              Prelude.<$> cloudWatchLogGroupName,
                            (JSON..=) "CloudWatchOutputEnabled"
                              Prelude.<$> cloudWatchOutputEnabled])}
instance JSON.ToJSON CloudWatchOutputConfigProperty where
  toJSON CloudWatchOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogGroupName"
                 Prelude.<$> cloudWatchLogGroupName,
               (JSON..=) "CloudWatchOutputEnabled"
                 Prelude.<$> cloudWatchOutputEnabled]))
instance Property "CloudWatchLogGroupName" CloudWatchOutputConfigProperty where
  type PropertyType "CloudWatchLogGroupName" CloudWatchOutputConfigProperty = Value Prelude.Text
  set newValue CloudWatchOutputConfigProperty {..}
    = CloudWatchOutputConfigProperty
        {cloudWatchLogGroupName = Prelude.pure newValue, ..}
instance Property "CloudWatchOutputEnabled" CloudWatchOutputConfigProperty where
  type PropertyType "CloudWatchOutputEnabled" CloudWatchOutputConfigProperty = Value Prelude.Bool
  set newValue CloudWatchOutputConfigProperty {..}
    = CloudWatchOutputConfigProperty
        {cloudWatchOutputEnabled = Prelude.pure newValue, ..}