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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-multimeasuremapping.html>
    MultiMeasureMappingProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-multimeasuremapping.html#cfn-pipes-pipe-multimeasuremapping-multimeasureattributemappings>
                                 multiMeasureAttributeMappings :: [MultiMeasureAttributeMappingProperty],
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-multimeasuremapping.html#cfn-pipes-pipe-multimeasuremapping-multimeasurename>
                                 multiMeasureName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiMeasureMappingProperty ::
  [MultiMeasureAttributeMappingProperty]
  -> Value Prelude.Text -> MultiMeasureMappingProperty
mkMultiMeasureMappingProperty
  multiMeasureAttributeMappings
  multiMeasureName
  = MultiMeasureMappingProperty
      {haddock_workaround_ = (),
       multiMeasureAttributeMappings = multiMeasureAttributeMappings,
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