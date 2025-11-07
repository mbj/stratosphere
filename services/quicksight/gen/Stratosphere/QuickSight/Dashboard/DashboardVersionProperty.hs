module Stratosphere.QuickSight.Dashboard.DashboardVersionProperty (
        module Exports, DashboardVersionProperty(..),
        mkDashboardVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DashboardErrorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SheetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardVersionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html>
    DashboardVersionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-arn>
                              arn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-createdtime>
                              createdTime :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-datasetarns>
                              dataSetArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-errors>
                              errors :: (Prelude.Maybe [DashboardErrorProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-sheets>
                              sheets :: (Prelude.Maybe [SheetProperty]),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-sourceentityarn>
                              sourceEntityArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-status>
                              status :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-themearn>
                              themeArn :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardversion.html#cfn-quicksight-dashboard-dashboardversion-versionnumber>
                              versionNumber :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardVersionProperty :: DashboardVersionProperty
mkDashboardVersionProperty
  = DashboardVersionProperty
      {haddock_workaround_ = (), arn = Prelude.Nothing,
       createdTime = Prelude.Nothing, dataSetArns = Prelude.Nothing,
       description = Prelude.Nothing, errors = Prelude.Nothing,
       sheets = Prelude.Nothing, sourceEntityArn = Prelude.Nothing,
       status = Prelude.Nothing, themeArn = Prelude.Nothing,
       versionNumber = Prelude.Nothing}
instance ToResourceProperties DashboardVersionProperty where
  toResourceProperties DashboardVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Arn" Prelude.<$> arn,
                            (JSON..=) "CreatedTime" Prelude.<$> createdTime,
                            (JSON..=) "DataSetArns" Prelude.<$> dataSetArns,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Errors" Prelude.<$> errors,
                            (JSON..=) "Sheets" Prelude.<$> sheets,
                            (JSON..=) "SourceEntityArn" Prelude.<$> sourceEntityArn,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "ThemeArn" Prelude.<$> themeArn,
                            (JSON..=) "VersionNumber" Prelude.<$> versionNumber])}
instance JSON.ToJSON DashboardVersionProperty where
  toJSON DashboardVersionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Arn" Prelude.<$> arn,
               (JSON..=) "CreatedTime" Prelude.<$> createdTime,
               (JSON..=) "DataSetArns" Prelude.<$> dataSetArns,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Errors" Prelude.<$> errors,
               (JSON..=) "Sheets" Prelude.<$> sheets,
               (JSON..=) "SourceEntityArn" Prelude.<$> sourceEntityArn,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "ThemeArn" Prelude.<$> themeArn,
               (JSON..=) "VersionNumber" Prelude.<$> versionNumber]))
instance Property "Arn" DashboardVersionProperty where
  type PropertyType "Arn" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty {arn = Prelude.pure newValue, ..}
instance Property "CreatedTime" DashboardVersionProperty where
  type PropertyType "CreatedTime" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty
        {createdTime = Prelude.pure newValue, ..}
instance Property "DataSetArns" DashboardVersionProperty where
  type PropertyType "DataSetArns" DashboardVersionProperty = ValueList Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty
        {dataSetArns = Prelude.pure newValue, ..}
instance Property "Description" DashboardVersionProperty where
  type PropertyType "Description" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Errors" DashboardVersionProperty where
  type PropertyType "Errors" DashboardVersionProperty = [DashboardErrorProperty]
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty {errors = Prelude.pure newValue, ..}
instance Property "Sheets" DashboardVersionProperty where
  type PropertyType "Sheets" DashboardVersionProperty = [SheetProperty]
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty {sheets = Prelude.pure newValue, ..}
instance Property "SourceEntityArn" DashboardVersionProperty where
  type PropertyType "SourceEntityArn" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty
        {sourceEntityArn = Prelude.pure newValue, ..}
instance Property "Status" DashboardVersionProperty where
  type PropertyType "Status" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty {status = Prelude.pure newValue, ..}
instance Property "ThemeArn" DashboardVersionProperty where
  type PropertyType "ThemeArn" DashboardVersionProperty = Value Prelude.Text
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty {themeArn = Prelude.pure newValue, ..}
instance Property "VersionNumber" DashboardVersionProperty where
  type PropertyType "VersionNumber" DashboardVersionProperty = Value Prelude.Double
  set newValue DashboardVersionProperty {..}
    = DashboardVersionProperty
        {versionNumber = Prelude.pure newValue, ..}