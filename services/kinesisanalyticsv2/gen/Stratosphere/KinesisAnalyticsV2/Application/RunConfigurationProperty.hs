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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-runconfiguration.html>
    RunConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-runconfiguration.html#cfn-kinesisanalyticsv2-application-runconfiguration-applicationrestoreconfiguration>
                              applicationRestoreConfiguration :: (Prelude.Maybe ApplicationRestoreConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-runconfiguration.html#cfn-kinesisanalyticsv2-application-runconfiguration-flinkrunconfiguration>
                              flinkRunConfiguration :: (Prelude.Maybe FlinkRunConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunConfigurationProperty :: RunConfigurationProperty
mkRunConfigurationProperty
  = RunConfigurationProperty
      {haddock_workaround_ = (),
       applicationRestoreConfiguration = Prelude.Nothing,
       flinkRunConfiguration = Prelude.Nothing}
instance ToResourceProperties RunConfigurationProperty where
  toResourceProperties RunConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.RunConfiguration",
         supportsTags = Prelude.False,
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