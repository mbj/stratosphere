module Stratosphere.QuickSight.Template.ComparisonFormatConfigurationProperty (
        module Exports, ComparisonFormatConfigurationProperty(..),
        mkComparisonFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.NumberDisplayFormatConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PercentageDisplayFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ComparisonFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonformatconfiguration.html>
    ComparisonFormatConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonformatconfiguration.html#cfn-quicksight-template-comparisonformatconfiguration-numberdisplayformatconfiguration>
                                           numberDisplayFormatConfiguration :: (Prelude.Maybe NumberDisplayFormatConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonformatconfiguration.html#cfn-quicksight-template-comparisonformatconfiguration-percentagedisplayformatconfiguration>
                                           percentageDisplayFormatConfiguration :: (Prelude.Maybe PercentageDisplayFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComparisonFormatConfigurationProperty ::
  ComparisonFormatConfigurationProperty
mkComparisonFormatConfigurationProperty
  = ComparisonFormatConfigurationProperty
      {haddock_workaround_ = (),
       numberDisplayFormatConfiguration = Prelude.Nothing,
       percentageDisplayFormatConfiguration = Prelude.Nothing}
instance ToResourceProperties ComparisonFormatConfigurationProperty where
  toResourceProperties ComparisonFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ComparisonFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberDisplayFormatConfiguration"
                              Prelude.<$> numberDisplayFormatConfiguration,
                            (JSON..=) "PercentageDisplayFormatConfiguration"
                              Prelude.<$> percentageDisplayFormatConfiguration])}
instance JSON.ToJSON ComparisonFormatConfigurationProperty where
  toJSON ComparisonFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberDisplayFormatConfiguration"
                 Prelude.<$> numberDisplayFormatConfiguration,
               (JSON..=) "PercentageDisplayFormatConfiguration"
                 Prelude.<$> percentageDisplayFormatConfiguration]))
instance Property "NumberDisplayFormatConfiguration" ComparisonFormatConfigurationProperty where
  type PropertyType "NumberDisplayFormatConfiguration" ComparisonFormatConfigurationProperty = NumberDisplayFormatConfigurationProperty
  set newValue ComparisonFormatConfigurationProperty {..}
    = ComparisonFormatConfigurationProperty
        {numberDisplayFormatConfiguration = Prelude.pure newValue, ..}
instance Property "PercentageDisplayFormatConfiguration" ComparisonFormatConfigurationProperty where
  type PropertyType "PercentageDisplayFormatConfiguration" ComparisonFormatConfigurationProperty = PercentageDisplayFormatConfigurationProperty
  set newValue ComparisonFormatConfigurationProperty {..}
    = ComparisonFormatConfigurationProperty
        {percentageDisplayFormatConfiguration = Prelude.pure newValue, ..}