module Stratosphere.QuickSight.Dashboard.DashboardSourceTemplateProperty (
        module Exports, DashboardSourceTemplateProperty(..),
        mkDashboardSourceTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataSetReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashboardSourceTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardsourcetemplate.html>
    DashboardSourceTemplateProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardsourcetemplate.html#cfn-quicksight-dashboard-dashboardsourcetemplate-arn>
                                     arn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-dashboardsourcetemplate.html#cfn-quicksight-dashboard-dashboardsourcetemplate-datasetreferences>
                                     dataSetReferences :: [DataSetReferenceProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashboardSourceTemplateProperty ::
  Value Prelude.Text
  -> [DataSetReferenceProperty] -> DashboardSourceTemplateProperty
mkDashboardSourceTemplateProperty arn dataSetReferences
  = DashboardSourceTemplateProperty
      {haddock_workaround_ = (), arn = arn,
       dataSetReferences = dataSetReferences}
instance ToResourceProperties DashboardSourceTemplateProperty where
  toResourceProperties DashboardSourceTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DashboardSourceTemplate",
         supportsTags = Prelude.False,
         properties = ["Arn" JSON..= arn,
                       "DataSetReferences" JSON..= dataSetReferences]}
instance JSON.ToJSON DashboardSourceTemplateProperty where
  toJSON DashboardSourceTemplateProperty {..}
    = JSON.object
        ["Arn" JSON..= arn, "DataSetReferences" JSON..= dataSetReferences]
instance Property "Arn" DashboardSourceTemplateProperty where
  type PropertyType "Arn" DashboardSourceTemplateProperty = Value Prelude.Text
  set newValue DashboardSourceTemplateProperty {..}
    = DashboardSourceTemplateProperty {arn = newValue, ..}
instance Property "DataSetReferences" DashboardSourceTemplateProperty where
  type PropertyType "DataSetReferences" DashboardSourceTemplateProperty = [DataSetReferenceProperty]
  set newValue DashboardSourceTemplateProperty {..}
    = DashboardSourceTemplateProperty
        {dataSetReferences = newValue, ..}