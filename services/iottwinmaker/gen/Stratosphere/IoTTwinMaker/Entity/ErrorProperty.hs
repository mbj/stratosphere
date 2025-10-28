module Stratosphere.IoTTwinMaker.Entity.ErrorProperty (
        ErrorProperty(..), mkErrorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-error.html>
    ErrorProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-error.html#cfn-iottwinmaker-entity-error-code>
                   code :: (Prelude.Maybe (Value Prelude.Text)),
                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iottwinmaker-entity-error.html#cfn-iottwinmaker-entity-error-message>
                   message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkErrorProperty :: ErrorProperty
mkErrorProperty
  = ErrorProperty {code = Prelude.Nothing, message = Prelude.Nothing}
instance ToResourceProperties ErrorProperty where
  toResourceProperties ErrorProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTTwinMaker::Entity.Error",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Message" Prelude.<$> message])}
instance JSON.ToJSON ErrorProperty where
  toJSON ErrorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Message" Prelude.<$> message]))
instance Property "Code" ErrorProperty where
  type PropertyType "Code" ErrorProperty = Value Prelude.Text
  set newValue ErrorProperty {..}
    = ErrorProperty {code = Prelude.pure newValue, ..}
instance Property "Message" ErrorProperty where
  type PropertyType "Message" ErrorProperty = Value Prelude.Text
  set newValue ErrorProperty {..}
    = ErrorProperty {message = Prelude.pure newValue, ..}