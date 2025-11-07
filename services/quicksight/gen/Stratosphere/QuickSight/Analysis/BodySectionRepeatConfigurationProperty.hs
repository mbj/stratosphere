module Stratosphere.QuickSight.Analysis.BodySectionRepeatConfigurationProperty (
        module Exports, BodySectionRepeatConfigurationProperty(..),
        mkBodySectionRepeatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BodySectionRepeatDimensionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BodySectionRepeatPageBreakConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BodySectionRepeatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectionrepeatconfiguration.html>
    BodySectionRepeatConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectionrepeatconfiguration.html#cfn-quicksight-analysis-bodysectionrepeatconfiguration-dimensionconfigurations>
                                            dimensionConfigurations :: (Prelude.Maybe [BodySectionRepeatDimensionConfigurationProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectionrepeatconfiguration.html#cfn-quicksight-analysis-bodysectionrepeatconfiguration-nonrepeatingvisuals>
                                            nonRepeatingVisuals :: (Prelude.Maybe (ValueList Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectionrepeatconfiguration.html#cfn-quicksight-analysis-bodysectionrepeatconfiguration-pagebreakconfiguration>
                                            pageBreakConfiguration :: (Prelude.Maybe BodySectionRepeatPageBreakConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionRepeatConfigurationProperty ::
  BodySectionRepeatConfigurationProperty
mkBodySectionRepeatConfigurationProperty
  = BodySectionRepeatConfigurationProperty
      {haddock_workaround_ = (),
       dimensionConfigurations = Prelude.Nothing,
       nonRepeatingVisuals = Prelude.Nothing,
       pageBreakConfiguration = Prelude.Nothing}
instance ToResourceProperties BodySectionRepeatConfigurationProperty where
  toResourceProperties BodySectionRepeatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BodySectionRepeatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DimensionConfigurations"
                              Prelude.<$> dimensionConfigurations,
                            (JSON..=) "NonRepeatingVisuals" Prelude.<$> nonRepeatingVisuals,
                            (JSON..=) "PageBreakConfiguration"
                              Prelude.<$> pageBreakConfiguration])}
instance JSON.ToJSON BodySectionRepeatConfigurationProperty where
  toJSON BodySectionRepeatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DimensionConfigurations"
                 Prelude.<$> dimensionConfigurations,
               (JSON..=) "NonRepeatingVisuals" Prelude.<$> nonRepeatingVisuals,
               (JSON..=) "PageBreakConfiguration"
                 Prelude.<$> pageBreakConfiguration]))
instance Property "DimensionConfigurations" BodySectionRepeatConfigurationProperty where
  type PropertyType "DimensionConfigurations" BodySectionRepeatConfigurationProperty = [BodySectionRepeatDimensionConfigurationProperty]
  set newValue BodySectionRepeatConfigurationProperty {..}
    = BodySectionRepeatConfigurationProperty
        {dimensionConfigurations = Prelude.pure newValue, ..}
instance Property "NonRepeatingVisuals" BodySectionRepeatConfigurationProperty where
  type PropertyType "NonRepeatingVisuals" BodySectionRepeatConfigurationProperty = ValueList Prelude.Text
  set newValue BodySectionRepeatConfigurationProperty {..}
    = BodySectionRepeatConfigurationProperty
        {nonRepeatingVisuals = Prelude.pure newValue, ..}
instance Property "PageBreakConfiguration" BodySectionRepeatConfigurationProperty where
  type PropertyType "PageBreakConfiguration" BodySectionRepeatConfigurationProperty = BodySectionRepeatPageBreakConfigurationProperty
  set newValue BodySectionRepeatConfigurationProperty {..}
    = BodySectionRepeatConfigurationProperty
        {pageBreakConfiguration = Prelude.pure newValue, ..}