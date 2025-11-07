module Stratosphere.QuickSight.Analysis.FormatConfigurationProperty (
        module Exports, FormatConfigurationProperty(..),
        mkFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DateTimeFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumberFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.StringFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html>
    FormatConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-datetimeformatconfiguration>
                                 dateTimeFormatConfiguration :: (Prelude.Maybe DateTimeFormatConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-numberformatconfiguration>
                                 numberFormatConfiguration :: (Prelude.Maybe NumberFormatConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-formatconfiguration.html#cfn-quicksight-analysis-formatconfiguration-stringformatconfiguration>
                                 stringFormatConfiguration :: (Prelude.Maybe StringFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFormatConfigurationProperty :: FormatConfigurationProperty
mkFormatConfigurationProperty
  = FormatConfigurationProperty
      {haddock_workaround_ = (),
       dateTimeFormatConfiguration = Prelude.Nothing,
       numberFormatConfiguration = Prelude.Nothing,
       stringFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties FormatConfigurationProperty where
  toResourceProperties FormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormatConfiguration"
                              Prelude.<$> dateTimeFormatConfiguration,
                            (JSON..=) "NumberFormatConfiguration"
                              Prelude.<$> numberFormatConfiguration,
                            (JSON..=) "StringFormatConfiguration"
                              Prelude.<$> stringFormatConfiguration])}
instance JSON.ToJSON FormatConfigurationProperty where
  toJSON FormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormatConfiguration"
                 Prelude.<$> dateTimeFormatConfiguration,
               (JSON..=) "NumberFormatConfiguration"
                 Prelude.<$> numberFormatConfiguration,
               (JSON..=) "StringFormatConfiguration"
                 Prelude.<$> stringFormatConfiguration]))
instance Property "DateTimeFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "DateTimeFormatConfiguration" FormatConfigurationProperty = DateTimeFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {dateTimeFormatConfiguration = Prelude.pure newValue, ..}
instance Property "NumberFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "NumberFormatConfiguration" FormatConfigurationProperty = NumberFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {numberFormatConfiguration = Prelude.pure newValue, ..}
instance Property "StringFormatConfiguration" FormatConfigurationProperty where
  type PropertyType "StringFormatConfiguration" FormatConfigurationProperty = StringFormatConfigurationProperty
  set newValue FormatConfigurationProperty {..}
    = FormatConfigurationProperty
        {stringFormatConfiguration = Prelude.pure newValue, ..}