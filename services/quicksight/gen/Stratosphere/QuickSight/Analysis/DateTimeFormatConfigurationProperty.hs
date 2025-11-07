module Stratosphere.QuickSight.Analysis.DateTimeFormatConfigurationProperty (
        module Exports, DateTimeFormatConfigurationProperty(..),
        mkDateTimeFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NullValueFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimeformatconfiguration.html>
    DateTimeFormatConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimeformatconfiguration.html#cfn-quicksight-analysis-datetimeformatconfiguration-datetimeformat>
                                         dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimeformatconfiguration.html#cfn-quicksight-analysis-datetimeformatconfiguration-nullvalueformatconfiguration>
                                         nullValueFormatConfiguration :: (Prelude.Maybe NullValueFormatConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-datetimeformatconfiguration.html#cfn-quicksight-analysis-datetimeformatconfiguration-numericformatconfiguration>
                                         numericFormatConfiguration :: (Prelude.Maybe NumericFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeFormatConfigurationProperty ::
  DateTimeFormatConfigurationProperty
mkDateTimeFormatConfigurationProperty
  = DateTimeFormatConfigurationProperty
      {haddock_workaround_ = (), dateTimeFormat = Prelude.Nothing,
       nullValueFormatConfiguration = Prelude.Nothing,
       numericFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties DateTimeFormatConfigurationProperty where
  toResourceProperties DateTimeFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DateTimeFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "NullValueFormatConfiguration"
                              Prelude.<$> nullValueFormatConfiguration,
                            (JSON..=) "NumericFormatConfiguration"
                              Prelude.<$> numericFormatConfiguration])}
instance JSON.ToJSON DateTimeFormatConfigurationProperty where
  toJSON DateTimeFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "NullValueFormatConfiguration"
                 Prelude.<$> nullValueFormatConfiguration,
               (JSON..=) "NumericFormatConfiguration"
                 Prelude.<$> numericFormatConfiguration]))
instance Property "DateTimeFormat" DateTimeFormatConfigurationProperty where
  type PropertyType "DateTimeFormat" DateTimeFormatConfigurationProperty = Value Prelude.Text
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "NullValueFormatConfiguration" DateTimeFormatConfigurationProperty where
  type PropertyType "NullValueFormatConfiguration" DateTimeFormatConfigurationProperty = NullValueFormatConfigurationProperty
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {nullValueFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumericFormatConfiguration" DateTimeFormatConfigurationProperty where
  type PropertyType "NumericFormatConfiguration" DateTimeFormatConfigurationProperty = NumericFormatConfigurationProperty
  set newValue DateTimeFormatConfigurationProperty {..}
    = DateTimeFormatConfigurationProperty
        {numericFormatConfiguration = Prelude.pure newValue, ..}