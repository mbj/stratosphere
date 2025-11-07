module Stratosphere.QuickSight.Template.ComparisonConfigurationProperty (
        module Exports, ComparisonConfigurationProperty(..),
        mkComparisonConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComparisonFormatConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComparisonConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonconfiguration.html>
    ComparisonConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonconfiguration.html#cfn-quicksight-template-comparisonconfiguration-comparisonformat>
                                     comparisonFormat :: (Prelude.Maybe ComparisonFormatConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-comparisonconfiguration.html#cfn-quicksight-template-comparisonconfiguration-comparisonmethod>
                                     comparisonMethod :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComparisonConfigurationProperty ::
  ComparisonConfigurationProperty
mkComparisonConfigurationProperty
  = ComparisonConfigurationProperty
      {haddock_workaround_ = (), comparisonFormat = Prelude.Nothing,
       comparisonMethod = Prelude.Nothing}
instance ToResourceProperties ComparisonConfigurationProperty where
  toResourceProperties ComparisonConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ComparisonConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComparisonFormat" Prelude.<$> comparisonFormat,
                            (JSON..=) "ComparisonMethod" Prelude.<$> comparisonMethod])}
instance JSON.ToJSON ComparisonConfigurationProperty where
  toJSON ComparisonConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComparisonFormat" Prelude.<$> comparisonFormat,
               (JSON..=) "ComparisonMethod" Prelude.<$> comparisonMethod]))
instance Property "ComparisonFormat" ComparisonConfigurationProperty where
  type PropertyType "ComparisonFormat" ComparisonConfigurationProperty = ComparisonFormatConfigurationProperty
  set newValue ComparisonConfigurationProperty {..}
    = ComparisonConfigurationProperty
        {comparisonFormat = Prelude.pure newValue, ..}
instance Property "ComparisonMethod" ComparisonConfigurationProperty where
  type PropertyType "ComparisonMethod" ComparisonConfigurationProperty = Value Prelude.Text
  set newValue ComparisonConfigurationProperty {..}
    = ComparisonConfigurationProperty
        {comparisonMethod = Prelude.pure newValue, ..}