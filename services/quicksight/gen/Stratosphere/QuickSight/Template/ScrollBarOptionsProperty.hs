module Stratosphere.QuickSight.Template.ScrollBarOptionsProperty (
        module Exports, ScrollBarOptionsProperty(..),
        mkScrollBarOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisibleRangeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data ScrollBarOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scrollbaroptions.html>
    ScrollBarOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scrollbaroptions.html#cfn-quicksight-template-scrollbaroptions-visibility>
                              visibility :: (Prelude.Maybe JSON.Object),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scrollbaroptions.html#cfn-quicksight-template-scrollbaroptions-visiblerange>
                              visibleRange :: (Prelude.Maybe VisibleRangeOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScrollBarOptionsProperty :: ScrollBarOptionsProperty
mkScrollBarOptionsProperty
  = ScrollBarOptionsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing,
       visibleRange = Prelude.Nothing}
instance ToResourceProperties ScrollBarOptionsProperty where
  toResourceProperties ScrollBarOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ScrollBarOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility,
                            (JSON..=) "VisibleRange" Prelude.<$> visibleRange])}
instance JSON.ToJSON ScrollBarOptionsProperty where
  toJSON ScrollBarOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility,
               (JSON..=) "VisibleRange" Prelude.<$> visibleRange]))
instance Property "Visibility" ScrollBarOptionsProperty where
  type PropertyType "Visibility" ScrollBarOptionsProperty = JSON.Object
  set newValue ScrollBarOptionsProperty {..}
    = ScrollBarOptionsProperty {visibility = Prelude.pure newValue, ..}
instance Property "VisibleRange" ScrollBarOptionsProperty where
  type PropertyType "VisibleRange" ScrollBarOptionsProperty = VisibleRangeOptionsProperty
  set newValue ScrollBarOptionsProperty {..}
    = ScrollBarOptionsProperty
        {visibleRange = Prelude.pure newValue, ..}