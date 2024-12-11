module Stratosphere.CleanRoomsML.TrainingDataset.DatasetInputConfigProperty (
        module Exports, DatasetInputConfigProperty(..),
        mkDatasetInputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.ColumnSchemaProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.DataSourceProperty as Exports
import Stratosphere.ResourceProperties
data DatasetInputConfigProperty
  = DatasetInputConfigProperty {dataSource :: DataSourceProperty,
                                schema :: [ColumnSchemaProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetInputConfigProperty ::
  DataSourceProperty
  -> [ColumnSchemaProperty] -> DatasetInputConfigProperty
mkDatasetInputConfigProperty dataSource schema
  = DatasetInputConfigProperty
      {dataSource = dataSource, schema = schema}
instance ToResourceProperties DatasetInputConfigProperty where
  toResourceProperties DatasetInputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset.DatasetInputConfig",
         supportsTags = Prelude.False,
         properties = ["DataSource" JSON..= dataSource,
                       "Schema" JSON..= schema]}
instance JSON.ToJSON DatasetInputConfigProperty where
  toJSON DatasetInputConfigProperty {..}
    = JSON.object
        ["DataSource" JSON..= dataSource, "Schema" JSON..= schema]
instance Property "DataSource" DatasetInputConfigProperty where
  type PropertyType "DataSource" DatasetInputConfigProperty = DataSourceProperty
  set newValue DatasetInputConfigProperty {..}
    = DatasetInputConfigProperty {dataSource = newValue, ..}
instance Property "Schema" DatasetInputConfigProperty where
  type PropertyType "Schema" DatasetInputConfigProperty = [ColumnSchemaProperty]
  set newValue DatasetInputConfigProperty {..}
    = DatasetInputConfigProperty {schema = newValue, ..}