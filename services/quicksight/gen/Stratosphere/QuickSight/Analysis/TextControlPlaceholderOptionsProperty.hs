module Stratosphere.QuickSight.Analysis.TextControlPlaceholderOptionsProperty (
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
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextControlPlaceholderOptionsProperty ::
  TextControlPlaceholderOptionsProperty
mkTextControlPlaceholderOptionsProperty
  = TextControlPlaceholderOptionsProperty
      {visibility = Prelude.Nothing}
instance ToResourceProperties TextControlPlaceholderOptionsProperty where
  toResourceProperties TextControlPlaceholderOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TextControlPlaceholderOptions",
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