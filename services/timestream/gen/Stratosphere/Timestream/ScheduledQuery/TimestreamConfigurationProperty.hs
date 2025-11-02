module Stratosphere.Timestream.ScheduledQuery.TimestreamConfigurationProperty (
        module Exports, TimestreamConfigurationProperty(..),
        mkTimestreamConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.DimensionMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.MixedMeasureMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.MultiMeasureMappingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html>
    TimestreamConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-databasename>
                                     databaseName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-dimensionmappings>
                                     dimensionMappings :: [DimensionMappingProperty],
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-measurenamecolumn>
                                     measureNameColumn :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-mixedmeasuremappings>
                                     mixedMeasureMappings :: (Prelude.Maybe [MixedMeasureMappingProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-multimeasuremappings>
                                     multiMeasureMappings :: (Prelude.Maybe MultiMeasureMappingsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-tablename>
                                     tableName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-timestreamconfiguration.html#cfn-timestream-scheduledquery-timestreamconfiguration-timecolumn>
                                     timeColumn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamConfigurationProperty ::
  Value Prelude.Text
  -> [DimensionMappingProperty]
     -> Value Prelude.Text
        -> Value Prelude.Text -> TimestreamConfigurationProperty
mkTimestreamConfigurationProperty
  databaseName
  dimensionMappings
  tableName
  timeColumn
  = TimestreamConfigurationProperty
      {haddock_workaround_ = (), databaseName = databaseName,
       dimensionMappings = dimensionMappings, tableName = tableName,
       timeColumn = timeColumn, measureNameColumn = Prelude.Nothing,
       mixedMeasureMappings = Prelude.Nothing,
       multiMeasureMappings = Prelude.Nothing}
instance ToResourceProperties TimestreamConfigurationProperty where
  toResourceProperties TimestreamConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.TimestreamConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DatabaseName" JSON..= databaseName,
                            "DimensionMappings" JSON..= dimensionMappings,
                            "TableName" JSON..= tableName, "TimeColumn" JSON..= timeColumn]
                           (Prelude.catMaybes
                              [(JSON..=) "MeasureNameColumn" Prelude.<$> measureNameColumn,
                               (JSON..=) "MixedMeasureMappings" Prelude.<$> mixedMeasureMappings,
                               (JSON..=) "MultiMeasureMappings"
                                 Prelude.<$> multiMeasureMappings]))}
instance JSON.ToJSON TimestreamConfigurationProperty where
  toJSON TimestreamConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DatabaseName" JSON..= databaseName,
               "DimensionMappings" JSON..= dimensionMappings,
               "TableName" JSON..= tableName, "TimeColumn" JSON..= timeColumn]
              (Prelude.catMaybes
                 [(JSON..=) "MeasureNameColumn" Prelude.<$> measureNameColumn,
                  (JSON..=) "MixedMeasureMappings" Prelude.<$> mixedMeasureMappings,
                  (JSON..=) "MultiMeasureMappings"
                    Prelude.<$> multiMeasureMappings])))
instance Property "DatabaseName" TimestreamConfigurationProperty where
  type PropertyType "DatabaseName" TimestreamConfigurationProperty = Value Prelude.Text
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty {databaseName = newValue, ..}
instance Property "DimensionMappings" TimestreamConfigurationProperty where
  type PropertyType "DimensionMappings" TimestreamConfigurationProperty = [DimensionMappingProperty]
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty
        {dimensionMappings = newValue, ..}
instance Property "MeasureNameColumn" TimestreamConfigurationProperty where
  type PropertyType "MeasureNameColumn" TimestreamConfigurationProperty = Value Prelude.Text
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty
        {measureNameColumn = Prelude.pure newValue, ..}
instance Property "MixedMeasureMappings" TimestreamConfigurationProperty where
  type PropertyType "MixedMeasureMappings" TimestreamConfigurationProperty = [MixedMeasureMappingProperty]
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty
        {mixedMeasureMappings = Prelude.pure newValue, ..}
instance Property "MultiMeasureMappings" TimestreamConfigurationProperty where
  type PropertyType "MultiMeasureMappings" TimestreamConfigurationProperty = MultiMeasureMappingsProperty
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty
        {multiMeasureMappings = Prelude.pure newValue, ..}
instance Property "TableName" TimestreamConfigurationProperty where
  type PropertyType "TableName" TimestreamConfigurationProperty = Value Prelude.Text
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty {tableName = newValue, ..}
instance Property "TimeColumn" TimestreamConfigurationProperty where
  type PropertyType "TimeColumn" TimestreamConfigurationProperty = Value Prelude.Text
  set newValue TimestreamConfigurationProperty {..}
    = TimestreamConfigurationProperty {timeColumn = newValue, ..}