module Stratosphere.KinesisAnalyticsV2.Application.InputParallelismProperty (
        InputParallelismProperty(..), mkInputParallelismProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputParallelismProperty
  = InputParallelismProperty {count :: (Prelude.Maybe (Value Prelude.Integer))}
mkInputParallelismProperty :: InputParallelismProperty
mkInputParallelismProperty
  = InputParallelismProperty {count = Prelude.Nothing}
instance ToResourceProperties InputParallelismProperty where
  toResourceProperties InputParallelismProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.InputParallelism",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON InputParallelismProperty where
  toJSON InputParallelismProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count]))
instance Property "Count" InputParallelismProperty where
  type PropertyType "Count" InputParallelismProperty = Value Prelude.Integer
  set newValue InputParallelismProperty {}
    = InputParallelismProperty {count = Prelude.pure newValue, ..}