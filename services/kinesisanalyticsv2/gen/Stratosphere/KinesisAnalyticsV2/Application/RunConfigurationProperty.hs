module Stratosphere.KinesisAnalyticsV2.Application.RunConfigurationProperty (
        module Exports, RunConfigurationProperty(..),
        mkRunConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ApplicationRestoreConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.FlinkRunConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data RunConfigurationProperty
  = RunConfigurationProperty {applicationRestoreConfiguration :: (Prelude.Maybe ApplicationRestoreConfigurationProperty),
                              flinkRunConfiguration :: (Prelude.Maybe FlinkRunConfigurationProperty)}
mkRunConfigurationProperty :: RunConfigurationProperty
mkRunConfigurationProperty
  = RunConfigurationProperty
      {applicationRestoreConfiguration = Prelude.Nothing,
       flinkRunConfiguration = Prelude.Nothing}
instance ToResourceProperties RunConfigurationProperty where
  toResourceProperties RunConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.RunConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationRestoreConfiguration"
                              Prelude.<$> applicationRestoreConfiguration,
                            (JSON..=) "FlinkRunConfiguration"
                              Prelude.<$> flinkRunConfiguration])}
instance JSON.ToJSON RunConfigurationProperty where
  toJSON RunConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationRestoreConfiguration"
                 Prelude.<$> applicationRestoreConfiguration,
               (JSON..=) "FlinkRunConfiguration"
                 Prelude.<$> flinkRunConfiguration]))
instance Property "ApplicationRestoreConfiguration" RunConfigurationProperty where
  type PropertyType "ApplicationRestoreConfiguration" RunConfigurationProperty = ApplicationRestoreConfigurationProperty
  set newValue RunConfigurationProperty {..}
    = RunConfigurationProperty
        {applicationRestoreConfiguration = Prelude.pure newValue, ..}
instance Property "FlinkRunConfiguration" RunConfigurationProperty where
  type PropertyType "FlinkRunConfiguration" RunConfigurationProperty = FlinkRunConfigurationProperty
  set newValue RunConfigurationProperty {..}
    = RunConfigurationProperty
        {flinkRunConfiguration = Prelude.pure newValue, ..}