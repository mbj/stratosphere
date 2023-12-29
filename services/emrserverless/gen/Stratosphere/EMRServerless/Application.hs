module Stratosphere.EMRServerless.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.AutoStartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.AutoStopConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.ImageConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.InitialCapacityConfigKeyValuePairProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.MaximumAllowedResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.WorkerTypeSpecificationInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {architecture :: (Prelude.Maybe (Value Prelude.Text)),
                 autoStartConfiguration :: (Prelude.Maybe AutoStartConfigurationProperty),
                 autoStopConfiguration :: (Prelude.Maybe AutoStopConfigurationProperty),
                 imageConfiguration :: (Prelude.Maybe ImageConfigurationInputProperty),
                 initialCapacity :: (Prelude.Maybe [InitialCapacityConfigKeyValuePairProperty]),
                 maximumCapacity :: (Prelude.Maybe MaximumAllowedResourcesProperty),
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                 releaseLabel :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag]),
                 type' :: (Value Prelude.Text),
                 workerTypeSpecifications :: (Prelude.Maybe (Prelude.Map Prelude.Text WorkerTypeSpecificationInputProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication releaseLabel type'
  = Application
      {releaseLabel = releaseLabel, type' = type',
       architecture = Prelude.Nothing,
       autoStartConfiguration = Prelude.Nothing,
       autoStopConfiguration = Prelude.Nothing,
       imageConfiguration = Prelude.Nothing,
       initialCapacity = Prelude.Nothing,
       maximumCapacity = Prelude.Nothing, name = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
       workerTypeSpecifications = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReleaseLabel" JSON..= releaseLabel, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Architecture" Prelude.<$> architecture,
                               (JSON..=) "AutoStartConfiguration"
                                 Prelude.<$> autoStartConfiguration,
                               (JSON..=) "AutoStopConfiguration"
                                 Prelude.<$> autoStopConfiguration,
                               (JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                               (JSON..=) "InitialCapacity" Prelude.<$> initialCapacity,
                               (JSON..=) "MaximumCapacity" Prelude.<$> maximumCapacity,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkerTypeSpecifications"
                                 Prelude.<$> workerTypeSpecifications]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReleaseLabel" JSON..= releaseLabel, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Architecture" Prelude.<$> architecture,
                  (JSON..=) "AutoStartConfiguration"
                    Prelude.<$> autoStartConfiguration,
                  (JSON..=) "AutoStopConfiguration"
                    Prelude.<$> autoStopConfiguration,
                  (JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                  (JSON..=) "InitialCapacity" Prelude.<$> initialCapacity,
                  (JSON..=) "MaximumCapacity" Prelude.<$> maximumCapacity,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkerTypeSpecifications"
                    Prelude.<$> workerTypeSpecifications])))
instance Property "Architecture" Application where
  type PropertyType "Architecture" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {architecture = Prelude.pure newValue, ..}
instance Property "AutoStartConfiguration" Application where
  type PropertyType "AutoStartConfiguration" Application = AutoStartConfigurationProperty
  set newValue Application {..}
    = Application {autoStartConfiguration = Prelude.pure newValue, ..}
instance Property "AutoStopConfiguration" Application where
  type PropertyType "AutoStopConfiguration" Application = AutoStopConfigurationProperty
  set newValue Application {..}
    = Application {autoStopConfiguration = Prelude.pure newValue, ..}
instance Property "ImageConfiguration" Application where
  type PropertyType "ImageConfiguration" Application = ImageConfigurationInputProperty
  set newValue Application {..}
    = Application {imageConfiguration = Prelude.pure newValue, ..}
instance Property "InitialCapacity" Application where
  type PropertyType "InitialCapacity" Application = [InitialCapacityConfigKeyValuePairProperty]
  set newValue Application {..}
    = Application {initialCapacity = Prelude.pure newValue, ..}
instance Property "MaximumCapacity" Application where
  type PropertyType "MaximumCapacity" Application = MaximumAllowedResourcesProperty
  set newValue Application {..}
    = Application {maximumCapacity = Prelude.pure newValue, ..}
instance Property "Name" Application where
  type PropertyType "Name" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {name = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" Application where
  type PropertyType "NetworkConfiguration" Application = NetworkConfigurationProperty
  set newValue Application {..}
    = Application {networkConfiguration = Prelude.pure newValue, ..}
instance Property "ReleaseLabel" Application where
  type PropertyType "ReleaseLabel" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {releaseLabel = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}
instance Property "Type" Application where
  type PropertyType "Type" Application = Value Prelude.Text
  set newValue Application {..} = Application {type' = newValue, ..}
instance Property "WorkerTypeSpecifications" Application where
  type PropertyType "WorkerTypeSpecifications" Application = Prelude.Map Prelude.Text WorkerTypeSpecificationInputProperty
  set newValue Application {..}
    = Application
        {workerTypeSpecifications = Prelude.pure newValue, ..}