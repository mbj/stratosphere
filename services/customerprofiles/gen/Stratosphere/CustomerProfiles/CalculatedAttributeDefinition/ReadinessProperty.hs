module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ReadinessProperty (
        ReadinessProperty(..), mkReadinessProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReadinessProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-readiness.html>
    ReadinessProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-readiness.html#cfn-customerprofiles-calculatedattributedefinition-readiness-message>
                       message :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-calculatedattributedefinition-readiness.html#cfn-customerprofiles-calculatedattributedefinition-readiness-progresspercentage>
                       progressPercentage :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReadinessProperty :: ReadinessProperty
mkReadinessProperty
  = ReadinessProperty
      {haddock_workaround_ = (), message = Prelude.Nothing,
       progressPercentage = Prelude.Nothing}
instance ToResourceProperties ReadinessProperty where
  toResourceProperties ReadinessProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition.Readiness",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Message" Prelude.<$> message,
                            (JSON..=) "ProgressPercentage" Prelude.<$> progressPercentage])}
instance JSON.ToJSON ReadinessProperty where
  toJSON ReadinessProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Message" Prelude.<$> message,
               (JSON..=) "ProgressPercentage" Prelude.<$> progressPercentage]))
instance Property "Message" ReadinessProperty where
  type PropertyType "Message" ReadinessProperty = Value Prelude.Text
  set newValue ReadinessProperty {..}
    = ReadinessProperty {message = Prelude.pure newValue, ..}
instance Property "ProgressPercentage" ReadinessProperty where
  type PropertyType "ProgressPercentage" ReadinessProperty = Value Prelude.Integer
  set newValue ReadinessProperty {..}
    = ReadinessProperty
        {progressPercentage = Prelude.pure newValue, ..}