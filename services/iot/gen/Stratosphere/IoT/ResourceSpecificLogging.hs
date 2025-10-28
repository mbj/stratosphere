module Stratosphere.IoT.ResourceSpecificLogging (
        ResourceSpecificLogging(..), mkResourceSpecificLogging
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceSpecificLogging
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-resourcespecificlogging.html>
    ResourceSpecificLogging {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-resourcespecificlogging.html#cfn-iot-resourcespecificlogging-loglevel>
                             logLevel :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-resourcespecificlogging.html#cfn-iot-resourcespecificlogging-targetname>
                             targetName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-resourcespecificlogging.html#cfn-iot-resourcespecificlogging-targettype>
                             targetType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceSpecificLogging ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ResourceSpecificLogging
mkResourceSpecificLogging logLevel targetName targetType
  = ResourceSpecificLogging
      {haddock_workaround_ = (), logLevel = logLevel,
       targetName = targetName, targetType = targetType}
instance ToResourceProperties ResourceSpecificLogging where
  toResourceProperties ResourceSpecificLogging {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ResourceSpecificLogging",
         supportsTags = Prelude.False,
         properties = ["LogLevel" JSON..= logLevel,
                       "TargetName" JSON..= targetName, "TargetType" JSON..= targetType]}
instance JSON.ToJSON ResourceSpecificLogging where
  toJSON ResourceSpecificLogging {..}
    = JSON.object
        ["LogLevel" JSON..= logLevel, "TargetName" JSON..= targetName,
         "TargetType" JSON..= targetType]
instance Property "LogLevel" ResourceSpecificLogging where
  type PropertyType "LogLevel" ResourceSpecificLogging = Value Prelude.Text
  set newValue ResourceSpecificLogging {..}
    = ResourceSpecificLogging {logLevel = newValue, ..}
instance Property "TargetName" ResourceSpecificLogging where
  type PropertyType "TargetName" ResourceSpecificLogging = Value Prelude.Text
  set newValue ResourceSpecificLogging {..}
    = ResourceSpecificLogging {targetName = newValue, ..}
instance Property "TargetType" ResourceSpecificLogging where
  type PropertyType "TargetType" ResourceSpecificLogging = Value Prelude.Text
  set newValue ResourceSpecificLogging {..}
    = ResourceSpecificLogging {targetType = newValue, ..}