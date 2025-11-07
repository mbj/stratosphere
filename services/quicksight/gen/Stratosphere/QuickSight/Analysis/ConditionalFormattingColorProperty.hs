module Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty (
        module Exports, ConditionalFormattingColorProperty(..),
        mkConditionalFormattingColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingGradientColorProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingSolidColorProperty as Exports
import Stratosphere.ResourceProperties
data ConditionalFormattingColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html>
    ConditionalFormattingColorProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html#cfn-quicksight-analysis-conditionalformattingcolor-gradient>
                                        gradient :: (Prelude.Maybe ConditionalFormattingGradientColorProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-conditionalformattingcolor.html#cfn-quicksight-analysis-conditionalformattingcolor-solid>
                                        solid :: (Prelude.Maybe ConditionalFormattingSolidColorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConditionalFormattingColorProperty ::
  ConditionalFormattingColorProperty
mkConditionalFormattingColorProperty
  = ConditionalFormattingColorProperty
      {haddock_workaround_ = (), gradient = Prelude.Nothing,
       solid = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingColorProperty where
  toResourceProperties ConditionalFormattingColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ConditionalFormattingColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Gradient" Prelude.<$> gradient,
                            (JSON..=) "Solid" Prelude.<$> solid])}
instance JSON.ToJSON ConditionalFormattingColorProperty where
  toJSON ConditionalFormattingColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Gradient" Prelude.<$> gradient,
               (JSON..=) "Solid" Prelude.<$> solid]))
instance Property "Gradient" ConditionalFormattingColorProperty where
  type PropertyType "Gradient" ConditionalFormattingColorProperty = ConditionalFormattingGradientColorProperty
  set newValue ConditionalFormattingColorProperty {..}
    = ConditionalFormattingColorProperty
        {gradient = Prelude.pure newValue, ..}
instance Property "Solid" ConditionalFormattingColorProperty where
  type PropertyType "Solid" ConditionalFormattingColorProperty = ConditionalFormattingSolidColorProperty
  set newValue ConditionalFormattingColorProperty {..}
    = ConditionalFormattingColorProperty
        {solid = Prelude.pure newValue, ..}