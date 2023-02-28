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
  = DashboardSourceTemplateProperty {arn :: (Value Prelude.Text),
                                     dataSetReferences :: [DataSetReferenceProperty]}
mkDashboardSourceTemplateProperty ::
  Value Prelude.Text
  -> [DataSetReferenceProperty] -> DashboardSourceTemplateProperty
mkDashboardSourceTemplateProperty arn dataSetReferences
  = DashboardSourceTemplateProperty
      {arn = arn, dataSetReferences = dataSetReferences}
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