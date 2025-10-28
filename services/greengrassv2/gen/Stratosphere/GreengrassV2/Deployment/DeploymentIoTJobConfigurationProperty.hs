module Stratosphere.GreengrassV2.Deployment.DeploymentIoTJobConfigurationProperty (
        module Exports, DeploymentIoTJobConfigurationProperty(..),
        mkDeploymentIoTJobConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobAbortConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobExecutionsRolloutConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.GreengrassV2.Deployment.IoTJobTimeoutConfigProperty as Exports
import Stratosphere.ResourceProperties
data DeploymentIoTJobConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentiotjobconfiguration.html>
    DeploymentIoTJobConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentiotjobconfiguration.html#cfn-greengrassv2-deployment-deploymentiotjobconfiguration-abortconfig>
                                           abortConfig :: (Prelude.Maybe IoTJobAbortConfigProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentiotjobconfiguration.html#cfn-greengrassv2-deployment-deploymentiotjobconfiguration-jobexecutionsrolloutconfig>
                                           jobExecutionsRolloutConfig :: (Prelude.Maybe IoTJobExecutionsRolloutConfigProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-greengrassv2-deployment-deploymentiotjobconfiguration.html#cfn-greengrassv2-deployment-deploymentiotjobconfiguration-timeoutconfig>
                                           timeoutConfig :: (Prelude.Maybe IoTJobTimeoutConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeploymentIoTJobConfigurationProperty ::
  DeploymentIoTJobConfigurationProperty
mkDeploymentIoTJobConfigurationProperty
  = DeploymentIoTJobConfigurationProperty
      {haddock_workaround_ = (), abortConfig = Prelude.Nothing,
       jobExecutionsRolloutConfig = Prelude.Nothing,
       timeoutConfig = Prelude.Nothing}
instance ToResourceProperties DeploymentIoTJobConfigurationProperty where
  toResourceProperties DeploymentIoTJobConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GreengrassV2::Deployment.DeploymentIoTJobConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AbortConfig" Prelude.<$> abortConfig,
                            (JSON..=) "JobExecutionsRolloutConfig"
                              Prelude.<$> jobExecutionsRolloutConfig,
                            (JSON..=) "TimeoutConfig" Prelude.<$> timeoutConfig])}
instance JSON.ToJSON DeploymentIoTJobConfigurationProperty where
  toJSON DeploymentIoTJobConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AbortConfig" Prelude.<$> abortConfig,
               (JSON..=) "JobExecutionsRolloutConfig"
                 Prelude.<$> jobExecutionsRolloutConfig,
               (JSON..=) "TimeoutConfig" Prelude.<$> timeoutConfig]))
instance Property "AbortConfig" DeploymentIoTJobConfigurationProperty where
  type PropertyType "AbortConfig" DeploymentIoTJobConfigurationProperty = IoTJobAbortConfigProperty
  set newValue DeploymentIoTJobConfigurationProperty {..}
    = DeploymentIoTJobConfigurationProperty
        {abortConfig = Prelude.pure newValue, ..}
instance Property "JobExecutionsRolloutConfig" DeploymentIoTJobConfigurationProperty where
  type PropertyType "JobExecutionsRolloutConfig" DeploymentIoTJobConfigurationProperty = IoTJobExecutionsRolloutConfigProperty
  set newValue DeploymentIoTJobConfigurationProperty {..}
    = DeploymentIoTJobConfigurationProperty
        {jobExecutionsRolloutConfig = Prelude.pure newValue, ..}
instance Property "TimeoutConfig" DeploymentIoTJobConfigurationProperty where
  type PropertyType "TimeoutConfig" DeploymentIoTJobConfigurationProperty = IoTJobTimeoutConfigProperty
  set newValue DeploymentIoTJobConfigurationProperty {..}
    = DeploymentIoTJobConfigurationProperty
        {timeoutConfig = Prelude.pure newValue, ..}