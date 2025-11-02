module Stratosphere.MediaLive.Input.InputSourceRequestProperty (
        InputSourceRequestProperty(..), mkInputSourceRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputSourceRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html>
    InputSourceRequestProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-passwordparam>
                                passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-url>
                                url :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-input-inputsourcerequest.html#cfn-medialive-input-inputsourcerequest-username>
                                username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputSourceRequestProperty :: InputSourceRequestProperty
mkInputSourceRequestProperty
  = InputSourceRequestProperty
      {haddock_workaround_ = (), passwordParam = Prelude.Nothing,
       url = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties InputSourceRequestProperty where
  toResourceProperties InputSourceRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Input.InputSourceRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "Url" Prelude.<$> url,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON InputSourceRequestProperty where
  toJSON InputSourceRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "Url" Prelude.<$> url,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "PasswordParam" InputSourceRequestProperty where
  type PropertyType "PasswordParam" InputSourceRequestProperty = Value Prelude.Text
  set newValue InputSourceRequestProperty {..}
    = InputSourceRequestProperty
        {passwordParam = Prelude.pure newValue, ..}
instance Property "Url" InputSourceRequestProperty where
  type PropertyType "Url" InputSourceRequestProperty = Value Prelude.Text
  set newValue InputSourceRequestProperty {..}
    = InputSourceRequestProperty {url = Prelude.pure newValue, ..}
instance Property "Username" InputSourceRequestProperty where
  type PropertyType "Username" InputSourceRequestProperty = Value Prelude.Text
  set newValue InputSourceRequestProperty {..}
    = InputSourceRequestProperty {username = Prelude.pure newValue, ..}