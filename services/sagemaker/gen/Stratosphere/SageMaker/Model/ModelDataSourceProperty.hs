module Stratosphere.SageMaker.Model.ModelDataSourceProperty (
        module Exports, ModelDataSourceProperty(..),
        mkModelDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Model.S3DataSourceProperty as Exports
import Stratosphere.ResourceProperties
data ModelDataSourceProperty
  = ModelDataSourceProperty {s3DataSource :: S3DataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelDataSourceProperty ::
  S3DataSourceProperty -> ModelDataSourceProperty
mkModelDataSourceProperty s3DataSource
  = ModelDataSourceProperty {s3DataSource = s3DataSource}
instance ToResourceProperties ModelDataSourceProperty where
  toResourceProperties ModelDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.ModelDataSource",
         supportsTags = Prelude.False,
         properties = ["S3DataSource" JSON..= s3DataSource]}
instance JSON.ToJSON ModelDataSourceProperty where
  toJSON ModelDataSourceProperty {..}
    = JSON.object ["S3DataSource" JSON..= s3DataSource]
instance Property "S3DataSource" ModelDataSourceProperty where
  type PropertyType "S3DataSource" ModelDataSourceProperty = S3DataSourceProperty
  set newValue ModelDataSourceProperty {}
    = ModelDataSourceProperty {s3DataSource = newValue, ..}