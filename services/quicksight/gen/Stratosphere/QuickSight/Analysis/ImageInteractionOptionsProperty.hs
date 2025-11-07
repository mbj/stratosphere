module Stratosphere.QuickSight.Analysis.ImageInteractionOptionsProperty (
        module Exports, ImageInteractionOptionsProperty(..),
        mkImageInteractionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ImageMenuOptionProperty as Exports
import Stratosphere.ResourceProperties
data ImageInteractionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imageinteractionoptions.html>
    ImageInteractionOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-imageinteractionoptions.html#cfn-quicksight-analysis-imageinteractionoptions-imagemenuoption>
                                     imageMenuOption :: (Prelude.Maybe ImageMenuOptionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkImageInteractionOptionsProperty ::
  ImageInteractionOptionsProperty
mkImageInteractionOptionsProperty
  = ImageInteractionOptionsProperty
      {haddock_workaround_ = (), imageMenuOption = Prelude.Nothing}
instance ToResourceProperties ImageInteractionOptionsProperty where
  toResourceProperties ImageInteractionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ImageInteractionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageMenuOption" Prelude.<$> imageMenuOption])}
instance JSON.ToJSON ImageInteractionOptionsProperty where
  toJSON ImageInteractionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageMenuOption" Prelude.<$> imageMenuOption]))
instance Property "ImageMenuOption" ImageInteractionOptionsProperty where
  type PropertyType "ImageMenuOption" ImageInteractionOptionsProperty = ImageMenuOptionProperty
  set newValue ImageInteractionOptionsProperty {..}
    = ImageInteractionOptionsProperty
        {imageMenuOption = Prelude.pure newValue, ..}