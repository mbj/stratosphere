module Stratosphere.SageMaker.ModelPackage.DataSourceProperty (
        module Exports, DataSourceProperty(..), mkDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.S3DataSourceProperty as Exports
import Stratosphere.ResourceProperties
data DataSourceProperty
  = DataSourceProperty {s3DataSource :: S3DataSourceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataSourceProperty :: S3DataSourceProperty -> DataSourceProperty
mkDataSourceProperty s3DataSource
  = DataSourceProperty {s3DataSource = s3DataSource}
instance ToResourceProperties DataSourceProperty where
  toResourceProperties DataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.DataSource",
         supportsTags = Prelude.False,
         properties = ["S3DataSource" JSON..= s3DataSource]}
instance JSON.ToJSON DataSourceProperty where
  toJSON DataSourceProperty {..}
    = JSON.object ["S3DataSource" JSON..= s3DataSource]
instance Property "S3DataSource" DataSourceProperty where
  type PropertyType "S3DataSource" DataSourceProperty = S3DataSourceProperty
  set newValue DataSourceProperty {}
    = DataSourceProperty {s3DataSource = newValue, ..}