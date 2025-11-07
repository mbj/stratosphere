module Stratosphere.QuickSight.Analysis.NumberFormatConfigurationProperty (
        module Exports, NumberFormatConfigurationProperty(..),
        mkNumberFormatConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.NumericFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data NumberFormatConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numberformatconfiguration.html>
    NumberFormatConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-numberformatconfiguration.html#cfn-quicksight-analysis-numberformatconfiguration-formatconfiguration>
                                       formatConfiguration :: (Prelude.Maybe NumericFormatConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNumberFormatConfigurationProperty ::
  NumberFormatConfigurationProperty
mkNumberFormatConfigurationProperty
  = NumberFormatConfigurationProperty
      {haddock_workaround_ = (), formatConfiguration = Prelude.Nothing}
instance ToResourceProperties NumberFormatConfigurationProperty where
  toResourceProperties NumberFormatConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.NumberFormatConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration])}
instance JSON.ToJSON NumberFormatConfigurationProperty where
  toJSON NumberFormatConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatConfiguration" Prelude.<$> formatConfiguration]))
instance Property "FormatConfiguration" NumberFormatConfigurationProperty where
  type PropertyType "FormatConfiguration" NumberFormatConfigurationProperty = NumericFormatConfigurationProperty
  set newValue NumberFormatConfigurationProperty {..}
    = NumberFormatConfigurationProperty
        {formatConfiguration = Prelude.pure newValue, ..}