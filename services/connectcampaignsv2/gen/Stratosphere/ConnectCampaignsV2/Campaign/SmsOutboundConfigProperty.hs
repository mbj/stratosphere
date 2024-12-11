module Stratosphere.ConnectCampaignsV2.Campaign.SmsOutboundConfigProperty (
        SmsOutboundConfigProperty(..), mkSmsOutboundConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmsOutboundConfigProperty
  = SmsOutboundConfigProperty {connectSourcePhoneNumberArn :: (Value Prelude.Text),
                               wisdomTemplateArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsOutboundConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SmsOutboundConfigProperty
mkSmsOutboundConfigProperty
  connectSourcePhoneNumberArn
  wisdomTemplateArn
  = SmsOutboundConfigProperty
      {connectSourcePhoneNumberArn = connectSourcePhoneNumberArn,
       wisdomTemplateArn = wisdomTemplateArn}
instance ToResourceProperties SmsOutboundConfigProperty where
  toResourceProperties SmsOutboundConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.SmsOutboundConfig",
         supportsTags = Prelude.False,
         properties = ["ConnectSourcePhoneNumberArn"
                         JSON..= connectSourcePhoneNumberArn,
                       "WisdomTemplateArn" JSON..= wisdomTemplateArn]}
instance JSON.ToJSON SmsOutboundConfigProperty where
  toJSON SmsOutboundConfigProperty {..}
    = JSON.object
        ["ConnectSourcePhoneNumberArn" JSON..= connectSourcePhoneNumberArn,
         "WisdomTemplateArn" JSON..= wisdomTemplateArn]
instance Property "ConnectSourcePhoneNumberArn" SmsOutboundConfigProperty where
  type PropertyType "ConnectSourcePhoneNumberArn" SmsOutboundConfigProperty = Value Prelude.Text
  set newValue SmsOutboundConfigProperty {..}
    = SmsOutboundConfigProperty
        {connectSourcePhoneNumberArn = newValue, ..}
instance Property "WisdomTemplateArn" SmsOutboundConfigProperty where
  type PropertyType "WisdomTemplateArn" SmsOutboundConfigProperty = Value Prelude.Text
  set newValue SmsOutboundConfigProperty {..}
    = SmsOutboundConfigProperty {wisdomTemplateArn = newValue, ..}