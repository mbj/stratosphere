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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html>
    Application {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-attachmissingpermission>
                 attachMissingPermission :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-autoconfigurationenabled>
                 autoConfigurationEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-cwemonitorenabled>
                 cWEMonitorEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-componentmonitoringsettings>
                 componentMonitoringSettings :: (Prelude.Maybe [ComponentMonitoringSettingProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-customcomponents>
                 customComponents :: (Prelude.Maybe [CustomComponentProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-groupingtype>
                 groupingType :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-logpatternsets>
                 logPatternSets :: (Prelude.Maybe [LogPatternSetProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-opscenterenabled>
                 opsCenterEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-opsitemsnstopicarn>
                 opsItemSNSTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-resourcegroupname>
                 resourceGroupName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-snsnotificationarn>
                 sNSNotificationArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationinsights-application.html#cfn-applicationinsights-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication :: Value Prelude.Text -> Application
mkApplication resourceGroupName
  = Application
      {haddock_workaround_ = (), resourceGroupName = resourceGroupName,
       attachMissingPermission = Prelude.Nothing,
       autoConfigurationEnabled = Prelude.Nothing,
       cWEMonitorEnabled = Prelude.Nothing,
       componentMonitoringSettings = Prelude.Nothing,
       customComponents = Prelude.Nothing, groupingType = Prelude.Nothing,
       logPatternSets = Prelude.Nothing,
       opsCenterEnabled = Prelude.Nothing,
       opsItemSNSTopicArn = Prelude.Nothing,
       sNSNotificationArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceGroupName" JSON..= resourceGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachMissingPermission"
                                 Prelude.<$> attachMissingPermission,
                               (JSON..=) "AutoConfigurationEnabled"
                                 Prelude.<$> autoConfigurationEnabled,
                               (JSON..=) "CWEMonitorEnabled" Prelude.<$> cWEMonitorEnabled,
                               (JSON..=) "ComponentMonitoringSettings"
                                 Prelude.<$> componentMonitoringSettings,
                               (JSON..=) "CustomComponents" Prelude.<$> customComponents,
                               (JSON..=) "GroupingType" Prelude.<$> groupingType,
                               (JSON..=) "LogPatternSets" Prelude.<$> logPatternSets,
                               (JSON..=) "OpsCenterEnabled" Prelude.<$> opsCenterEnabled,
                               (JSON..=) "OpsItemSNSTopicArn" Prelude.<$> opsItemSNSTopicArn,
                               (JSON..=) "SNSNotificationArn" Prelude.<$> sNSNotificationArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceGroupName" JSON..= resourceGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "AttachMissingPermission"
                    Prelude.<$> attachMissingPermission,
                  (JSON..=) "AutoConfigurationEnabled"
                    Prelude.<$> autoConfigurationEnabled,
                  (JSON..=) "CWEMonitorEnabled" Prelude.<$> cWEMonitorEnabled,
                  (JSON..=) "ComponentMonitoringSettings"
                    Prelude.<$> componentMonitoringSettings,
                  (JSON..=) "CustomComponents" Prelude.<$> customComponents,
                  (JSON..=) "GroupingType" Prelude.<$> groupingType,
                  (JSON..=) "LogPatternSets" Prelude.<$> logPatternSets,
                  (JSON..=) "OpsCenterEnabled" Prelude.<$> opsCenterEnabled,
                  (JSON..=) "OpsItemSNSTopicArn" Prelude.<$> opsItemSNSTopicArn,
                  (JSON..=) "SNSNotificationArn" Prelude.<$> sNSNotificationArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AttachMissingPermission" Application where
  type PropertyType "AttachMissingPermission" Application = Value Prelude.Bool
  set newValue Application {..}
    = Application {attachMissingPermission = Prelude.pure newValue, ..}
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
instance Property "SNSNotificationArn" Application where
  type PropertyType "SNSNotificationArn" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {sNSNotificationArn = Prelude.pure newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}