module Stratosphere.QuickSight.Analysis.WordCloudOptionsProperty (
        WordCloudOptionsProperty(..), mkWordCloudOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WordCloudOptionsProperty
  = WordCloudOptionsProperty {cloudLayout :: (Prelude.Maybe (Value Prelude.Text)),
                              maximumStringLength :: (Prelude.Maybe (Value Prelude.Double)),
                              wordCasing :: (Prelude.Maybe (Value Prelude.Text)),
                              wordOrientation :: (Prelude.Maybe (Value Prelude.Text)),
                              wordPadding :: (Prelude.Maybe (Value Prelude.Text)),
                              wordScaling :: (Prelude.Maybe (Value Prelude.Text))}
mkWordCloudOptionsProperty :: WordCloudOptionsProperty
mkWordCloudOptionsProperty
  = WordCloudOptionsProperty
      {cloudLayout = Prelude.Nothing,
       maximumStringLength = Prelude.Nothing,
       wordCasing = Prelude.Nothing, wordOrientation = Prelude.Nothing,
       wordPadding = Prelude.Nothing, wordScaling = Prelude.Nothing}
instance ToResourceProperties WordCloudOptionsProperty where
  toResourceProperties WordCloudOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WordCloudOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudLayout" Prelude.<$> cloudLayout,
                            (JSON..=) "MaximumStringLength" Prelude.<$> maximumStringLength,
                            (JSON..=) "WordCasing" Prelude.<$> wordCasing,
                            (JSON..=) "WordOrientation" Prelude.<$> wordOrientation,
                            (JSON..=) "WordPadding" Prelude.<$> wordPadding,
                            (JSON..=) "WordScaling" Prelude.<$> wordScaling])}
instance JSON.ToJSON WordCloudOptionsProperty where
  toJSON WordCloudOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudLayout" Prelude.<$> cloudLayout,
               (JSON..=) "MaximumStringLength" Prelude.<$> maximumStringLength,
               (JSON..=) "WordCasing" Prelude.<$> wordCasing,
               (JSON..=) "WordOrientation" Prelude.<$> wordOrientation,
               (JSON..=) "WordPadding" Prelude.<$> wordPadding,
               (JSON..=) "WordScaling" Prelude.<$> wordScaling]))
instance Property "CloudLayout" WordCloudOptionsProperty where
  type PropertyType "CloudLayout" WordCloudOptionsProperty = Value Prelude.Text
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty
        {cloudLayout = Prelude.pure newValue, ..}
instance Property "MaximumStringLength" WordCloudOptionsProperty where
  type PropertyType "MaximumStringLength" WordCloudOptionsProperty = Value Prelude.Double
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty
        {maximumStringLength = Prelude.pure newValue, ..}
instance Property "WordCasing" WordCloudOptionsProperty where
  type PropertyType "WordCasing" WordCloudOptionsProperty = Value Prelude.Text
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty {wordCasing = Prelude.pure newValue, ..}
instance Property "WordOrientation" WordCloudOptionsProperty where
  type PropertyType "WordOrientation" WordCloudOptionsProperty = Value Prelude.Text
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty
        {wordOrientation = Prelude.pure newValue, ..}
instance Property "WordPadding" WordCloudOptionsProperty where
  type PropertyType "WordPadding" WordCloudOptionsProperty = Value Prelude.Text
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty
        {wordPadding = Prelude.pure newValue, ..}
instance Property "WordScaling" WordCloudOptionsProperty where
  type PropertyType "WordScaling" WordCloudOptionsProperty = Value Prelude.Text
  set newValue WordCloudOptionsProperty {..}
    = WordCloudOptionsProperty
        {wordScaling = Prelude.pure newValue, ..}