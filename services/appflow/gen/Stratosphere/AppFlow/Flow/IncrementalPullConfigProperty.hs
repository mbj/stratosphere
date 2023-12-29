module Stratosphere.AppFlow.Flow.IncrementalPullConfigProperty (
        IncrementalPullConfigProperty(..), mkIncrementalPullConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IncrementalPullConfigProperty
  = IncrementalPullConfigProperty {datetimeTypeFieldName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncrementalPullConfigProperty :: IncrementalPullConfigProperty
mkIncrementalPullConfigProperty
  = IncrementalPullConfigProperty
      {datetimeTypeFieldName = Prelude.Nothing}
instance ToResourceProperties IncrementalPullConfigProperty where
  toResourceProperties IncrementalPullConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.IncrementalPullConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DatetimeTypeFieldName"
                              Prelude.<$> datetimeTypeFieldName])}
instance JSON.ToJSON IncrementalPullConfigProperty where
  toJSON IncrementalPullConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DatetimeTypeFieldName"
                 Prelude.<$> datetimeTypeFieldName]))
instance Property "DatetimeTypeFieldName" IncrementalPullConfigProperty where
  type PropertyType "DatetimeTypeFieldName" IncrementalPullConfigProperty = Value Prelude.Text
  set newValue IncrementalPullConfigProperty {}
    = IncrementalPullConfigProperty
        {datetimeTypeFieldName = Prelude.pure newValue, ..}