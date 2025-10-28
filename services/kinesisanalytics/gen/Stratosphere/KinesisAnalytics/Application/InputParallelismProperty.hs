module Stratosphere.KinesisAnalytics.Application.InputParallelismProperty (
        InputParallelismProperty(..), mkInputParallelismProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputParallelismProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html>
    InputParallelismProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-inputparallelism.html#cfn-kinesisanalytics-application-inputparallelism-count>
                              count :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputParallelismProperty :: InputParallelismProperty
mkInputParallelismProperty
  = InputParallelismProperty
      {haddock_workaround_ = (), count = Prelude.Nothing}
instance ToResourceProperties InputParallelismProperty where
  toResourceProperties InputParallelismProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalytics::Application.InputParallelism",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON InputParallelismProperty where
  toJSON InputParallelismProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Count" Prelude.<$> count]))
instance Property "Count" InputParallelismProperty where
  type PropertyType "Count" InputParallelismProperty = Value Prelude.Integer
  set newValue InputParallelismProperty {..}
    = InputParallelismProperty {count = Prelude.pure newValue, ..}