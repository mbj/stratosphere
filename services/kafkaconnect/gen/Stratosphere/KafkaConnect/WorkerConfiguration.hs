module Stratosphere.KafkaConnect.WorkerConfiguration (
        WorkerConfiguration(..), mkWorkerConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WorkerConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-workerconfiguration.html>
    WorkerConfiguration {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-workerconfiguration.html#cfn-kafkaconnect-workerconfiguration-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-workerconfiguration.html#cfn-kafkaconnect-workerconfiguration-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-workerconfiguration.html#cfn-kafkaconnect-workerconfiguration-propertiesfilecontent>
                         propertiesFileContent :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kafkaconnect-workerconfiguration.html#cfn-kafkaconnect-workerconfiguration-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkerConfiguration ::
  Value Prelude.Text -> Value Prelude.Text -> WorkerConfiguration
mkWorkerConfiguration name propertiesFileContent
  = WorkerConfiguration
      {haddock_workaround_ = (), name = name,
       propertiesFileContent = propertiesFileContent,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties WorkerConfiguration where
  toResourceProperties WorkerConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::WorkerConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "PropertiesFileContent" JSON..= propertiesFileContent]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON WorkerConfiguration where
  toJSON WorkerConfiguration {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "PropertiesFileContent" JSON..= propertiesFileContent]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" WorkerConfiguration where
  type PropertyType "Description" WorkerConfiguration = Value Prelude.Text
  set newValue WorkerConfiguration {..}
    = WorkerConfiguration {description = Prelude.pure newValue, ..}
instance Property "Name" WorkerConfiguration where
  type PropertyType "Name" WorkerConfiguration = Value Prelude.Text
  set newValue WorkerConfiguration {..}
    = WorkerConfiguration {name = newValue, ..}
instance Property "PropertiesFileContent" WorkerConfiguration where
  type PropertyType "PropertiesFileContent" WorkerConfiguration = Value Prelude.Text
  set newValue WorkerConfiguration {..}
    = WorkerConfiguration {propertiesFileContent = newValue, ..}
instance Property "Tags" WorkerConfiguration where
  type PropertyType "Tags" WorkerConfiguration = [Tag]
  set newValue WorkerConfiguration {..}
    = WorkerConfiguration {tags = Prelude.pure newValue, ..}