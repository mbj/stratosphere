module Stratosphere.ApplicationInsights.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.ComponentMonitoringSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.CustomComponentProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.LogPatternSetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = Application {autoConfigurationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 cWEMonitorEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 componentMonitoringSettings :: (Prelude.Maybe [ComponentMonitoringSettingProperty]),
                 customComponents :: (Prelude.Maybe [CustomComponentProperty]),
                 groupingType :: (Prelude.Maybe (Value Prelude.Text)),
                 logPatternSets :: (Prelude.Maybe [LogPatternSetProperty]),
                 opsCenterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 opsItemSNSTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                 resourceGroupName :: (Value Prelude.Text),
                 tags :: (Prelude.Maybe [Tag])}
mkApplication :: Value Prelude.Text -> Application
mkApplication resourceGroupName
  = Application
      {resourceGroupName = resourceGroupName,
       autoConfigurationEnabled = Prelude.Nothing,
       cWEMonitorEnabled = Prelude.Nothing,
       componentMonitoringSettings = Prelude.Nothing,
       customComponents = Prelude.Nothing, groupingType = Prelude.Nothing,
       logPatternSets = Prelude.Nothing,
       opsCenterEnabled = Prelude.Nothing,
       opsItemSNSTopicArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceGroupName" JSON..= resourceGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoConfigurationEnabled"
                                 Prelude.<$> autoConfigurationEnabled,
                               (JSON..=) "CWEMonitorEnabled" Prelude.<$> cWEMonitorEnabled,
                               (JSON..=) "ComponentMonitoringSettings"
                                 Prelude.<$> componentMonitoringSettings,
                               (JSON..=) "CustomComponents" Prelude.<$> customComponents,
                               (JSON..=) "GroupingType" Prelude.<$> groupingType,
                               (JSON..=) "LogPatternSets" Prelude.<$> logPatternSets,
                               (JSON..=) "OpsCenterEnabled" Prelude.<$> opsCenterEnabled,
                               (JSON..=) "OpsItemSNSTopicArn" Prelude.<$> opsItemSNSTopicArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceGroupName" JSON..= resourceGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "AutoConfigurationEnabled"
                    Prelude.<$> autoConfigurationEnabled,
                  (JSON..=) "CWEMonitorEnabled" Prelude.<$> cWEMonitorEnabled,
                  (JSON..=) "ComponentMonitoringSettings"
                    Prelude.<$> componentMonitoringSettings,
                  (JSON..=) "CustomComponents" Prelude.<$> customComponents,
                  (JSON..=) "GroupingType" Prelude.<$> groupingType,
                  (JSON..=) "LogPatternSets" Prelude.<$> logPatternSets,
                  (JSON..=) "OpsCenterEnabled" Prelude.<$> opsCenterEnabled,
                  (JSON..=) "OpsItemSNSTopicArn" Prelude.<$> opsItemSNSTopicArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AutoConfigurationEnabled" Application where
  type PropertyType "AutoConfigurationEnabled" Application = Value Prelude.Bool
  set newValue Application {..}
    = Application
        {autoConfigurationEnabled = Prelude.pure newValue, ..}
instance Property "CWEMonitorEnabled" Application where
  type PropertyType "CWEMonitorEnabled" Application = Value Prelude.Bool
  set newValue Application {..}
    = Application {cWEMonitorEnabled = Prelude.pure newValue, ..}
instance Property "ComponentMonitoringSettings" Application where
  type PropertyType "ComponentMonitoringSettings" Application = [ComponentMonitoringSettingProperty]
  set newValue Application {..}
    = Application
        {componentMonitoringSettings = Prelude.pure newValue, ..}
instance Property "CustomComponents" Application where
  type PropertyType "CustomComponents" Application = [CustomComponentProperty]
  set newValue Application {..}
    = Application {customComponents = Prelude.pure newValue, ..}
instance Property "GroupingType" Application where
  type PropertyType "GroupingType" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {groupingType = Prelude.pure newValue, ..}
instance Property "LogPatternSets" Application where
  type PropertyType "LogPatternSets" Application = [LogPatternSetProperty]
  set newValue Application {..}
    = Application {logPatternSets = Prelude.pure newValue, ..}
instance Property "OpsCenterEnabled" Application where
  type PropertyType "OpsCenterEnabled" Application = Value Prelude.Bool
  set newValue Application {..}
    = Application {opsCenterEnabled = Prelude.pure newValue, ..}
instance Property "OpsItemSNSTopicArn" Application where
  type PropertyType "OpsItemSNSTopicArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {opsItemSNSTopicArn = Prelude.pure newValue, ..}
instance Property "ResourceGroupName" Application where
  type PropertyType "ResourceGroupName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {resourceGroupName = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}