module Stratosphere.QuickSight.Analysis.SectionPageBreakConfigurationProperty (
        module Exports, SectionPageBreakConfigurationProperty(..),
        mkSectionPageBreakConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionAfterPageBreakProperty as Exports
import Stratosphere.ResourceProperties
data SectionPageBreakConfigurationProperty
  = SectionPageBreakConfigurationProperty {after :: (Prelude.Maybe SectionAfterPageBreakProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionPageBreakConfigurationProperty ::
  SectionPageBreakConfigurationProperty
mkSectionPageBreakConfigurationProperty
  = SectionPageBreakConfigurationProperty {after = Prelude.Nothing}
instance ToResourceProperties SectionPageBreakConfigurationProperty where
  toResourceProperties SectionPageBreakConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SectionPageBreakConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after])}
instance JSON.ToJSON SectionPageBreakConfigurationProperty where
  toJSON SectionPageBreakConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after]))
instance Property "After" SectionPageBreakConfigurationProperty where
  type PropertyType "After" SectionPageBreakConfigurationProperty = SectionAfterPageBreakProperty
  set newValue SectionPageBreakConfigurationProperty {}
    = SectionPageBreakConfigurationProperty
        {after = Prelude.pure newValue, ..}