module Stratosphere.Personalize.Dataset.DataSourceProperty (
        DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasource.html>
    DataSourceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-personalize-dataset-datasource.html#cfn-personalize-dataset-datasource-datalocation>
                        dataLocation :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty :: DataSourceProperty
mkDataSourceProperty
  = DataSourceProperty
      {haddock_workaround_ = (), dataLocation = Prelude.Nothing}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Personalize::Dataset.DataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLocation" Prelude.<$> dataLocation])}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLocation" Prelude.<$> dataLocation]))
instance Property "DataLocation" DataSourceProperty where
  type PropertyType "DataLocation" DataSourceProperty = Value Prelude.Text
  set newValue DataSourceProperty {..}
    = DataSourceProperty {dataLocation = Prelude.pure newValue, ..}