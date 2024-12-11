module Stratosphere.Pipes.Pipe.MultiMeasureMappingProperty (
        module Exports, MultiMeasureMappingProperty(..),
        mkMultiMeasureMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.MultiMeasureAttributeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiMeasureMappingProperty
  = MultiMeasureMappingProperty {multiMeasureAttributeMappings :: [MultiMeasureAttributeMappingProperty],
                                 multiMeasureName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiMeasureMappingProperty ::
  [MultiMeasureAttributeMappingProperty]
  -> Value Prelude.Text -> MultiMeasureMappingProperty
mkMultiMeasureMappingProperty
  multiMeasureAttributeMappings
  multiMeasureName
  = MultiMeasureMappingProperty
      {multiMeasureAttributeMappings = multiMeasureAttributeMappings,
       multiMeasureName = multiMeasureName}
instance ToResourceProperties MultiMeasureMappingProperty where
  toResourceProperties MultiMeasureMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.MultiMeasureMapping",
         supportsTags = Prelude.False,
         properties = ["MultiMeasureAttributeMappings"
                         JSON..= multiMeasureAttributeMappings,
                       "MultiMeasureName" JSON..= multiMeasureName]}
instance JSON.ToJSON MultiMeasureMappingProperty where
  toJSON MultiMeasureMappingProperty {..}
    = JSON.object
        ["MultiMeasureAttributeMappings"
           JSON..= multiMeasureAttributeMappings,
         "MultiMeasureName" JSON..= multiMeasureName]
instance Property "MultiMeasureAttributeMappings" MultiMeasureMappingProperty where
  type PropertyType "MultiMeasureAttributeMappings" MultiMeasureMappingProperty = [MultiMeasureAttributeMappingProperty]
  set newValue MultiMeasureMappingProperty {..}
    = MultiMeasureMappingProperty
        {multiMeasureAttributeMappings = newValue, ..}
instance Property "MultiMeasureName" MultiMeasureMappingProperty where
  type PropertyType "MultiMeasureName" MultiMeasureMappingProperty = Value Prelude.Text
  set newValue MultiMeasureMappingProperty {..}
    = MultiMeasureMappingProperty {multiMeasureName = newValue, ..}