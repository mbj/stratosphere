module Stratosphere.QuickSight.Analysis.SingleAxisOptionsProperty (
        module Exports, SingleAxisOptionsProperty(..),
        mkSingleAxisOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.YAxisOptionsProperty as Exports
import Stratosphere.ResourceProperties
data SingleAxisOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-singleaxisoptions.html>
    SingleAxisOptionsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-singleaxisoptions.html#cfn-quicksight-analysis-singleaxisoptions-yaxisoptions>
                               yAxisOptions :: (Prelude.Maybe YAxisOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleAxisOptionsProperty :: SingleAxisOptionsProperty
mkSingleAxisOptionsProperty
  = SingleAxisOptionsProperty
      {haddock_workaround_ = (), yAxisOptions = Prelude.Nothing}
instance ToResourceProperties SingleAxisOptionsProperty where
  toResourceProperties SingleAxisOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SingleAxisOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "YAxisOptions" Prelude.<$> yAxisOptions])}
instance JSON.ToJSON SingleAxisOptionsProperty where
  toJSON SingleAxisOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "YAxisOptions" Prelude.<$> yAxisOptions]))
instance Property "YAxisOptions" SingleAxisOptionsProperty where
  type PropertyType "YAxisOptions" SingleAxisOptionsProperty = YAxisOptionsProperty
  set newValue SingleAxisOptionsProperty {..}
    = SingleAxisOptionsProperty
        {yAxisOptions = Prelude.pure newValue, ..}