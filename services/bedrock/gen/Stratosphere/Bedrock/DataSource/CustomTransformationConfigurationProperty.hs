module Stratosphere.Bedrock.DataSource.CustomTransformationConfigurationProperty (
        module Exports, CustomTransformationConfigurationProperty(..),
        mkCustomTransformationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.IntermediateStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.TransformationProperty as Exports
import Stratosphere.ResourceProperties
data CustomTransformationConfigurationProperty
  = CustomTransformationConfigurationProperty {intermediateStorage :: IntermediateStorageProperty,
                                               transformations :: [TransformationProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomTransformationConfigurationProperty ::
  IntermediateStorageProperty
  -> [TransformationProperty]
     -> CustomTransformationConfigurationProperty
mkCustomTransformationConfigurationProperty
  intermediateStorage
  transformations
  = CustomTransformationConfigurationProperty
      {intermediateStorage = intermediateStorage,
       transformations = transformations}
instance ToResourceProperties CustomTransformationConfigurationProperty where
  toResourceProperties CustomTransformationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.CustomTransformationConfiguration",
         supportsTags = Prelude.False,
         properties = ["IntermediateStorage" JSON..= intermediateStorage,
                       "Transformations" JSON..= transformations]}
instance JSON.ToJSON CustomTransformationConfigurationProperty where
  toJSON CustomTransformationConfigurationProperty {..}
    = JSON.object
        ["IntermediateStorage" JSON..= intermediateStorage,
         "Transformations" JSON..= transformations]
instance Property "IntermediateStorage" CustomTransformationConfigurationProperty where
  type PropertyType "IntermediateStorage" CustomTransformationConfigurationProperty = IntermediateStorageProperty
  set newValue CustomTransformationConfigurationProperty {..}
    = CustomTransformationConfigurationProperty
        {intermediateStorage = newValue, ..}
instance Property "Transformations" CustomTransformationConfigurationProperty where
  type PropertyType "Transformations" CustomTransformationConfigurationProperty = [TransformationProperty]
  set newValue CustomTransformationConfigurationProperty {..}
    = CustomTransformationConfigurationProperty
        {transformations = newValue, ..}