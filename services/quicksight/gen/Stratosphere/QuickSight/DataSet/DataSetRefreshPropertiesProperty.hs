module Stratosphere.QuickSight.DataSet.DataSetRefreshPropertiesProperty (
        module Exports, DataSetRefreshPropertiesProperty(..),
        mkDataSetRefreshPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RefreshConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DataSetRefreshPropertiesProperty
  = DataSetRefreshPropertiesProperty {refreshConfiguration :: (Prelude.Maybe RefreshConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetRefreshPropertiesProperty ::
  DataSetRefreshPropertiesProperty
mkDataSetRefreshPropertiesProperty
  = DataSetRefreshPropertiesProperty
      {refreshConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSetRefreshPropertiesProperty where
  toResourceProperties DataSetRefreshPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DataSetRefreshProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RefreshConfiguration"
                              Prelude.<$> refreshConfiguration])}
instance JSON.ToJSON DataSetRefreshPropertiesProperty where
  toJSON DataSetRefreshPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RefreshConfiguration"
                 Prelude.<$> refreshConfiguration]))
instance Property "RefreshConfiguration" DataSetRefreshPropertiesProperty where
  type PropertyType "RefreshConfiguration" DataSetRefreshPropertiesProperty = RefreshConfigurationProperty
  set newValue DataSetRefreshPropertiesProperty {}
    = DataSetRefreshPropertiesProperty
        {refreshConfiguration = Prelude.pure newValue, ..}