module Stratosphere.QuickSight.Template.DefaultTextAreaControlOptionsProperty (
        module Exports, DefaultTextAreaControlOptionsProperty(..),
        mkDefaultTextAreaControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TextAreaControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultTextAreaControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaulttextareacontroloptions.html>
    DefaultTextAreaControlOptionsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaulttextareacontroloptions.html#cfn-quicksight-template-defaulttextareacontroloptions-delimiter>
                                           delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-defaulttextareacontroloptions.html#cfn-quicksight-template-defaulttextareacontroloptions-displayoptions>
                                           displayOptions :: (Prelude.Maybe TextAreaControlDisplayOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultTextAreaControlOptionsProperty ::
  DefaultTextAreaControlOptionsProperty
mkDefaultTextAreaControlOptionsProperty
  = DefaultTextAreaControlOptionsProperty
      {haddock_workaround_ = (), delimiter = Prelude.Nothing,
       displayOptions = Prelude.Nothing}
instance ToResourceProperties DefaultTextAreaControlOptionsProperty where
  toResourceProperties DefaultTextAreaControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DefaultTextAreaControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "DisplayOptions" Prelude.<$> displayOptions])}
instance JSON.ToJSON DefaultTextAreaControlOptionsProperty where
  toJSON DefaultTextAreaControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))
instance Property "Delimiter" DefaultTextAreaControlOptionsProperty where
  type PropertyType "Delimiter" DefaultTextAreaControlOptionsProperty = Value Prelude.Text
  set newValue DefaultTextAreaControlOptionsProperty {..}
    = DefaultTextAreaControlOptionsProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "DisplayOptions" DefaultTextAreaControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultTextAreaControlOptionsProperty = TextAreaControlDisplayOptionsProperty
  set newValue DefaultTextAreaControlOptionsProperty {..}
    = DefaultTextAreaControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}