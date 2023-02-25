module Stratosphere.SageMaker.ModelPackage.TransformInputProperty (
        module Exports, TransformInputProperty(..),
        mkTransformInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.ModelPackage.DataSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformInputProperty
  = TransformInputProperty {compressionType :: (Prelude.Maybe (Value Prelude.Text)),
                            contentType :: (Prelude.Maybe (Value Prelude.Text)),
                            dataSource :: DataSourceProperty,
                            splitType :: (Prelude.Maybe (Value Prelude.Text))}
mkTransformInputProperty ::
  DataSourceProperty -> TransformInputProperty
mkTransformInputProperty dataSource
  = TransformInputProperty
      {dataSource = dataSource, compressionType = Prelude.Nothing,
       contentType = Prelude.Nothing, splitType = Prelude.Nothing}
instance ToResourceProperties TransformInputProperty where
  toResourceProperties TransformInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.TransformInput",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataSource" JSON..= dataSource]
                           (Prelude.catMaybes
                              [(JSON..=) "CompressionType" Prelude.<$> compressionType,
                               (JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "SplitType" Prelude.<$> splitType]))}
instance JSON.ToJSON TransformInputProperty where
  toJSON TransformInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataSource" JSON..= dataSource]
              (Prelude.catMaybes
                 [(JSON..=) "CompressionType" Prelude.<$> compressionType,
                  (JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "SplitType" Prelude.<$> splitType])))
instance Property "CompressionType" TransformInputProperty where
  type PropertyType "CompressionType" TransformInputProperty = Value Prelude.Text
  set newValue TransformInputProperty {..}
    = TransformInputProperty
        {compressionType = Prelude.pure newValue, ..}
instance Property "ContentType" TransformInputProperty where
  type PropertyType "ContentType" TransformInputProperty = Value Prelude.Text
  set newValue TransformInputProperty {..}
    = TransformInputProperty {contentType = Prelude.pure newValue, ..}
instance Property "DataSource" TransformInputProperty where
  type PropertyType "DataSource" TransformInputProperty = DataSourceProperty
  set newValue TransformInputProperty {..}
    = TransformInputProperty {dataSource = newValue, ..}
instance Property "SplitType" TransformInputProperty where
  type PropertyType "SplitType" TransformInputProperty = Value Prelude.Text
  set newValue TransformInputProperty {..}
    = TransformInputProperty {splitType = Prelude.pure newValue, ..}