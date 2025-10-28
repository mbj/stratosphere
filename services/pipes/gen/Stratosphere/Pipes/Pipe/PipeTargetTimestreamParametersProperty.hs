module Stratosphere.Pipes.Pipe.PipeTargetTimestreamParametersProperty (
        module Exports, PipeTargetTimestreamParametersProperty(..),
        mkPipeTargetTimestreamParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.DimensionMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.MultiMeasureMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.SingleMeasureMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipeTargetTimestreamParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html>
    PipeTargetTimestreamParametersProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-dimensionmappings>
                                            dimensionMappings :: [DimensionMappingProperty],
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-epochtimeunit>
                                            epochTimeUnit :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-multimeasuremappings>
                                            multiMeasureMappings :: (Prelude.Maybe [MultiMeasureMappingProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-singlemeasuremappings>
                                            singleMeasureMappings :: (Prelude.Maybe [SingleMeasureMappingProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-timefieldtype>
                                            timeFieldType :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-timevalue>
                                            timeValue :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-timestampformat>
                                            timestampFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargettimestreamparameters.html#cfn-pipes-pipe-pipetargettimestreamparameters-versionvalue>
                                            versionValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetTimestreamParametersProperty ::
  [DimensionMappingProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> PipeTargetTimestreamParametersProperty
mkPipeTargetTimestreamParametersProperty
  dimensionMappings
  timeValue
  versionValue
  = PipeTargetTimestreamParametersProperty
      {haddock_workaround_ = (), dimensionMappings = dimensionMappings,
       timeValue = timeValue, versionValue = versionValue,
       epochTimeUnit = Prelude.Nothing,
       multiMeasureMappings = Prelude.Nothing,
       singleMeasureMappings = Prelude.Nothing,
       timeFieldType = Prelude.Nothing, timestampFormat = Prelude.Nothing}
instance ToResourceProperties PipeTargetTimestreamParametersProperty where
  toResourceProperties PipeTargetTimestreamParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetTimestreamParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DimensionMappings" JSON..= dimensionMappings,
                            "TimeValue" JSON..= timeValue, "VersionValue" JSON..= versionValue]
                           (Prelude.catMaybes
                              [(JSON..=) "EpochTimeUnit" Prelude.<$> epochTimeUnit,
                               (JSON..=) "MultiMeasureMappings" Prelude.<$> multiMeasureMappings,
                               (JSON..=) "SingleMeasureMappings"
                                 Prelude.<$> singleMeasureMappings,
                               (JSON..=) "TimeFieldType" Prelude.<$> timeFieldType,
                               (JSON..=) "TimestampFormat" Prelude.<$> timestampFormat]))}
instance JSON.ToJSON PipeTargetTimestreamParametersProperty where
  toJSON PipeTargetTimestreamParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DimensionMappings" JSON..= dimensionMappings,
               "TimeValue" JSON..= timeValue, "VersionValue" JSON..= versionValue]
              (Prelude.catMaybes
                 [(JSON..=) "EpochTimeUnit" Prelude.<$> epochTimeUnit,
                  (JSON..=) "MultiMeasureMappings" Prelude.<$> multiMeasureMappings,
                  (JSON..=) "SingleMeasureMappings"
                    Prelude.<$> singleMeasureMappings,
                  (JSON..=) "TimeFieldType" Prelude.<$> timeFieldType,
                  (JSON..=) "TimestampFormat" Prelude.<$> timestampFormat])))
instance Property "DimensionMappings" PipeTargetTimestreamParametersProperty where
  type PropertyType "DimensionMappings" PipeTargetTimestreamParametersProperty = [DimensionMappingProperty]
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {dimensionMappings = newValue, ..}
instance Property "EpochTimeUnit" PipeTargetTimestreamParametersProperty where
  type PropertyType "EpochTimeUnit" PipeTargetTimestreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {epochTimeUnit = Prelude.pure newValue, ..}
instance Property "MultiMeasureMappings" PipeTargetTimestreamParametersProperty where
  type PropertyType "MultiMeasureMappings" PipeTargetTimestreamParametersProperty = [MultiMeasureMappingProperty]
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {multiMeasureMappings = Prelude.pure newValue, ..}
instance Property "SingleMeasureMappings" PipeTargetTimestreamParametersProperty where
  type PropertyType "SingleMeasureMappings" PipeTargetTimestreamParametersProperty = [SingleMeasureMappingProperty]
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {singleMeasureMappings = Prelude.pure newValue, ..}
instance Property "TimeFieldType" PipeTargetTimestreamParametersProperty where
  type PropertyType "TimeFieldType" PipeTargetTimestreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {timeFieldType = Prelude.pure newValue, ..}
instance Property "TimeValue" PipeTargetTimestreamParametersProperty where
  type PropertyType "TimeValue" PipeTargetTimestreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty {timeValue = newValue, ..}
instance Property "TimestampFormat" PipeTargetTimestreamParametersProperty where
  type PropertyType "TimestampFormat" PipeTargetTimestreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {timestampFormat = Prelude.pure newValue, ..}
instance Property "VersionValue" PipeTargetTimestreamParametersProperty where
  type PropertyType "VersionValue" PipeTargetTimestreamParametersProperty = Value Prelude.Text
  set newValue PipeTargetTimestreamParametersProperty {..}
    = PipeTargetTimestreamParametersProperty
        {versionValue = newValue, ..}