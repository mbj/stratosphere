module Stratosphere.KinesisAnalyticsV2.Application.ApplicationConfigurationProperty (
        module Exports, ApplicationConfigurationProperty(..),
        mkApplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ApplicationCodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ApplicationSnapshotConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.EnvironmentPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.FlinkApplicationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.SqlApplicationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.VpcConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ZeppelinApplicationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ApplicationConfigurationProperty
  = ApplicationConfigurationProperty {applicationCodeConfiguration :: (Prelude.Maybe ApplicationCodeConfigurationProperty),
                                      applicationSnapshotConfiguration :: (Prelude.Maybe ApplicationSnapshotConfigurationProperty),
                                      environmentProperties :: (Prelude.Maybe EnvironmentPropertiesProperty),
                                      flinkApplicationConfiguration :: (Prelude.Maybe FlinkApplicationConfigurationProperty),
                                      sqlApplicationConfiguration :: (Prelude.Maybe SqlApplicationConfigurationProperty),
                                      vpcConfigurations :: (Prelude.Maybe [VpcConfigurationProperty]),
                                      zeppelinApplicationConfiguration :: (Prelude.Maybe ZeppelinApplicationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationConfigurationProperty ::
  ApplicationConfigurationProperty
mkApplicationConfigurationProperty
  = ApplicationConfigurationProperty
      {applicationCodeConfiguration = Prelude.Nothing,
       applicationSnapshotConfiguration = Prelude.Nothing,
       environmentProperties = Prelude.Nothing,
       flinkApplicationConfiguration = Prelude.Nothing,
       sqlApplicationConfiguration = Prelude.Nothing,
       vpcConfigurations = Prelude.Nothing,
       zeppelinApplicationConfiguration = Prelude.Nothing}
instance ToResourceProperties ApplicationConfigurationProperty where
  toResourceProperties ApplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.ApplicationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApplicationCodeConfiguration"
                              Prelude.<$> applicationCodeConfiguration,
                            (JSON..=) "ApplicationSnapshotConfiguration"
                              Prelude.<$> applicationSnapshotConfiguration,
                            (JSON..=) "EnvironmentProperties"
                              Prelude.<$> environmentProperties,
                            (JSON..=) "FlinkApplicationConfiguration"
                              Prelude.<$> flinkApplicationConfiguration,
                            (JSON..=) "SqlApplicationConfiguration"
                              Prelude.<$> sqlApplicationConfiguration,
                            (JSON..=) "VpcConfigurations" Prelude.<$> vpcConfigurations,
                            (JSON..=) "ZeppelinApplicationConfiguration"
                              Prelude.<$> zeppelinApplicationConfiguration])}
instance JSON.ToJSON ApplicationConfigurationProperty where
  toJSON ApplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApplicationCodeConfiguration"
                 Prelude.<$> applicationCodeConfiguration,
               (JSON..=) "ApplicationSnapshotConfiguration"
                 Prelude.<$> applicationSnapshotConfiguration,
               (JSON..=) "EnvironmentProperties"
                 Prelude.<$> environmentProperties,
               (JSON..=) "FlinkApplicationConfiguration"
                 Prelude.<$> flinkApplicationConfiguration,
               (JSON..=) "SqlApplicationConfiguration"
                 Prelude.<$> sqlApplicationConfiguration,
               (JSON..=) "VpcConfigurations" Prelude.<$> vpcConfigurations,
               (JSON..=) "ZeppelinApplicationConfiguration"
                 Prelude.<$> zeppelinApplicationConfiguration]))
instance Property "ApplicationCodeConfiguration" ApplicationConfigurationProperty where
  type PropertyType "ApplicationCodeConfiguration" ApplicationConfigurationProperty = ApplicationCodeConfigurationProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {applicationCodeConfiguration = Prelude.pure newValue, ..}
instance Property "ApplicationSnapshotConfiguration" ApplicationConfigurationProperty where
  type PropertyType "ApplicationSnapshotConfiguration" ApplicationConfigurationProperty = ApplicationSnapshotConfigurationProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {applicationSnapshotConfiguration = Prelude.pure newValue, ..}
instance Property "EnvironmentProperties" ApplicationConfigurationProperty where
  type PropertyType "EnvironmentProperties" ApplicationConfigurationProperty = EnvironmentPropertiesProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {environmentProperties = Prelude.pure newValue, ..}
instance Property "FlinkApplicationConfiguration" ApplicationConfigurationProperty where
  type PropertyType "FlinkApplicationConfiguration" ApplicationConfigurationProperty = FlinkApplicationConfigurationProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {flinkApplicationConfiguration = Prelude.pure newValue, ..}
instance Property "SqlApplicationConfiguration" ApplicationConfigurationProperty where
  type PropertyType "SqlApplicationConfiguration" ApplicationConfigurationProperty = SqlApplicationConfigurationProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {sqlApplicationConfiguration = Prelude.pure newValue, ..}
instance Property "VpcConfigurations" ApplicationConfigurationProperty where
  type PropertyType "VpcConfigurations" ApplicationConfigurationProperty = [VpcConfigurationProperty]
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {vpcConfigurations = Prelude.pure newValue, ..}
instance Property "ZeppelinApplicationConfiguration" ApplicationConfigurationProperty where
  type PropertyType "ZeppelinApplicationConfiguration" ApplicationConfigurationProperty = ZeppelinApplicationConfigurationProperty
  set newValue ApplicationConfigurationProperty {..}
    = ApplicationConfigurationProperty
        {zeppelinApplicationConfiguration = Prelude.pure newValue, ..}