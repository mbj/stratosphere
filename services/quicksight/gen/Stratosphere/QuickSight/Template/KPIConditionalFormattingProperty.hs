module Stratosphere.QuickSight.Template.KPIConditionalFormattingProperty (
        module Exports, KPIConditionalFormattingProperty(..),
        mkKPIConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data KPIConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconditionalformatting.html>
    KPIConditionalFormattingProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-kpiconditionalformatting.html#cfn-quicksight-template-kpiconditionalformatting-conditionalformattingoptions>
                                      conditionalFormattingOptions :: (Prelude.Maybe [KPIConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIConditionalFormattingProperty ::
  KPIConditionalFormattingProperty
mkKPIConditionalFormattingProperty
  = KPIConditionalFormattingProperty
      {haddock_workaround_ = (),
       conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties KPIConditionalFormattingProperty where
  toResourceProperties KPIConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON KPIConditionalFormattingProperty where
  toJSON KPIConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" KPIConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" KPIConditionalFormattingProperty = [KPIConditionalFormattingOptionProperty]
  set newValue KPIConditionalFormattingProperty {..}
    = KPIConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}