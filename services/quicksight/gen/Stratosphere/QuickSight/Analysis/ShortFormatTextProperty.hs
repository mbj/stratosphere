module Stratosphere.QuickSight.Analysis.ShortFormatTextProperty (
        ShortFormatTextProperty(..), mkShortFormatTextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ShortFormatTextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-shortformattext.html>
    ShortFormatTextProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-shortformattext.html#cfn-quicksight-analysis-shortformattext-plaintext>
                             plainText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-shortformattext.html#cfn-quicksight-analysis-shortformattext-richtext>
                             richText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShortFormatTextProperty :: ShortFormatTextProperty
mkShortFormatTextProperty
  = ShortFormatTextProperty
      {haddock_workaround_ = (), plainText = Prelude.Nothing,
       richText = Prelude.Nothing}
instance ToResourceProperties ShortFormatTextProperty where
  toResourceProperties ShortFormatTextProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ShortFormatText",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PlainText" Prelude.<$> plainText,
                            (JSON..=) "RichText" Prelude.<$> richText])}
instance JSON.ToJSON ShortFormatTextProperty where
  toJSON ShortFormatTextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PlainText" Prelude.<$> plainText,
               (JSON..=) "RichText" Prelude.<$> richText]))
instance Property "PlainText" ShortFormatTextProperty where
  type PropertyType "PlainText" ShortFormatTextProperty = Value Prelude.Text
  set newValue ShortFormatTextProperty {..}
    = ShortFormatTextProperty {plainText = Prelude.pure newValue, ..}
instance Property "RichText" ShortFormatTextProperty where
  type PropertyType "RichText" ShortFormatTextProperty = Value Prelude.Text
  set newValue ShortFormatTextProperty {..}
    = ShortFormatTextProperty {richText = Prelude.pure newValue, ..}