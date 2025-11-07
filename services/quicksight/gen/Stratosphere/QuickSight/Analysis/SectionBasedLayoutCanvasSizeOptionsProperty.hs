module Stratosphere.QuickSight.Analysis.SectionBasedLayoutCanvasSizeOptionsProperty (
        module Exports, SectionBasedLayoutCanvasSizeOptionsProperty(..),
        mkSectionBasedLayoutCanvasSizeOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionBasedLayoutPaperCanvasSizeOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SectionBasedLayoutCanvasSizeOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionbasedlayoutcanvassizeoptions.html>
    SectionBasedLayoutCanvasSizeOptionsProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-sectionbasedlayoutcanvassizeoptions.html#cfn-quicksight-analysis-sectionbasedlayoutcanvassizeoptions-papercanvassizeoptions>
                                                 paperCanvasSizeOptions :: (Prelude.Maybe SectionBasedLayoutPaperCanvasSizeOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSectionBasedLayoutCanvasSizeOptionsProperty ::
  SectionBasedLayoutCanvasSizeOptionsProperty
mkSectionBasedLayoutCanvasSizeOptionsProperty
  = SectionBasedLayoutCanvasSizeOptionsProperty
      {haddock_workaround_ = (),
       paperCanvasSizeOptions = Prelude.Nothing}
instance ToResourceProperties SectionBasedLayoutCanvasSizeOptionsProperty where
  toResourceProperties
    SectionBasedLayoutCanvasSizeOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SectionBasedLayoutCanvasSizeOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PaperCanvasSizeOptions"
                              Prelude.<$> paperCanvasSizeOptions])}
instance JSON.ToJSON SectionBasedLayoutCanvasSizeOptionsProperty where
  toJSON SectionBasedLayoutCanvasSizeOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PaperCanvasSizeOptions"
                 Prelude.<$> paperCanvasSizeOptions]))
instance Property "PaperCanvasSizeOptions" SectionBasedLayoutCanvasSizeOptionsProperty where
  type PropertyType "PaperCanvasSizeOptions" SectionBasedLayoutCanvasSizeOptionsProperty = SectionBasedLayoutPaperCanvasSizeOptionsProperty
  set newValue SectionBasedLayoutCanvasSizeOptionsProperty {..}
    = SectionBasedLayoutCanvasSizeOptionsProperty
        {paperCanvasSizeOptions = Prelude.pure newValue, ..}