module Stratosphere.QuickSight.Dashboard.SectionBasedLayoutPaperCanvasSizeOptionsProperty (
        module Exports,
        SectionBasedLayoutPaperCanvasSizeOptionsProperty(..),
        mkSectionBasedLayoutPaperCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SpacingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionBasedLayoutPaperCanvasSizeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions.html>
    SectionBasedLayoutPaperCanvasSizeOptionsProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions.html#cfn-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions-papermargin>
                                                      paperMargin :: (Prelude.Maybe SpacingProperty),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions.html#cfn-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions-paperorientation>
                                                      paperOrientation :: (Prelude.Maybe (Value Prelude.Text)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions.html#cfn-quicksight-dashboard-sectionbasedlayoutpapercanvassizeoptions-papersize>
                                                      paperSize :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionBasedLayoutPaperCanvasSizeOptionsProperty ::
  SectionBasedLayoutPaperCanvasSizeOptionsProperty
mkSectionBasedLayoutPaperCanvasSizeOptionsProperty
  = SectionBasedLayoutPaperCanvasSizeOptionsProperty
      {haddock_workaround_ = (), paperMargin = Prelude.Nothing,
       paperOrientation = Prelude.Nothing, paperSize = Prelude.Nothing}
instance ToResourceProperties SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  toResourceProperties
    SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.SectionBasedLayoutPaperCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PaperMargin" Prelude.<$> paperMargin,
                            (JSON..=) "PaperOrientation" Prelude.<$> paperOrientation,
                            (JSON..=) "PaperSize" Prelude.<$> paperSize])}
instance JSON.ToJSON SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  toJSON SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PaperMargin" Prelude.<$> paperMargin,
               (JSON..=) "PaperOrientation" Prelude.<$> paperOrientation,
               (JSON..=) "PaperSize" Prelude.<$> paperSize]))
instance Property "PaperMargin" SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  type PropertyType "PaperMargin" SectionBasedLayoutPaperCanvasSizeOptionsProperty = SpacingProperty
  set newValue SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = SectionBasedLayoutPaperCanvasSizeOptionsProperty
        {paperMargin = Prelude.pure newValue, ..}
instance Property "PaperOrientation" SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  type PropertyType "PaperOrientation" SectionBasedLayoutPaperCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = SectionBasedLayoutPaperCanvasSizeOptionsProperty
        {paperOrientation = Prelude.pure newValue, ..}
instance Property "PaperSize" SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  type PropertyType "PaperSize" SectionBasedLayoutPaperCanvasSizeOptionsProperty = Value Prelude.Text
  set newValue SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = SectionBasedLayoutPaperCanvasSizeOptionsProperty
        {paperSize = Prelude.pure newValue, ..}