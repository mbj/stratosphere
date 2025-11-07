module Stratosphere.QuickSight.Analysis.BodySectionContentProperty (
        module Exports, BodySectionContentProperty(..),
        mkBodySectionContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SectionLayoutConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data BodySectionContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectioncontent.html>
    BodySectionContentProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-bodysectioncontent.html#cfn-quicksight-analysis-bodysectioncontent-layout>
                                layout :: (Prelude.Maybe SectionLayoutConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBodySectionContentProperty :: BodySectionContentProperty
mkBodySectionContentProperty
  = BodySectionContentProperty
      {haddock_workaround_ = (), layout = Prelude.Nothing}
instance ToResourceProperties BodySectionContentProperty where
  toResourceProperties BodySectionContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BodySectionContent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Layout" Prelude.<$> layout])}
instance JSON.ToJSON BodySectionContentProperty where
  toJSON BodySectionContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Layout" Prelude.<$> layout]))
instance Property "Layout" BodySectionContentProperty where
  type PropertyType "Layout" BodySectionContentProperty = SectionLayoutConfigurationProperty
  set newValue BodySectionContentProperty {..}
    = BodySectionContentProperty {layout = Prelude.pure newValue, ..}