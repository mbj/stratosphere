module Stratosphere.MediaLive.Channel.InputLocationProperty (
        InputLocationProperty(..), mkInputLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputLocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html>
    InputLocationProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-passwordparam>
                           passwordParam :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-uri>
                           uri :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputlocation.html#cfn-medialive-channel-inputlocation-username>
                           username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputLocationProperty :: InputLocationProperty
mkInputLocationProperty
  = InputLocationProperty
      {haddock_workaround_ = (), passwordParam = Prelude.Nothing,
       uri = Prelude.Nothing, username = Prelude.Nothing}
instance ToResourceProperties InputLocationProperty where
  toResourceProperties InputLocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputLocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
                            (JSON..=) "Uri" Prelude.<$> uri,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON InputLocationProperty where
  toJSON InputLocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PasswordParam" Prelude.<$> passwordParam,
               (JSON..=) "Uri" Prelude.<$> uri,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "PasswordParam" InputLocationProperty where
  type PropertyType "PasswordParam" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {passwordParam = Prelude.pure newValue, ..}
instance Property "Uri" InputLocationProperty where
  type PropertyType "Uri" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {uri = Prelude.pure newValue, ..}
instance Property "Username" InputLocationProperty where
  type PropertyType "Username" InputLocationProperty = Value Prelude.Text
  set newValue InputLocationProperty {..}
    = InputLocationProperty {username = Prelude.pure newValue, ..}