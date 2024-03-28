module Stratosphere.EMRServerless.Application.MonitoringConfigurationProperty (
        module Exports, MonitoringConfigurationProperty(..),
        mkMonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.CloudWatchLoggingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.ManagedPersistenceMonitoringConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMRServerless.Application.S3MonitoringConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data MonitoringConfigurationProperty
  = MonitoringConfigurationProperty {cloudWatchLoggingConfiguration :: (Prelude.Maybe CloudWatchLoggingConfigurationProperty),
                                     managedPersistenceMonitoringConfiguration :: (Prelude.Maybe ManagedPersistenceMonitoringConfigurationProperty),
                                     s3MonitoringConfiguration :: (Prelude.Maybe S3MonitoringConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringConfigurationProperty ::
  MonitoringConfigurationProperty
mkMonitoringConfigurationProperty
  = MonitoringConfigurationProperty
      {cloudWatchLoggingConfiguration = Prelude.Nothing,
       managedPersistenceMonitoringConfiguration = Prelude.Nothing,
       s3MonitoringConfiguration = Prelude.Nothing}
instance ToResourceProperties MonitoringConfigurationProperty where
  toResourceProperties MonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMRServerless::Application.MonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLoggingConfiguration"
                              Prelude.<$> cloudWatchLoggingConfiguration,
                            (JSON..=) "ManagedPersistenceMonitoringConfiguration"
                              Prelude.<$> managedPersistenceMonitoringConfiguration,
                            (JSON..=) "S3MonitoringConfiguration"
                              Prelude.<$> s3MonitoringConfiguration])}
instance JSON.ToJSON MonitoringConfigurationProperty where
  toJSON MonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLoggingConfiguration"
                 Prelude.<$> cloudWatchLoggingConfiguration,
               (JSON..=) "ManagedPersistenceMonitoringConfiguration"
                 Prelude.<$> managedPersistenceMonitoringConfiguration,
               (JSON..=) "S3MonitoringConfiguration"
                 Prelude.<$> s3MonitoringConfiguration]))
instance Property "CloudWatchLoggingConfiguration" MonitoringConfigurationProperty where
  type PropertyType "CloudWatchLoggingConfiguration" MonitoringConfigurationProperty = CloudWatchLoggingConfigurationProperty
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {cloudWatchLoggingConfiguration = Prelude.pure newValue, ..}
instance Property "ManagedPersistenceMonitoringConfiguration" MonitoringConfigurationProperty where
  type PropertyType "ManagedPersistenceMonitoringConfiguration" MonitoringConfigurationProperty = ManagedPersistenceMonitoringConfigurationProperty
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {managedPersistenceMonitoringConfiguration = Prelude.pure newValue,
         ..}
instance Property "S3MonitoringConfiguration" MonitoringConfigurationProperty where
  type PropertyType "S3MonitoringConfiguration" MonitoringConfigurationProperty = S3MonitoringConfigurationProperty
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {s3MonitoringConfiguration = Prelude.pure newValue, ..}