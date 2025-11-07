module Stratosphere.QuickSight.Template.LongFormatTextProperty (
        LongFormatTextProperty(..), mkLongFormatTextProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LongFormatTextProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-longformattext.html>
    LongFormatTextProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-longformattext.html#cfn-quicksight-template-longformattext-plaintext>
                            plainText :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-longformattext.html#cfn-quicksight-template-longformattext-richtext>
                            richText :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLongFormatTextProperty :: LongFormatTextProperty
mkLongFormatTextProperty
  = LongFormatTextProperty
      {haddock_workaround_ = (), plainText = Prelude.Nothing,
       richText = Prelude.Nothing}
instance ToResourceProperties LongFormatTextProperty where
  toResourceProperties LongFormatTextProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LongFormatText",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PlainText" Prelude.<$> plainText,
                            (JSON..=) "RichText" Prelude.<$> richText])}
instance JSON.ToJSON LongFormatTextProperty where
  toJSON LongFormatTextProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PlainText" Prelude.<$> plainText,
               (JSON..=) "RichText" Prelude.<$> richText]))
instance Property "PlainText" LongFormatTextProperty where
  type PropertyType "PlainText" LongFormatTextProperty = Value Prelude.Text
  set newValue LongFormatTextProperty {..}
    = LongFormatTextProperty {plainText = Prelude.pure newValue, ..}
instance Property "RichText" LongFormatTextProperty where
  type PropertyType "RichText" LongFormatTextProperty = Value Prelude.Text
  set newValue LongFormatTextProperty {..}
    = LongFormatTextProperty {richText = Prelude.pure newValue, ..}