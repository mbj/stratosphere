module Stratosphere.QuickSight.Dashboard (
        module Exports, Dashboard(..), mkDashboard
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardPublishOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardVersionDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LinkSharingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ValidationStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dashboard
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html>
    Dashboard {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-awsaccountid>
               awsAccountId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-dashboardid>
               dashboardId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-dashboardpublishoptions>
               dashboardPublishOptions :: (Prelude.Maybe DashboardPublishOptionsProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-definition>
               definition :: (Prelude.Maybe DashboardVersionDefinitionProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-folderarns>
               folderArns :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-linkentities>
               linkEntities :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-linksharingconfiguration>
               linkSharingConfiguration :: (Prelude.Maybe LinkSharingConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-name>
               name :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-parameters>
               parameters :: (Prelude.Maybe ParametersProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-permissions>
               permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-sourceentity>
               sourceEntity :: (Prelude.Maybe DashboardSourceEntityProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-themearn>
               themeArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-validationstrategy>
               validationStrategy :: (Prelude.Maybe ValidationStrategyProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-dashboard.html#cfn-quicksight-dashboard-versiondescription>
               versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboard ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Dashboard
mkDashboard awsAccountId dashboardId name
  = Dashboard
      {haddock_workaround_ = (), awsAccountId = awsAccountId,
       dashboardId = dashboardId, name = name,
       dashboardPublishOptions = Prelude.Nothing,
       definition = Prelude.Nothing, folderArns = Prelude.Nothing,
       linkEntities = Prelude.Nothing,
       linkSharingConfiguration = Prelude.Nothing,
       parameters = Prelude.Nothing, permissions = Prelude.Nothing,
       sourceEntity = Prelude.Nothing, tags = Prelude.Nothing,
       themeArn = Prelude.Nothing, validationStrategy = Prelude.Nothing,
       versionDescription = Prelude.Nothing}
instance ToResourceProperties Dashboard where
  toResourceProperties Dashboard {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId,
                            "DashboardId" JSON..= dashboardId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DashboardPublishOptions"
                                 Prelude.<$> dashboardPublishOptions,
                               (JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "FolderArns" Prelude.<$> folderArns,
                               (JSON..=) "LinkEntities" Prelude.<$> linkEntities,
                               (JSON..=) "LinkSharingConfiguration"
                                 Prelude.<$> linkSharingConfiguration,
                               (JSON..=) "Parameters" Prelude.<$> parameters,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                               (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON Dashboard where
  toJSON Dashboard {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId,
               "DashboardId" JSON..= dashboardId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DashboardPublishOptions"
                    Prelude.<$> dashboardPublishOptions,
                  (JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "FolderArns" Prelude.<$> folderArns,
                  (JSON..=) "LinkEntities" Prelude.<$> linkEntities,
                  (JSON..=) "LinkSharingConfiguration"
                    Prelude.<$> linkSharingConfiguration,
                  (JSON..=) "Parameters" Prelude.<$> parameters,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                  (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "AwsAccountId" Dashboard where
  type PropertyType "AwsAccountId" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {awsAccountId = newValue, ..}
instance Property "DashboardId" Dashboard where
  type PropertyType "DashboardId" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {dashboardId = newValue, ..}
instance Property "DashboardPublishOptions" Dashboard where
  type PropertyType "DashboardPublishOptions" Dashboard = DashboardPublishOptionsProperty
  set newValue Dashboard {..}
    = Dashboard {dashboardPublishOptions = Prelude.pure newValue, ..}
instance Property "Definition" Dashboard where
  type PropertyType "Definition" Dashboard = DashboardVersionDefinitionProperty
  set newValue Dashboard {..}
    = Dashboard {definition = Prelude.pure newValue, ..}
instance Property "FolderArns" Dashboard where
  type PropertyType "FolderArns" Dashboard = ValueList Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {folderArns = Prelude.pure newValue, ..}
instance Property "LinkEntities" Dashboard where
  type PropertyType "LinkEntities" Dashboard = ValueList Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {linkEntities = Prelude.pure newValue, ..}
instance Property "LinkSharingConfiguration" Dashboard where
  type PropertyType "LinkSharingConfiguration" Dashboard = LinkSharingConfigurationProperty
  set newValue Dashboard {..}
    = Dashboard {linkSharingConfiguration = Prelude.pure newValue, ..}
instance Property "Name" Dashboard where
  type PropertyType "Name" Dashboard = Value Prelude.Text
  set newValue Dashboard {..} = Dashboard {name = newValue, ..}
instance Property "Parameters" Dashboard where
  type PropertyType "Parameters" Dashboard = ParametersProperty
  set newValue Dashboard {..}
    = Dashboard {parameters = Prelude.pure newValue, ..}
instance Property "Permissions" Dashboard where
  type PropertyType "Permissions" Dashboard = [ResourcePermissionProperty]
  set newValue Dashboard {..}
    = Dashboard {permissions = Prelude.pure newValue, ..}
instance Property "SourceEntity" Dashboard where
  type PropertyType "SourceEntity" Dashboard = DashboardSourceEntityProperty
  set newValue Dashboard {..}
    = Dashboard {sourceEntity = Prelude.pure newValue, ..}
instance Property "Tags" Dashboard where
  type PropertyType "Tags" Dashboard = [Tag]
  set newValue Dashboard {..}
    = Dashboard {tags = Prelude.pure newValue, ..}
instance Property "ThemeArn" Dashboard where
  type PropertyType "ThemeArn" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {themeArn = Prelude.pure newValue, ..}
instance Property "ValidationStrategy" Dashboard where
  type PropertyType "ValidationStrategy" Dashboard = ValidationStrategyProperty
  set newValue Dashboard {..}
    = Dashboard {validationStrategy = Prelude.pure newValue, ..}
instance Property "VersionDescription" Dashboard where
  type PropertyType "VersionDescription" Dashboard = Value Prelude.Text
  set newValue Dashboard {..}
    = Dashboard {versionDescription = Prelude.pure newValue, ..}