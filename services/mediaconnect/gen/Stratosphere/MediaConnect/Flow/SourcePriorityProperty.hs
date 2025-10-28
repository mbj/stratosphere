module Stratosphere.MediaConnect.Flow.SourcePriorityProperty (
        SourcePriorityProperty(..), mkSourcePriorityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourcePriorityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcepriority.html>
    SourcePriorityProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-sourcepriority.html#cfn-mediaconnect-flow-sourcepriority-primarysource>
                            primarySource :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourcePriorityProperty ::
  Value Prelude.Text -> SourcePriorityProperty
mkSourcePriorityProperty primarySource
  = SourcePriorityProperty
      {haddock_workaround_ = (), primarySource = primarySource}
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
  set newValue SourcePriorityProperty {..}
    = SourcePriorityProperty {primarySource = newValue, ..}