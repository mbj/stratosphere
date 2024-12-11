module Stratosphere.CleanRoomsML.TrainingDataset.DataSourceProperty (
        module Exports, DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRoomsML.TrainingDataset.GlueDataSourceProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceProperty
  = DataSourceProperty {glueDataSource :: GlueDataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty ::
  GlueDataSourceProperty -> DataSourceProperty
mkDataSourceProperty glueDataSource
  = DataSourceProperty {glueDataSource = glueDataSource}
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
  set newValue DataSourceProperty {}
    = DataSourceProperty {glueDataSource = newValue, ..}