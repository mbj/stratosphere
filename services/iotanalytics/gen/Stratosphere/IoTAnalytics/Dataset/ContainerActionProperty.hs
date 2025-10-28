module Stratosphere.IoTAnalytics.Dataset.ContainerActionProperty (
        module Exports, ContainerActionProperty(..),
        mkContainerActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.ResourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.VariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html>
    ContainerActionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-executionrolearn>
                             executionRoleArn :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-image>
                             image :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-resourceconfiguration>
                             resourceConfiguration :: ResourceConfigurationProperty,
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-containeraction.html#cfn-iotanalytics-dataset-containeraction-variables>
                             variables :: (Prelude.Maybe [VariableProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ResourceConfigurationProperty -> ContainerActionProperty
mkContainerActionProperty
  executionRoleArn
  image
  resourceConfiguration
  = ContainerActionProperty
      {haddock_workaround_ = (), executionRoleArn = executionRoleArn,
       image = image, resourceConfiguration = resourceConfiguration,
       variables = Prelude.Nothing}
instance ToResourceProperties ContainerActionProperty where
  toResourceProperties ContainerActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.ContainerAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ExecutionRoleArn" JSON..= executionRoleArn,
                            "Image" JSON..= image,
                            "ResourceConfiguration" JSON..= resourceConfiguration]
                           (Prelude.catMaybes [(JSON..=) "Variables" Prelude.<$> variables]))}
instance JSON.ToJSON ContainerActionProperty where
  toJSON ContainerActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ExecutionRoleArn" JSON..= executionRoleArn,
               "Image" JSON..= image,
               "ResourceConfiguration" JSON..= resourceConfiguration]
              (Prelude.catMaybes [(JSON..=) "Variables" Prelude.<$> variables])))
instance Property "ExecutionRoleArn" ContainerActionProperty where
  type PropertyType "ExecutionRoleArn" ContainerActionProperty = Value Prelude.Text
  set newValue ContainerActionProperty {..}
    = ContainerActionProperty {executionRoleArn = newValue, ..}
instance Property "Image" ContainerActionProperty where
  type PropertyType "Image" ContainerActionProperty = Value Prelude.Text
  set newValue ContainerActionProperty {..}
    = ContainerActionProperty {image = newValue, ..}
instance Property "ResourceConfiguration" ContainerActionProperty where
  type PropertyType "ResourceConfiguration" ContainerActionProperty = ResourceConfigurationProperty
  set newValue ContainerActionProperty {..}
    = ContainerActionProperty {resourceConfiguration = newValue, ..}
instance Property "Variables" ContainerActionProperty where
  type PropertyType "Variables" ContainerActionProperty = [VariableProperty]
  set newValue ContainerActionProperty {..}
    = ContainerActionProperty {variables = Prelude.pure newValue, ..}