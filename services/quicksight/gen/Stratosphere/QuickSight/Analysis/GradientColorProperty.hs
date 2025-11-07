module Stratosphere.QuickSight.Analysis.GradientColorProperty (
        module Exports, GradientColorProperty(..), mkGradientColorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GradientStopProperty as Exports
import Stratosphere.ResourceProperties
data GradientColorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gradientcolor.html>
    GradientColorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gradientcolor.html#cfn-quicksight-analysis-gradientcolor-stops>
                           stops :: (Prelude.Maybe [GradientStopProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGradientColorProperty :: GradientColorProperty
mkGradientColorProperty
  = GradientColorProperty
      {haddock_workaround_ = (), stops = Prelude.Nothing}
instance ToResourceProperties GradientColorProperty where
  toResourceProperties GradientColorProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GradientColor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Stops" Prelude.<$> stops])}
instance JSON.ToJSON GradientColorProperty where
  toJSON GradientColorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Stops" Prelude.<$> stops]))
instance Property "Stops" GradientColorProperty where
  type PropertyType "Stops" GradientColorProperty = [GradientStopProperty]
  set newValue GradientColorProperty {..}
    = GradientColorProperty {stops = Prelude.pure newValue, ..}