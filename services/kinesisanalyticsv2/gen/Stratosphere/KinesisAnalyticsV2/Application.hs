module Stratosphere.KinesisAnalyticsV2.Application (
        module Exports, Application(..), mkApplication
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ApplicationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.ApplicationMaintenanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisAnalyticsV2.Application.RunConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Application
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html>
    Application {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationconfiguration>
                 applicationConfiguration :: (Prelude.Maybe ApplicationConfigurationProperty),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationdescription>
                 applicationDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationmaintenanceconfiguration>
                 applicationMaintenanceConfiguration :: (Prelude.Maybe ApplicationMaintenanceConfigurationProperty),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationmode>
                 applicationMode :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-applicationname>
                 applicationName :: (Prelude.Maybe (Value Prelude.Text)),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-runconfiguration>
                 runConfiguration :: (Prelude.Maybe RunConfigurationProperty),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-runtimeenvironment>
                 runtimeEnvironment :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-serviceexecutionrole>
                 serviceExecutionRole :: (Value Prelude.Text),
                 -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisanalyticsv2-application.html#cfn-kinesisanalyticsv2-application-tags>
                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplication ::
  Value Prelude.Text -> Value Prelude.Text -> Application
mkApplication runtimeEnvironment serviceExecutionRole
  = Application
      {runtimeEnvironment = runtimeEnvironment,
       serviceExecutionRole = serviceExecutionRole,
       applicationConfiguration = Prelude.Nothing,
       applicationDescription = Prelude.Nothing,
       applicationMaintenanceConfiguration = Prelude.Nothing,
       applicationMode = Prelude.Nothing,
       applicationName = Prelude.Nothing,
       runConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Application where
  toResourceProperties Application {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RuntimeEnvironment" JSON..= runtimeEnvironment,
                            "ServiceExecutionRole" JSON..= serviceExecutionRole]
                           (Prelude.catMaybes
                              [(JSON..=) "ApplicationConfiguration"
                                 Prelude.<$> applicationConfiguration,
                               (JSON..=) "ApplicationDescription"
                                 Prelude.<$> applicationDescription,
                               (JSON..=) "ApplicationMaintenanceConfiguration"
                                 Prelude.<$> applicationMaintenanceConfiguration,
                               (JSON..=) "ApplicationMode" Prelude.<$> applicationMode,
                               (JSON..=) "ApplicationName" Prelude.<$> applicationName,
                               (JSON..=) "RunConfiguration" Prelude.<$> runConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Application where
  toJSON Application {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RuntimeEnvironment" JSON..= runtimeEnvironment,
               "ServiceExecutionRole" JSON..= serviceExecutionRole]
              (Prelude.catMaybes
                 [(JSON..=) "ApplicationConfiguration"
                    Prelude.<$> applicationConfiguration,
                  (JSON..=) "ApplicationDescription"
                    Prelude.<$> applicationDescription,
                  (JSON..=) "ApplicationMaintenanceConfiguration"
                    Prelude.<$> applicationMaintenanceConfiguration,
                  (JSON..=) "ApplicationMode" Prelude.<$> applicationMode,
                  (JSON..=) "ApplicationName" Prelude.<$> applicationName,
                  (JSON..=) "RunConfiguration" Prelude.<$> runConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApplicationConfiguration" Application where
  type PropertyType "ApplicationConfiguration" Application = ApplicationConfigurationProperty
  set newValue Application {..}
    = Application
        {applicationConfiguration = Prelude.pure newValue, ..}
instance Property "ApplicationDescription" Application where
  type PropertyType "ApplicationDescription" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationDescription = Prelude.pure newValue, ..}
instance Property "ApplicationMaintenanceConfiguration" Application where
  type PropertyType "ApplicationMaintenanceConfiguration" Application = ApplicationMaintenanceConfigurationProperty
  set newValue Application {..}
    = Application
        {applicationMaintenanceConfiguration = Prelude.pure newValue, ..}
instance Property "ApplicationMode" Application where
  type PropertyType "ApplicationMode" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationMode = Prelude.pure newValue, ..}
instance Property "ApplicationName" Application where
  type PropertyType "ApplicationName" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {applicationName = Prelude.pure newValue, ..}
instance Property "RunConfiguration" Application where
  type PropertyType "RunConfiguration" Application = RunConfigurationProperty
  set newValue Application {..}
    = Application {runConfiguration = Prelude.pure newValue, ..}
instance Property "RuntimeEnvironment" Application where
  type PropertyType "RuntimeEnvironment" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {runtimeEnvironment = newValue, ..}
instance Property "ServiceExecutionRole" Application where
  type PropertyType "ServiceExecutionRole" Application = Value Prelude.Text
  set newValue Application {..}
    = Application {serviceExecutionRole = newValue, ..}
instance Property "Tags" Application where
  type PropertyType "Tags" Application = [Tag]
  set newValue Application {..}
    = Application {tags = Prelude.pure newValue, ..}