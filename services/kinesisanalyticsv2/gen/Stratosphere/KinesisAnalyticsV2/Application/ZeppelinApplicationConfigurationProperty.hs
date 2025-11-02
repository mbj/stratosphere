module Stratosphere.KinesisAnalyticsV2.Application.ZeppelinApplicationConfigurationProperty (
        module Exports, ZeppelinApplicationConfigurationProperty(..),
        mkZeppelinApplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.CatalogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.CustomArtifactConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.DeployAsApplicationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ZeppelinMonitoringConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ZeppelinApplicationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinapplicationconfiguration.html>
    ZeppelinApplicationConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-zeppelinapplicationconfiguration-catalogconfiguration>
                                              catalogConfiguration :: (Prelude.Maybe CatalogConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-zeppelinapplicationconfiguration-customartifactsconfiguration>
                                              customArtifactsConfiguration :: (Prelude.Maybe [CustomArtifactConfigurationProperty]),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-zeppelinapplicationconfiguration-deployasapplicationconfiguration>
                                              deployAsApplicationConfiguration :: (Prelude.Maybe DeployAsApplicationConfigurationProperty),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-application-zeppelinapplicationconfiguration.html#cfn-kinesisanalyticsv2-application-zeppelinapplicationconfiguration-monitoringconfiguration>
                                              monitoringConfiguration :: (Prelude.Maybe ZeppelinMonitoringConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkZeppelinApplicationConfigurationProperty ::
  ZeppelinApplicationConfigurationProperty
mkZeppelinApplicationConfigurationProperty
  = ZeppelinApplicationConfigurationProperty
      {haddock_workaround_ = (), catalogConfiguration = Prelude.Nothing,
       customArtifactsConfiguration = Prelude.Nothing,
       deployAsApplicationConfiguration = Prelude.Nothing,
       monitoringConfiguration = Prelude.Nothing}
instance ToResourceProperties ZeppelinApplicationConfigurationProperty where
  toResourceProperties ZeppelinApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ZeppelinApplicationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CatalogConfiguration" Prelude.<$> catalogConfiguration,
                            (JSON..=) "CustomArtifactsConfiguration"
                              Prelude.<$> customArtifactsConfiguration,
                            (JSON..=) "DeployAsApplicationConfiguration"
                              Prelude.<$> deployAsApplicationConfiguration,
                            (JSON..=) "MonitoringConfiguration"
                              Prelude.<$> monitoringConfiguration])}
instance JSON.ToJSON ZeppelinApplicationConfigurationProperty where
  toJSON ZeppelinApplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CatalogConfiguration" Prelude.<$> catalogConfiguration,
               (JSON..=) "CustomArtifactsConfiguration"
                 Prelude.<$> customArtifactsConfiguration,
               (JSON..=) "DeployAsApplicationConfiguration"
                 Prelude.<$> deployAsApplicationConfiguration,
               (JSON..=) "MonitoringConfiguration"
                 Prelude.<$> monitoringConfiguration]))
instance Property "CatalogConfiguration" ZeppelinApplicationConfigurationProperty where
  type PropertyType "CatalogConfiguration" ZeppelinApplicationConfigurationProperty = CatalogConfigurationProperty
  set newValue ZeppelinApplicationConfigurationProperty {..}
    = ZeppelinApplicationConfigurationProperty
        {catalogConfiguration = Prelude.pure newValue, ..}
instance Property "CustomArtifactsConfiguration" ZeppelinApplicationConfigurationProperty where
  type PropertyType "CustomArtifactsConfiguration" ZeppelinApplicationConfigurationProperty = [CustomArtifactConfigurationProperty]
  set newValue ZeppelinApplicationConfigurationProperty {..}
    = ZeppelinApplicationConfigurationProperty
        {customArtifactsConfiguration = Prelude.pure newValue, ..}
instance Property "DeployAsApplicationConfiguration" ZeppelinApplicationConfigurationProperty where
  type PropertyType "DeployAsApplicationConfiguration" ZeppelinApplicationConfigurationProperty = DeployAsApplicationConfigurationProperty
  set newValue ZeppelinApplicationConfigurationProperty {..}
    = ZeppelinApplicationConfigurationProperty
        {deployAsApplicationConfiguration = Prelude.pure newValue, ..}
instance Property "MonitoringConfiguration" ZeppelinApplicationConfigurationProperty where
  type PropertyType "MonitoringConfiguration" ZeppelinApplicationConfigurationProperty = ZeppelinMonitoringConfigurationProperty
  set newValue ZeppelinApplicationConfigurationProperty {..}
    = ZeppelinApplicationConfigurationProperty
        {monitoringConfiguration = Prelude.pure newValue, ..}