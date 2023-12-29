module Stratosphere.Pinpoint.SMSChannel (
        SMSChannel(..), mkSMSChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SMSChannel
  = SMSChannel {applicationId :: (Value Prelude.Text),
                enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                senderId :: (Prelude.Maybe (Value Prelude.Text)),
                shortCode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSMSChannel :: Value Prelude.Text -> SMSChannel
mkSMSChannel applicationId
  = SMSChannel
      {applicationId = applicationId, enabled = Prelude.Nothing,
       senderId = Prelude.Nothing, shortCode = Prelude.Nothing}
instance ToResourceProperties SMSChannel where
  toResourceProperties SMSChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::SMSChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "SenderId" Prelude.<$> senderId,
                               (JSON..=) "ShortCode" Prelude.<$> shortCode]))}
instance JSON.ToJSON SMSChannel where
  toJSON SMSChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "SenderId" Prelude.<$> senderId,
                  (JSON..=) "ShortCode" Prelude.<$> shortCode])))
instance Property "ApplicationId" SMSChannel where
  type PropertyType "ApplicationId" SMSChannel = Value Prelude.Text
  set newValue SMSChannel {..}
    = SMSChannel {applicationId = newValue, ..}
instance Property "Enabled" SMSChannel where
  type PropertyType "Enabled" SMSChannel = Value Prelude.Bool
  set newValue SMSChannel {..}
    = SMSChannel {enabled = Prelude.pure newValue, ..}
instance Property "SenderId" SMSChannel where
  type PropertyType "SenderId" SMSChannel = Value Prelude.Text
  set newValue SMSChannel {..}
    = SMSChannel {senderId = Prelude.pure newValue, ..}
instance Property "ShortCode" SMSChannel where
  type PropertyType "ShortCode" SMSChannel = Value Prelude.Text
  set newValue SMSChannel {..}
    = SMSChannel {shortCode = Prelude.pure newValue, ..}