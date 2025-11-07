module Stratosphere.QuickSight.Template.ThousandSeparatorOptionsProperty (
        ThousandSeparatorOptionsProperty(..),
        mkThousandSeparatorOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ThousandSeparatorOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-thousandseparatoroptions.html>
    ThousandSeparatorOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-thousandseparatoroptions.html#cfn-quicksight-template-thousandseparatoroptions-groupingstyle>
                                      groupingStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-thousandseparatoroptions.html#cfn-quicksight-template-thousandseparatoroptions-symbol>
                                      symbol :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-thousandseparatoroptions.html#cfn-quicksight-template-thousandseparatoroptions-visibility>
                                      visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkThousandSeparatorOptionsProperty ::
  ThousandSeparatorOptionsProperty
mkThousandSeparatorOptionsProperty
  = ThousandSeparatorOptionsProperty
      {haddock_workaround_ = (), groupingStyle = Prelude.Nothing,
       symbol = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ThousandSeparatorOptionsProperty where
  toResourceProperties ThousandSeparatorOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ThousandSeparatorOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupingStyle" Prelude.<$> groupingStyle,
                            (JSON..=) "Symbol" Prelude.<$> symbol,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ThousandSeparatorOptionsProperty where
  toJSON ThousandSeparatorOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupingStyle" Prelude.<$> groupingStyle,
               (JSON..=) "Symbol" Prelude.<$> symbol,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "GroupingStyle" ThousandSeparatorOptionsProperty where
  type PropertyType "GroupingStyle" ThousandSeparatorOptionsProperty = Value Prelude.Text
  set newValue ThousandSeparatorOptionsProperty {..}
    = ThousandSeparatorOptionsProperty
        {groupingStyle = Prelude.pure newValue, ..}
instance Property "Symbol" ThousandSeparatorOptionsProperty where
  type PropertyType "Symbol" ThousandSeparatorOptionsProperty = Value Prelude.Text
  set newValue ThousandSeparatorOptionsProperty {..}
    = ThousandSeparatorOptionsProperty
        {symbol = Prelude.pure newValue, ..}
instance Property "Visibility" ThousandSeparatorOptionsProperty where
  type PropertyType "Visibility" ThousandSeparatorOptionsProperty = JSON.Object
  set newValue ThousandSeparatorOptionsProperty {..}
    = ThousandSeparatorOptionsProperty
        {visibility = Prelude.pure newValue, ..}