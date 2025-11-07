module Stratosphere.QuickSight.Template.BodySectionRepeatPageBreakConfigurationProperty (
        module Exports,
        BodySectionRepeatPageBreakConfigurationProperty(..),
        mkBodySectionRepeatPageBreakConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SectionAfterPageBreakProperty as Exports
import Stratosphere.ResourceProperties
data BodySectionRepeatPageBreakConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-bodysectionrepeatpagebreakconfiguration.html>
    BodySectionRepeatPageBreakConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-bodysectionrepeatpagebreakconfiguration.html#cfn-quicksight-template-bodysectionrepeatpagebreakconfiguration-after>
                                                     after :: (Prelude.Maybe SectionAfterPageBreakProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionRepeatPageBreakConfigurationProperty ::
  BodySectionRepeatPageBreakConfigurationProperty
mkBodySectionRepeatPageBreakConfigurationProperty
  = BodySectionRepeatPageBreakConfigurationProperty
      {haddock_workaround_ = (), after = Prelude.Nothing}
instance ToResourceProperties BodySectionRepeatPageBreakConfigurationProperty where
  toResourceProperties
    BodySectionRepeatPageBreakConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BodySectionRepeatPageBreakConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after])}
instance JSON.ToJSON BodySectionRepeatPageBreakConfigurationProperty where
  toJSON BodySectionRepeatPageBreakConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "After" Prelude.<$> after]))
instance Property "After" BodySectionRepeatPageBreakConfigurationProperty where
  type PropertyType "After" BodySectionRepeatPageBreakConfigurationProperty = SectionAfterPageBreakProperty
  set newValue BodySectionRepeatPageBreakConfigurationProperty {..}
    = BodySectionRepeatPageBreakConfigurationProperty
        {after = Prelude.pure newValue, ..}