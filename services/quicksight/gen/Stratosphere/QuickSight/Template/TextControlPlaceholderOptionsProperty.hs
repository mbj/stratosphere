module Stratosphere.QuickSight.Template.TextControlPlaceholderOptionsProperty (
        TextControlPlaceholderOptionsProperty(..),
        mkTextControlPlaceholderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextControlPlaceholderOptionsProperty
  = TextControlPlaceholderOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkTextControlPlaceholderOptionsProperty ::
  TextControlPlaceholderOptionsProperty
mkTextControlPlaceholderOptionsProperty
  = TextControlPlaceholderOptionsProperty
      {visibility = Prelude.Nothing}
instance ToResourceProperties TextControlPlaceholderOptionsProperty where
  toResourceProperties TextControlPlaceholderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TextControlPlaceholderOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON TextControlPlaceholderOptionsProperty where
  toJSON TextControlPlaceholderOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" TextControlPlaceholderOptionsProperty where
  type PropertyType "Visibility" TextControlPlaceholderOptionsProperty = Value Prelude.Text
  set newValue TextControlPlaceholderOptionsProperty {}
    = TextControlPlaceholderOptionsProperty
        {visibility = Prelude.pure newValue, ..}