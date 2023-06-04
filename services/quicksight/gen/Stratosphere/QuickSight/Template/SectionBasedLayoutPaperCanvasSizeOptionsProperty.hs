module Stratosphere.QuickSight.Template.SectionBasedLayoutPaperCanvasSizeOptionsProperty (
        module Exports,
        SectionBasedLayoutPaperCanvasSizeOptionsProperty(..),
        mkSectionBasedLayoutPaperCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SpacingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SectionBasedLayoutPaperCanvasSizeOptionsProperty
  = SectionBasedLayoutPaperCanvasSizeOptionsProperty {paperMargin :: (Prelude.Maybe SpacingProperty),
                                                      paperOrientation :: (Prelude.Maybe (Value Prelude.Text)),
                                                      paperSize :: (Prelude.Maybe (Value Prelude.Text))}
mkSectionBasedLayoutPaperCanvasSizeOptionsProperty ::
  SectionBasedLayoutPaperCanvasSizeOptionsProperty
mkSectionBasedLayoutPaperCanvasSizeOptionsProperty
  = SectionBasedLayoutPaperCanvasSizeOptionsProperty
      {paperMargin = Prelude.Nothing, paperOrientation = Prelude.Nothing,
       paperSize = Prelude.Nothing}
instance ToResourceProperties SectionBasedLayoutPaperCanvasSizeOptionsProperty where
  toResourceProperties
    SectionBasedLayoutPaperCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.SectionBasedLayoutPaperCanvasSizeOptions",
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