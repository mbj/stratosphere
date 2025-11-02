module Stratosphere.GameLift.ContainerFleet.LogConfigurationProperty (
        LogConfigurationProperty(..), mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-logconfiguration.html>
    LogConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-logconfiguration.html#cfn-gamelift-containerfleet-logconfiguration-logdestination>
                              logDestination :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containerfleet-logconfiguration.html#cfn-gamelift-containerfleet-logconfiguration-s3bucketname>
                              s3BucketName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {haddock_workaround_ = (), logDestination = Prelude.Nothing,
       s3BucketName = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LogDestination" Prelude.<$> logDestination,
                            (JSON..=) "S3BucketName" Prelude.<$> s3BucketName])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LogDestination" Prelude.<$> logDestination,
               (JSON..=) "S3BucketName" Prelude.<$> s3BucketName]))
instance Property "LogDestination" LogConfigurationProperty where
  type PropertyType "LogDestination" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {logDestination = Prelude.pure newValue, ..}
instance Property "S3BucketName" LogConfigurationProperty where
  type PropertyType "S3BucketName" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {s3BucketName = Prelude.pure newValue, ..}