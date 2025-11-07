module Stratosphere.QuickSight.Analysis.KPIConfigurationProperty (
        module Exports, KPIConfigurationProperty(..),
        mkKPIConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPIOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.KPISortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data KPIConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconfiguration.html>
    KPIConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconfiguration.html#cfn-quicksight-analysis-kpiconfiguration-fieldwells>
                              fieldWells :: (Prelude.Maybe KPIFieldWellsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconfiguration.html#cfn-quicksight-analysis-kpiconfiguration-interactions>
                              interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconfiguration.html#cfn-quicksight-analysis-kpiconfiguration-kpioptions>
                              kPIOptions :: (Prelude.Maybe KPIOptionsProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-kpiconfiguration.html#cfn-quicksight-analysis-kpiconfiguration-sortconfiguration>
                              sortConfiguration :: (Prelude.Maybe KPISortConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConfigurationProperty :: KPIConfigurationProperty
mkKPIConfigurationProperty
  = KPIConfigurationProperty
      {haddock_workaround_ = (), fieldWells = Prelude.Nothing,
       interactions = Prelude.Nothing, kPIOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing}
instance ToResourceProperties KPIConfigurationProperty where
  toResourceProperties KPIConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.KPIConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "KPIOptions" Prelude.<$> kPIOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration])}
instance JSON.ToJSON KPIConfigurationProperty where
  toJSON KPIConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "KPIOptions" Prelude.<$> kPIOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration]))
instance Property "FieldWells" KPIConfigurationProperty where
  type PropertyType "FieldWells" KPIConfigurationProperty = KPIFieldWellsProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" KPIConfigurationProperty where
  type PropertyType "Interactions" KPIConfigurationProperty = VisualInteractionOptionsProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "KPIOptions" KPIConfigurationProperty where
  type PropertyType "KPIOptions" KPIConfigurationProperty = KPIOptionsProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty {kPIOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" KPIConfigurationProperty where
  type PropertyType "SortConfiguration" KPIConfigurationProperty = KPISortConfigurationProperty
  set newValue KPIConfigurationProperty {..}
    = KPIConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}