module Stratosphere.QuickSight.DataSet.DataSetRefreshPropertiesProperty (
        module Exports, DataSetRefreshPropertiesProperty(..),
        mkDataSetRefreshPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RefreshConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RefreshFailureConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DataSetRefreshPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetrefreshproperties.html>
    DataSetRefreshPropertiesProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetrefreshproperties.html#cfn-quicksight-dataset-datasetrefreshproperties-failureconfiguration>
                                      failureConfiguration :: (Prelude.Maybe RefreshFailureConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datasetrefreshproperties.html#cfn-quicksight-dataset-datasetrefreshproperties-refreshconfiguration>
                                      refreshConfiguration :: (Prelude.Maybe RefreshConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSetRefreshPropertiesProperty ::
  DataSetRefreshPropertiesProperty
mkDataSetRefreshPropertiesProperty
  = DataSetRefreshPropertiesProperty
      {haddock_workaround_ = (), failureConfiguration = Prelude.Nothing,
       refreshConfiguration = Prelude.Nothing}
instance ToResourceProperties DataSetRefreshPropertiesProperty where
  toResourceProperties DataSetRefreshPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DataSetRefreshProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FailureConfiguration" Prelude.<$> failureConfiguration,
                            (JSON..=) "RefreshConfiguration"
                              Prelude.<$> refreshConfiguration])}
instance JSON.ToJSON DataSetRefreshPropertiesProperty where
  toJSON DataSetRefreshPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FailureConfiguration" Prelude.<$> failureConfiguration,
               (JSON..=) "RefreshConfiguration"
                 Prelude.<$> refreshConfiguration]))
instance Property "FailureConfiguration" DataSetRefreshPropertiesProperty where
  type PropertyType "FailureConfiguration" DataSetRefreshPropertiesProperty = RefreshFailureConfigurationProperty
  set newValue DataSetRefreshPropertiesProperty {..}
    = DataSetRefreshPropertiesProperty
        {failureConfiguration = Prelude.pure newValue, ..}
instance Property "RefreshConfiguration" DataSetRefreshPropertiesProperty where
  type PropertyType "RefreshConfiguration" DataSetRefreshPropertiesProperty = RefreshConfigurationProperty
  set newValue DataSetRefreshPropertiesProperty {..}
    = DataSetRefreshPropertiesProperty
        {refreshConfiguration = Prelude.pure newValue, ..}