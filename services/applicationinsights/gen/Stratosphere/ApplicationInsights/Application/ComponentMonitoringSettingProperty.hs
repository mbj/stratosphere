module Stratosphere.ApplicationInsights.Application.ComponentMonitoringSettingProperty (
        module Exports, ComponentMonitoringSettingProperty(..),
        mkComponentMonitoringSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.ComponentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComponentMonitoringSettingProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html>
    ComponentMonitoringSettingProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentarn>
                                        componentARN :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentconfigurationmode>
                                        componentConfigurationMode :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-componentname>
                                        componentName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-customcomponentconfiguration>
                                        customComponentConfiguration :: (Prelude.Maybe ComponentConfigurationProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-defaultoverwritecomponentconfiguration>
                                        defaultOverwriteComponentConfiguration :: (Prelude.Maybe ComponentConfigurationProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-componentmonitoringsetting.html#cfn-applicationinsights-application-componentmonitoringsetting-tier>
                                        tier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComponentMonitoringSettingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ComponentMonitoringSettingProperty
mkComponentMonitoringSettingProperty
  componentConfigurationMode
  tier
  = ComponentMonitoringSettingProperty
      {componentConfigurationMode = componentConfigurationMode,
       tier = tier, componentARN = Prelude.Nothing,
       componentName = Prelude.Nothing,
       customComponentConfiguration = Prelude.Nothing,
       defaultOverwriteComponentConfiguration = Prelude.Nothing}
instance ToResourceProperties ComponentMonitoringSettingProperty where
  toResourceProperties ComponentMonitoringSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.ComponentMonitoringSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComponentConfigurationMode" JSON..= componentConfigurationMode,
                            "Tier" JSON..= tier]
                           (Prelude.catMaybes
                              [(JSON..=) "ComponentARN" Prelude.<$> componentARN,
                               (JSON..=) "ComponentName" Prelude.<$> componentName,
                               (JSON..=) "CustomComponentConfiguration"
                                 Prelude.<$> customComponentConfiguration,
                               (JSON..=) "DefaultOverwriteComponentConfiguration"
                                 Prelude.<$> defaultOverwriteComponentConfiguration]))}
instance JSON.ToJSON ComponentMonitoringSettingProperty where
  toJSON ComponentMonitoringSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComponentConfigurationMode" JSON..= componentConfigurationMode,
               "Tier" JSON..= tier]
              (Prelude.catMaybes
                 [(JSON..=) "ComponentARN" Prelude.<$> componentARN,
                  (JSON..=) "ComponentName" Prelude.<$> componentName,
                  (JSON..=) "CustomComponentConfiguration"
                    Prelude.<$> customComponentConfiguration,
                  (JSON..=) "DefaultOverwriteComponentConfiguration"
                    Prelude.<$> defaultOverwriteComponentConfiguration])))
instance Property "ComponentARN" ComponentMonitoringSettingProperty where
  type PropertyType "ComponentARN" ComponentMonitoringSettingProperty = Value Prelude.Text
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty
        {componentARN = Prelude.pure newValue, ..}
instance Property "ComponentConfigurationMode" ComponentMonitoringSettingProperty where
  type PropertyType "ComponentConfigurationMode" ComponentMonitoringSettingProperty = Value Prelude.Text
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty
        {componentConfigurationMode = newValue, ..}
instance Property "ComponentName" ComponentMonitoringSettingProperty where
  type PropertyType "ComponentName" ComponentMonitoringSettingProperty = Value Prelude.Text
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty
        {componentName = Prelude.pure newValue, ..}
instance Property "CustomComponentConfiguration" ComponentMonitoringSettingProperty where
  type PropertyType "CustomComponentConfiguration" ComponentMonitoringSettingProperty = ComponentConfigurationProperty
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty
        {customComponentConfiguration = Prelude.pure newValue, ..}
instance Property "DefaultOverwriteComponentConfiguration" ComponentMonitoringSettingProperty where
  type PropertyType "DefaultOverwriteComponentConfiguration" ComponentMonitoringSettingProperty = ComponentConfigurationProperty
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty
        {defaultOverwriteComponentConfiguration = Prelude.pure newValue,
         ..}
instance Property "Tier" ComponentMonitoringSettingProperty where
  type PropertyType "Tier" ComponentMonitoringSettingProperty = Value Prelude.Text
  set newValue ComponentMonitoringSettingProperty {..}
    = ComponentMonitoringSettingProperty {tier = newValue, ..}