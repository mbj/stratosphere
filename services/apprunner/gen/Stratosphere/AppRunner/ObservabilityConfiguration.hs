module Stratosphere.AppRunner.ObservabilityConfiguration (
        module Exports, ObservabilityConfiguration(..),
        mkObservabilityConfiguration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppRunner.ObservabilityConfiguration.TraceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ObservabilityConfiguration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-observabilityconfiguration.html>
    ObservabilityConfiguration {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-observabilityconfiguration.html#cfn-apprunner-observabilityconfiguration-observabilityconfigurationname>
                                observabilityConfigurationName :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-observabilityconfiguration.html#cfn-apprunner-observabilityconfiguration-tags>
                                tags :: (Prelude.Maybe [Tag]),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apprunner-observabilityconfiguration.html#cfn-apprunner-observabilityconfiguration-traceconfiguration>
                                traceConfiguration :: (Prelude.Maybe TraceConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkObservabilityConfiguration :: ObservabilityConfiguration
mkObservabilityConfiguration
  = ObservabilityConfiguration
      {haddock_workaround_ = (),
       observabilityConfigurationName = Prelude.Nothing,
       tags = Prelude.Nothing, traceConfiguration = Prelude.Nothing}
instance ToResourceProperties ObservabilityConfiguration where
  toResourceProperties ObservabilityConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::AppRunner::ObservabilityConfiguration",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ObservabilityConfigurationName"
                              Prelude.<$> observabilityConfigurationName,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TraceConfiguration" Prelude.<$> traceConfiguration])}
instance JSON.ToJSON ObservabilityConfiguration where
  toJSON ObservabilityConfiguration {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ObservabilityConfigurationName"
                 Prelude.<$> observabilityConfigurationName,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TraceConfiguration" Prelude.<$> traceConfiguration]))
instance Property "ObservabilityConfigurationName" ObservabilityConfiguration where
  type PropertyType "ObservabilityConfigurationName" ObservabilityConfiguration = Value Prelude.Text
  set newValue ObservabilityConfiguration {..}
    = ObservabilityConfiguration
        {observabilityConfigurationName = Prelude.pure newValue, ..}
instance Property "Tags" ObservabilityConfiguration where
  type PropertyType "Tags" ObservabilityConfiguration = [Tag]
  set newValue ObservabilityConfiguration {..}
    = ObservabilityConfiguration {tags = Prelude.pure newValue, ..}
instance Property "TraceConfiguration" ObservabilityConfiguration where
  type PropertyType "TraceConfiguration" ObservabilityConfiguration = TraceConfigurationProperty
  set newValue ObservabilityConfiguration {..}
    = ObservabilityConfiguration
        {traceConfiguration = Prelude.pure newValue, ..}