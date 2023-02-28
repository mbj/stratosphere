module Stratosphere.MediaConnect.Flow.SourcePriorityProperty (
        SourcePriorityProperty(..), mkSourcePriorityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourcePriorityProperty
  = SourcePriorityProperty {primarySource :: (Value Prelude.Text)}
mkSourcePriorityProperty ::
  Value Prelude.Text -> SourcePriorityProperty
mkSourcePriorityProperty primarySource
  = SourcePriorityProperty {primarySource = primarySource}
instance ToResourceProperties SourcePriorityProperty where
  toResourceProperties SourcePriorityProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.SourcePriority",
         supportsTags = Prelude.False,
         properties = ["PrimarySource" JSON..= primarySource]}
instance JSON.ToJSON SourcePriorityProperty where
  toJSON SourcePriorityProperty {..}
    = JSON.object ["PrimarySource" JSON..= primarySource]
instance Property "PrimarySource" SourcePriorityProperty where
  type PropertyType "PrimarySource" SourcePriorityProperty = Value Prelude.Text
  set newValue SourcePriorityProperty {}
    = SourcePriorityProperty {primarySource = newValue, ..}