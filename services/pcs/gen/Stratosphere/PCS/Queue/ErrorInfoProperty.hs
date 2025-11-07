module Stratosphere.PCS.Queue.ErrorInfoProperty (
        ErrorInfoProperty(..), mkErrorInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ErrorInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-queue-errorinfo.html>
    ErrorInfoProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-queue-errorinfo.html#cfn-pcs-queue-errorinfo-code>
                       code :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pcs-queue-errorinfo.html#cfn-pcs-queue-errorinfo-message>
                       message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkErrorInfoProperty :: ErrorInfoProperty
mkErrorInfoProperty
  = ErrorInfoProperty
      {haddock_workaround_ = (), code = Prelude.Nothing,
       message = Prelude.Nothing}
instance ToResourceProperties ErrorInfoProperty where
  toResourceProperties ErrorInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCS::Queue.ErrorInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Code" Prelude.<$> code,
                            (JSON..=) "Message" Prelude.<$> message])}
instance JSON.ToJSON ErrorInfoProperty where
  toJSON ErrorInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Code" Prelude.<$> code,
               (JSON..=) "Message" Prelude.<$> message]))
instance Property "Code" ErrorInfoProperty where
  type PropertyType "Code" ErrorInfoProperty = Value Prelude.Text
  set newValue ErrorInfoProperty {..}
    = ErrorInfoProperty {code = Prelude.pure newValue, ..}
instance Property "Message" ErrorInfoProperty where
  type PropertyType "Message" ErrorInfoProperty = Value Prelude.Text
  set newValue ErrorInfoProperty {..}
    = ErrorInfoProperty {message = Prelude.pure newValue, ..}