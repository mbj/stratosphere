module Stratosphere.QuickSight.Dashboard.TableConditionalFormattingProperty (
        module Exports, TableConditionalFormattingProperty(..),
        mkTableConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TableConditionalFormattingOptionProperty as Exports
import Stratosphere.ResourceProperties
data TableConditionalFormattingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconditionalformatting.html>
    TableConditionalFormattingProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-tableconditionalformatting.html#cfn-quicksight-dashboard-tableconditionalformatting-conditionalformattingoptions>
                                        conditionalFormattingOptions :: (Prelude.Maybe [TableConditionalFormattingOptionProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableConditionalFormattingProperty ::
  TableConditionalFormattingProperty
mkTableConditionalFormattingProperty
  = TableConditionalFormattingProperty
      {haddock_workaround_ = (),
       conditionalFormattingOptions = Prelude.Nothing}
instance ToResourceProperties TableConditionalFormattingProperty where
  toResourceProperties TableConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.TableConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConditionalFormattingOptions"
                              Prelude.<$> conditionalFormattingOptions])}
instance JSON.ToJSON TableConditionalFormattingProperty where
  toJSON TableConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConditionalFormattingOptions"
                 Prelude.<$> conditionalFormattingOptions]))
instance Property "ConditionalFormattingOptions" TableConditionalFormattingProperty where
  type PropertyType "ConditionalFormattingOptions" TableConditionalFormattingProperty = [TableConditionalFormattingOptionProperty]
  set newValue TableConditionalFormattingProperty {..}
    = TableConditionalFormattingProperty
        {conditionalFormattingOptions = Prelude.pure newValue, ..}