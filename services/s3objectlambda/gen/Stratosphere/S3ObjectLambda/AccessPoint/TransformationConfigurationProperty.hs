module Stratosphere.S3ObjectLambda.AccessPoint.TransformationConfigurationProperty (
        module Exports, TransformationConfigurationProperty(..),
        mkTransformationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3ObjectLambda.AccessPoint.ContentTransformationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransformationConfigurationProperty
  = TransformationConfigurationProperty {actions :: (ValueList Prelude.Text),
                                         contentTransformation :: ContentTransformationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransformationConfigurationProperty ::
  ValueList Prelude.Text
  -> ContentTransformationProperty
     -> TransformationConfigurationProperty
mkTransformationConfigurationProperty actions contentTransformation
  = TransformationConfigurationProperty
      {actions = actions, contentTransformation = contentTransformation}
instance ToResourceProperties TransformationConfigurationProperty where
  toResourceProperties TransformationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3ObjectLambda::AccessPoint.TransformationConfiguration",
         supportsTags = Prelude.False,
         properties = ["Actions" JSON..= actions,
                       "ContentTransformation" JSON..= contentTransformation]}
instance JSON.ToJSON TransformationConfigurationProperty where
  toJSON TransformationConfigurationProperty {..}
    = JSON.object
        ["Actions" JSON..= actions,
         "ContentTransformation" JSON..= contentTransformation]
instance Property "Actions" TransformationConfigurationProperty where
  type PropertyType "Actions" TransformationConfigurationProperty = ValueList Prelude.Text
  set newValue TransformationConfigurationProperty {..}
    = TransformationConfigurationProperty {actions = newValue, ..}
instance Property "ContentTransformation" TransformationConfigurationProperty where
  type PropertyType "ContentTransformation" TransformationConfigurationProperty = ContentTransformationProperty
  set newValue TransformationConfigurationProperty {..}
    = TransformationConfigurationProperty
        {contentTransformation = newValue, ..}