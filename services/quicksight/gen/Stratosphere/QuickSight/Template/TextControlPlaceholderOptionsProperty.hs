module Stratosphere.QuickSight.Template.TextControlPlaceholderOptionsProperty (
        TextControlPlaceholderOptionsProperty(..),
        mkTextControlPlaceholderOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data TextControlPlaceholderOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-textcontrolplaceholderoptions.html>
    TextControlPlaceholderOptionsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-textcontrolplaceholderoptions.html#cfn-quicksight-template-textcontrolplaceholderoptions-visibility>
                                           visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextControlPlaceholderOptionsProperty ::
  TextControlPlaceholderOptionsProperty
mkTextControlPlaceholderOptionsProperty
  = TextControlPlaceholderOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
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
  type PropertyType "Visibility" TextControlPlaceholderOptionsProperty = JSON.Object
  set newValue TextControlPlaceholderOptionsProperty {..}
    = TextControlPlaceholderOptionsProperty
        {visibility = Prelude.pure newValue, ..}