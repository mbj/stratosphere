module Stratosphere.EMRServerless.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.AutoStartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.AutoStopConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.ConfigurationObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.IdentityCenterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.ImageConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.InitialCapacityConfigKeyValuePairProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.InteractiveConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.MaximumAllowedResourcesProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.MonitoringConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.SchedulerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.WorkerTypeSpecificationInputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-architecture>
                 architecture :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-autostartconfiguration>
                 autoStartConfiguration :: (Prelude.Maybe AutoStartConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-autostopconfiguration>
                 autoStopConfiguration :: (Prelude.Maybe AutoStopConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-identitycenterconfiguration>
                 identityCenterConfiguration :: (Prelude.Maybe IdentityCenterConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-imageconfiguration>
                 imageConfiguration :: (Prelude.Maybe ImageConfigurationInputProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-initialcapacity>
                 initialCapacity :: (Prelude.Maybe [InitialCapacityConfigKeyValuePairProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-interactiveconfiguration>
                 interactiveConfiguration :: (Prelude.Maybe InteractiveConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-maximumcapacity>
                 maximumCapacity :: (Prelude.Maybe MaximumAllowedResourcesProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-monitoringconfiguration>
                 monitoringConfiguration :: (Prelude.Maybe MonitoringConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-name>
                 name :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-networkconfiguration>
                 networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-releaselabel>
                 releaseLabel :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-runtimeconfiguration>
                 runtimeConfiguration :: (Prelude.Maybe [ConfigurationObjectProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-schedulerconfiguration>
                 schedulerConfiguration :: (Prelude.Maybe SchedulerConfigurationProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-type>
                 type' :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-emrserverless-application.html#cfn-emrserverless-application-workertypespecifications>
                 workerTypeSpecifications :: (Prelude.Maybe (Prelude.Map Prelude.Text WorkerTypeSpecificationInputProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication releaseLabel type'
  = Application
      {haddock_workaround_ = (), releaseLabel = releaseLabel,
       type' = type', architecture = Prelude.Nothing,
       autoStartConfiguration = Prelude.Nothing,
       autoStopConfiguration = Prelude.Nothing,
       identityCenterConfiguration = Prelude.Nothing,
       imageConfiguration = Prelude.Nothing,
       initialCapacity = Prelude.Nothing,
       interactiveConfiguration = Prelude.Nothing,
       maximumCapacity = Prelude.Nothing,
       monitoringConfiguration = Prelude.Nothing, name = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       runtimeConfiguration = Prelude.Nothing,
       schedulerConfiguration = Prelude.Nothing, tags = Prelude.Nothing,
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
                               (JSON..=) "IdentityCenterConfiguration"
                                 Prelude.<$> identityCenterConfiguration,
                               (JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                               (JSON..=) "InitialCapacity" Prelude.<$> initialCapacity,
                               (JSON..=) "InteractiveConfiguration"
                                 Prelude.<$> interactiveConfiguration,
                               (JSON..=) "MaximumCapacity" Prelude.<$> maximumCapacity,
                               (JSON..=) "MonitoringConfiguration"
                                 Prelude.<$> monitoringConfiguration,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "RuntimeConfiguration" Prelude.<$> runtimeConfiguration,
                               (JSON..=) "SchedulerConfiguration"
                                 Prelude.<$> schedulerConfiguration,
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
                  (JSON..=) "IdentityCenterConfiguration"
                    Prelude.<$> identityCenterConfiguration,
                  (JSON..=) "ImageConfiguration" Prelude.<$> imageConfiguration,
                  (JSON..=) "InitialCapacity" Prelude.<$> initialCapacity,
                  (JSON..=) "InteractiveConfiguration"
                    Prelude.<$> interactiveConfiguration,
                  (JSON..=) "MaximumCapacity" Prelude.<$> maximumCapacity,
                  (JSON..=) "MonitoringConfiguration"
                    Prelude.<$> monitoringConfiguration,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "RuntimeConfiguration" Prelude.<$> runtimeConfiguration,
                  (JSON..=) "SchedulerConfiguration"
                    Prelude.<$> schedulerConfiguration,
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
instance Property "IdentityCenterConfiguration" Application where
  type PropertyType "IdentityCenterConfiguration" Application = IdentityCenterConfigurationProperty
  set newValue Application {..}
    = Application
        {identityCenterConfiguration = Prelude.pure newValue, ..}
instance Property "ImageConfiguration" Application where
  type PropertyType "ImageConfiguration" Application = ImageConfigurationInputProperty
  set newValue Application {..}
    = Application {imageConfiguration = Prelude.pure newValue, ..}
instance Property "InitialCapacity" Application where
  type PropertyType "InitialCapacity" Application = [InitialCapacityConfigKeyValuePairProperty]
  set newValue Application {..}
    = Application {initialCapacity = Prelude.pure newValue, ..}
instance Property "InteractiveConfiguration" Application where
  type PropertyType "InteractiveConfiguration" Application = InteractiveConfigurationProperty
  set newValue Application {..}
    = Application
        {interactiveConfiguration = Prelude.pure newValue, ..}
instance Property "MaximumCapacity" Application where
  type PropertyType "MaximumCapacity" Application = MaximumAllowedResourcesProperty
  set newValue Application {..}
    = Application {maximumCapacity = Prelude.pure newValue, ..}
instance Property "MonitoringConfiguration" Application where
  type PropertyType "MonitoringConfiguration" Application = MonitoringConfigurationProperty
  set newValue Application {..}
    = Application {monitoringConfiguration = Prelude.pure newValue, ..}
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
instance Property "RuntimeConfiguration" Application where
  type PropertyType "RuntimeConfiguration" Application = [ConfigurationObjectProperty]
  set newValue Application {..}
    = Application {runtimeConfiguration = Prelude.pure newValue, ..}
instance Property "SchedulerConfiguration" Application where
  type PropertyType "SchedulerConfiguration" Application = SchedulerConfigurationProperty
  set newValue Application {..}
    = Application {schedulerConfiguration = Prelude.pure newValue, ..}
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