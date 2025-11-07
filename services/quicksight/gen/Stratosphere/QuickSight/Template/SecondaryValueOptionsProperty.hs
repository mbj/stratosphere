module Stratosphere.QuickSight.Template.SecondaryValueOptionsProperty (
        SecondaryValueOptionsProperty(..), mkSecondaryValueOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data SecondaryValueOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-secondaryvalueoptions.html>
    SecondaryValueOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-secondaryvalueoptions.html#cfn-quicksight-template-secondaryvalueoptions-visibility>
                                   visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSecondaryValueOptionsProperty :: SecondaryValueOptionsProperty
mkSecondaryValueOptionsProperty
  = SecondaryValueOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties SecondaryValueOptionsProperty where
  toResourceProperties SecondaryValueOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SecondaryValueOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON SecondaryValueOptionsProperty where
  toJSON SecondaryValueOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" SecondaryValueOptionsProperty where
  type PropertyType "Visibility" SecondaryValueOptionsProperty = JSON.Object
  set newValue SecondaryValueOptionsProperty {..}
    = SecondaryValueOptionsProperty
        {visibility = Prelude.pure newValue, ..}