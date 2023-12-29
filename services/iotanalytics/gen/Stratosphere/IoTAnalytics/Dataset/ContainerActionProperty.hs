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
  = ContainerActionProperty {executionRoleArn :: (Value Prelude.Text),
                             image :: (Value Prelude.Text),
                             resourceConfiguration :: ResourceConfigurationProperty,
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
      {executionRoleArn = executionRoleArn, image = image,
       resourceConfiguration = resourceConfiguration,
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