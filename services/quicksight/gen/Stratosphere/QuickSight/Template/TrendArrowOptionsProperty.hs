module Stratosphere.QuickSight.Template.TrendArrowOptionsProperty (
        TrendArrowOptionsProperty(..), mkTrendArrowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrendArrowOptionsProperty
  = TrendArrowOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkTrendArrowOptionsProperty :: TrendArrowOptionsProperty
mkTrendArrowOptionsProperty
  = TrendArrowOptionsProperty {visibility = Prelude.Nothing}
instance ToResourceProperties TrendArrowOptionsProperty where
  toResourceProperties TrendArrowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TrendArrowOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON TrendArrowOptionsProperty where
  toJSON TrendArrowOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" TrendArrowOptionsProperty where
  type PropertyType "Visibility" TrendArrowOptionsProperty = Value Prelude.Text
  set newValue TrendArrowOptionsProperty {}
    = TrendArrowOptionsProperty
        {visibility = Prelude.pure newValue, ..}