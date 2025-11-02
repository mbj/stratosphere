module Stratosphere.SageMaker.ModelPackage.ModelDataSourceProperty (
        module Exports, ModelDataSourceProperty(..),
        mkModelDataSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.S3ModelDataSourceProperty as Exports
import Stratosphere.ResourceProperties
data ModelDataSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldatasource.html>
    ModelDataSourceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-modeldatasource.html#cfn-sagemaker-modelpackage-modeldatasource-s3datasource>
                             s3DataSource :: (Prelude.Maybe S3ModelDataSourceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkModelDataSourceProperty :: ModelDataSourceProperty
mkModelDataSourceProperty
  = ModelDataSourceProperty
      {haddock_workaround_ = (), s3DataSource = Prelude.Nothing}
instance ToResourceProperties ModelDataSourceProperty where
  toResourceProperties ModelDataSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.ModelDataSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "S3DataSource" Prelude.<$> s3DataSource])}
instance JSON.ToJSON ModelDataSourceProperty where
  toJSON ModelDataSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "S3DataSource" Prelude.<$> s3DataSource]))
instance Property "S3DataSource" ModelDataSourceProperty where
  type PropertyType "S3DataSource" ModelDataSourceProperty = S3ModelDataSourceProperty
  set newValue ModelDataSourceProperty {..}
    = ModelDataSourceProperty
        {s3DataSource = Prelude.pure newValue, ..}