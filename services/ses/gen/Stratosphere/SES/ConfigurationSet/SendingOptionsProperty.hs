module Stratosphere.SES.ConfigurationSet.SendingOptionsProperty (
        SendingOptionsProperty(..), mkSendingOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SendingOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-sendingoptions.html>
    SendingOptionsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-configurationset-sendingoptions.html#cfn-ses-configurationset-sendingoptions-sendingenabled>
                            sendingEnabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSendingOptionsProperty :: SendingOptionsProperty
mkSendingOptionsProperty
  = SendingOptionsProperty
      {haddock_workaround_ = (), sendingEnabled = Prelude.Nothing}
instance ToResourceProperties SendingOptionsProperty where
  toResourceProperties SendingOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.SendingOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SendingEnabled" Prelude.<$> sendingEnabled])}
instance JSON.ToJSON SendingOptionsProperty where
  toJSON SendingOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SendingEnabled" Prelude.<$> sendingEnabled]))
instance Property "SendingEnabled" SendingOptionsProperty where
  type PropertyType "SendingEnabled" SendingOptionsProperty = Value Prelude.Bool
  set newValue SendingOptionsProperty {..}
    = SendingOptionsProperty
        {sendingEnabled = Prelude.pure newValue, ..}