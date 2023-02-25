module Stratosphere.Pinpoint.Campaign.CampaignEmailMessageProperty (
        CampaignEmailMessageProperty(..), mkCampaignEmailMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignEmailMessageProperty
  = CampaignEmailMessageProperty {body :: (Prelude.Maybe (Value Prelude.Text)),
                                  fromAddress :: (Prelude.Maybe (Value Prelude.Text)),
                                  htmlBody :: (Prelude.Maybe (Value Prelude.Text)),
                                  title :: (Prelude.Maybe (Value Prelude.Text))}
mkCampaignEmailMessageProperty :: CampaignEmailMessageProperty
mkCampaignEmailMessageProperty
  = CampaignEmailMessageProperty
      {body = Prelude.Nothing, fromAddress = Prelude.Nothing,
       htmlBody = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties CampaignEmailMessageProperty where
  toResourceProperties CampaignEmailMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CampaignEmailMessage",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Body" Prelude.<$> body,
                            (JSON..=) "FromAddress" Prelude.<$> fromAddress,
                            (JSON..=) "HtmlBody" Prelude.<$> htmlBody,
                            (JSON..=) "Title" Prelude.<$> title])}
instance JSON.ToJSON CampaignEmailMessageProperty where
  toJSON CampaignEmailMessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Body" Prelude.<$> body,
               (JSON..=) "FromAddress" Prelude.<$> fromAddress,
               (JSON..=) "HtmlBody" Prelude.<$> htmlBody,
               (JSON..=) "Title" Prelude.<$> title]))
instance Property "Body" CampaignEmailMessageProperty where
  type PropertyType "Body" CampaignEmailMessageProperty = Value Prelude.Text
  set newValue CampaignEmailMessageProperty {..}
    = CampaignEmailMessageProperty {body = Prelude.pure newValue, ..}
instance Property "FromAddress" CampaignEmailMessageProperty where
  type PropertyType "FromAddress" CampaignEmailMessageProperty = Value Prelude.Text
  set newValue CampaignEmailMessageProperty {..}
    = CampaignEmailMessageProperty
        {fromAddress = Prelude.pure newValue, ..}
instance Property "HtmlBody" CampaignEmailMessageProperty where
  type PropertyType "HtmlBody" CampaignEmailMessageProperty = Value Prelude.Text
  set newValue CampaignEmailMessageProperty {..}
    = CampaignEmailMessageProperty
        {htmlBody = Prelude.pure newValue, ..}
instance Property "Title" CampaignEmailMessageProperty where
  type PropertyType "Title" CampaignEmailMessageProperty = Value Prelude.Text
  set newValue CampaignEmailMessageProperty {..}
    = CampaignEmailMessageProperty {title = Prelude.pure newValue, ..}