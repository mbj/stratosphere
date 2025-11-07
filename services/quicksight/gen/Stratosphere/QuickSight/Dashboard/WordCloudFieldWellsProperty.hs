module Stratosphere.QuickSight.Dashboard.WordCloudFieldWellsProperty (
        module Exports, WordCloudFieldWellsProperty(..),
        mkWordCloudFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WordCloudAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data WordCloudFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudfieldwells.html>
    WordCloudFieldWellsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-wordcloudfieldwells.html#cfn-quicksight-dashboard-wordcloudfieldwells-wordcloudaggregatedfieldwells>
                                 wordCloudAggregatedFieldWells :: (Prelude.Maybe WordCloudAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWordCloudFieldWellsProperty :: WordCloudFieldWellsProperty
mkWordCloudFieldWellsProperty
  = WordCloudFieldWellsProperty
      {haddock_workaround_ = (),
       wordCloudAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties WordCloudFieldWellsProperty where
  toResourceProperties WordCloudFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WordCloudFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WordCloudAggregatedFieldWells"
                              Prelude.<$> wordCloudAggregatedFieldWells])}
instance JSON.ToJSON WordCloudFieldWellsProperty where
  toJSON WordCloudFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WordCloudAggregatedFieldWells"
                 Prelude.<$> wordCloudAggregatedFieldWells]))
instance Property "WordCloudAggregatedFieldWells" WordCloudFieldWellsProperty where
  type PropertyType "WordCloudAggregatedFieldWells" WordCloudFieldWellsProperty = WordCloudAggregatedFieldWellsProperty
  set newValue WordCloudFieldWellsProperty {..}
    = WordCloudFieldWellsProperty
        {wordCloudAggregatedFieldWells = Prelude.pure newValue, ..}