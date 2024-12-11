module Stratosphere.ConnectCampaignsV2.Campaign.EmailOutboundConfigProperty (
        EmailOutboundConfigProperty(..), mkEmailOutboundConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailOutboundConfigProperty
  = EmailOutboundConfigProperty {connectSourceEmailAddress :: (Value Prelude.Text),
                                 sourceEmailAddressDisplayName :: (Prelude.Maybe (Value Prelude.Text)),
                                 wisdomTemplateArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailOutboundConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EmailOutboundConfigProperty
mkEmailOutboundConfigProperty
  connectSourceEmailAddress
  wisdomTemplateArn
  = EmailOutboundConfigProperty
      {connectSourceEmailAddress = connectSourceEmailAddress,
       wisdomTemplateArn = wisdomTemplateArn,
       sourceEmailAddressDisplayName = Prelude.Nothing}
instance ToResourceProperties EmailOutboundConfigProperty where
  toResourceProperties EmailOutboundConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.EmailOutboundConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectSourceEmailAddress" JSON..= connectSourceEmailAddress,
                            "WisdomTemplateArn" JSON..= wisdomTemplateArn]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceEmailAddressDisplayName"
                                 Prelude.<$> sourceEmailAddressDisplayName]))}
instance JSON.ToJSON EmailOutboundConfigProperty where
  toJSON EmailOutboundConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectSourceEmailAddress" JSON..= connectSourceEmailAddress,
               "WisdomTemplateArn" JSON..= wisdomTemplateArn]
              (Prelude.catMaybes
                 [(JSON..=) "SourceEmailAddressDisplayName"
                    Prelude.<$> sourceEmailAddressDisplayName])))
instance Property "ConnectSourceEmailAddress" EmailOutboundConfigProperty where
  type PropertyType "ConnectSourceEmailAddress" EmailOutboundConfigProperty = Value Prelude.Text
  set newValue EmailOutboundConfigProperty {..}
    = EmailOutboundConfigProperty
        {connectSourceEmailAddress = newValue, ..}
instance Property "SourceEmailAddressDisplayName" EmailOutboundConfigProperty where
  type PropertyType "SourceEmailAddressDisplayName" EmailOutboundConfigProperty = Value Prelude.Text
  set newValue EmailOutboundConfigProperty {..}
    = EmailOutboundConfigProperty
        {sourceEmailAddressDisplayName = Prelude.pure newValue, ..}
instance Property "WisdomTemplateArn" EmailOutboundConfigProperty where
  type PropertyType "WisdomTemplateArn" EmailOutboundConfigProperty = Value Prelude.Text
  set newValue EmailOutboundConfigProperty {..}
    = EmailOutboundConfigProperty {wisdomTemplateArn = newValue, ..}