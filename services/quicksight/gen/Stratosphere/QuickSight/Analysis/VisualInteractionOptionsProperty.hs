module Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty (
        module Exports, VisualInteractionOptionsProperty(..),
        mkVisualInteractionOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ContextMenuOptionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualMenuOptionProperty as Exports
import Stratosphere.ResourceProperties
data VisualInteractionOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html>
    VisualInteractionOptionsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html#cfn-quicksight-analysis-visualinteractionoptions-contextmenuoption>
                                      contextMenuOption :: (Prelude.Maybe ContextMenuOptionProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualinteractionoptions.html#cfn-quicksight-analysis-visualinteractionoptions-visualmenuoption>
                                      visualMenuOption :: (Prelude.Maybe VisualMenuOptionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualInteractionOptionsProperty ::
  VisualInteractionOptionsProperty
mkVisualInteractionOptionsProperty
  = VisualInteractionOptionsProperty
      {haddock_workaround_ = (), contextMenuOption = Prelude.Nothing,
       visualMenuOption = Prelude.Nothing}
instance ToResourceProperties VisualInteractionOptionsProperty where
  toResourceProperties VisualInteractionOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualInteractionOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContextMenuOption" Prelude.<$> contextMenuOption,
                            (JSON..=) "VisualMenuOption" Prelude.<$> visualMenuOption])}
instance JSON.ToJSON VisualInteractionOptionsProperty where
  toJSON VisualInteractionOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContextMenuOption" Prelude.<$> contextMenuOption,
               (JSON..=) "VisualMenuOption" Prelude.<$> visualMenuOption]))
instance Property "ContextMenuOption" VisualInteractionOptionsProperty where
  type PropertyType "ContextMenuOption" VisualInteractionOptionsProperty = ContextMenuOptionProperty
  set newValue VisualInteractionOptionsProperty {..}
    = VisualInteractionOptionsProperty
        {contextMenuOption = Prelude.pure newValue, ..}
instance Property "VisualMenuOption" VisualInteractionOptionsProperty where
  type PropertyType "VisualMenuOption" VisualInteractionOptionsProperty = VisualMenuOptionProperty
  set newValue VisualInteractionOptionsProperty {..}
    = VisualInteractionOptionsProperty
        {visualMenuOption = Prelude.pure newValue, ..}