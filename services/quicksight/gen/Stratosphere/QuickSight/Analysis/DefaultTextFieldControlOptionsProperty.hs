module Stratosphere.QuickSight.Analysis.DefaultTextFieldControlOptionsProperty (
        module Exports, DefaultTextFieldControlOptionsProperty(..),
        mkDefaultTextFieldControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TextFieldControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultTextFieldControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaulttextfieldcontroloptions.html>
    DefaultTextFieldControlOptionsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaulttextfieldcontroloptions.html#cfn-quicksight-analysis-defaulttextfieldcontroloptions-displayoptions>
                                            displayOptions :: (Prelude.Maybe TextFieldControlDisplayOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultTextFieldControlOptionsProperty ::
  DefaultTextFieldControlOptionsProperty
mkDefaultTextFieldControlOptionsProperty
  = DefaultTextFieldControlOptionsProperty
      {haddock_workaround_ = (), displayOptions = Prelude.Nothing}
instance ToResourceProperties DefaultTextFieldControlOptionsProperty where
  toResourceProperties DefaultTextFieldControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultTextFieldControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions])}
instance JSON.ToJSON DefaultTextFieldControlOptionsProperty where
  toJSON DefaultTextFieldControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions]))
instance Property "DisplayOptions" DefaultTextFieldControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultTextFieldControlOptionsProperty = TextFieldControlDisplayOptionsProperty
  set newValue DefaultTextFieldControlOptionsProperty {..}
    = DefaultTextFieldControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}