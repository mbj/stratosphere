module Stratosphere.MediaConnect.Bridge.SourcePriorityProperty (
        SourcePriorityProperty(..), mkSourcePriorityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourcePriorityProperty
  = SourcePriorityProperty {primarySource :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourcePriorityProperty :: SourcePriorityProperty
mkSourcePriorityProperty
  = SourcePriorityProperty {primarySource = Prelude.Nothing}
instance ToResourceProperties SourcePriorityProperty where
  toResourceProperties SourcePriorityProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Bridge.SourcePriority",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PrimarySource" Prelude.<$> primarySource])}
instance JSON.ToJSON SourcePriorityProperty where
  toJSON SourcePriorityProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PrimarySource" Prelude.<$> primarySource]))
instance Property "PrimarySource" SourcePriorityProperty where
  type PropertyType "PrimarySource" SourcePriorityProperty = Value Prelude.Text
  set newValue SourcePriorityProperty {}
    = SourcePriorityProperty
        {primarySource = Prelude.pure newValue, ..}