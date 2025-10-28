module Stratosphere.CleanRoomsML.TrainingDataset.DataSourceProperty (
        module Exports, DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.GlueDataSourceProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-datasource.html>
    DataSourceProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanroomsml-trainingdataset-datasource.html#cfn-cleanroomsml-trainingdataset-datasource-gluedatasource>
                        glueDataSource :: GlueDataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty ::
  GlueDataSourceProperty -> DataSourceProperty
mkDataSourceProperty glueDataSource
  = DataSourceProperty
      {haddock_workaround_ = (), glueDataSource = glueDataSource}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRoomsML::TrainingDataset.DataSource",
         supportsTags = Prelude.False,
         properties = ["GlueDataSource" JSON..= glueDataSource]}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object ["GlueDataSource" JSON..= glueDataSource]
instance Property "GlueDataSource" DataSourceProperty where
  type PropertyType "GlueDataSource" DataSourceProperty = GlueDataSourceProperty
  set newValue DataSourceProperty {..}
    = DataSourceProperty {glueDataSource = newValue, ..}