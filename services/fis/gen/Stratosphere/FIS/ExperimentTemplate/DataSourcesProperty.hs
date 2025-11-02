module Stratosphere.FIS.ExperimentTemplate.DataSourcesProperty (
        module Exports, DataSourcesProperty(..), mkDataSourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FIS.ExperimentTemplate.CloudWatchDashboardProperty as Exports
import Stratosphere.ResourceProperties
data DataSourcesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-datasources.html>
    DataSourcesProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fis-experimenttemplate-datasources.html#cfn-fis-experimenttemplate-datasources-cloudwatchdashboards>
                         cloudWatchDashboards :: (Prelude.Maybe [CloudWatchDashboardProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourcesProperty :: DataSourcesProperty
mkDataSourcesProperty
  = DataSourcesProperty
      {haddock_workaround_ = (), cloudWatchDashboards = Prelude.Nothing}
instance ToResourceProperties DataSourcesProperty where
  toResourceProperties DataSourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::FIS::ExperimentTemplate.DataSources",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchDashboards"
                              Prelude.<$> cloudWatchDashboards])}
instance JSON.ToJSON DataSourcesProperty where
  toJSON DataSourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchDashboards"
                 Prelude.<$> cloudWatchDashboards]))
instance Property "CloudWatchDashboards" DataSourcesProperty where
  type PropertyType "CloudWatchDashboards" DataSourcesProperty = [CloudWatchDashboardProperty]
  set newValue DataSourcesProperty {..}
    = DataSourcesProperty
        {cloudWatchDashboards = Prelude.pure newValue, ..}