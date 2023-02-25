module Stratosphere.ConnectCampaigns.Campaign (
        module Exports, Campaign(..), mkCampaign
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaigns.Campaign.DialerConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ConnectCampaigns.Campaign.OutboundCallConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Campaign
  = Campaign {connectInstanceArn :: (Value Prelude.Text),
              dialerConfig :: DialerConfigProperty,
              name :: (Value Prelude.Text),
              outboundCallConfig :: OutboundCallConfigProperty,
              tags :: (Prelude.Maybe [Tag])}
mkCampaign ::
  Value Prelude.Text
  -> DialerConfigProperty
     -> Value Prelude.Text -> OutboundCallConfigProperty -> Campaign
mkCampaign connectInstanceArn dialerConfig name outboundCallConfig
  = Campaign
      {connectInstanceArn = connectInstanceArn,
       dialerConfig = dialerConfig, name = name,
       outboundCallConfig = outboundCallConfig, tags = Prelude.Nothing}
instance ToResourceProperties Campaign where
  toResourceProperties Campaign {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaigns::Campaign",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectInstanceArn" JSON..= connectInstanceArn,
                            "DialerConfig" JSON..= dialerConfig, "Name" JSON..= name,
                            "OutboundCallConfig" JSON..= outboundCallConfig]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Campaign where
  toJSON Campaign {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectInstanceArn" JSON..= connectInstanceArn,
               "DialerConfig" JSON..= dialerConfig, "Name" JSON..= name,
               "OutboundCallConfig" JSON..= outboundCallConfig]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectInstanceArn" Campaign where
  type PropertyType "ConnectInstanceArn" Campaign = Value Prelude.Text
  set newValue Campaign {..}
    = Campaign {connectInstanceArn = newValue, ..}
instance Property "DialerConfig" Campaign where
  type PropertyType "DialerConfig" Campaign = DialerConfigProperty
  set newValue Campaign {..} = Campaign {dialerConfig = newValue, ..}
instance Property "Name" Campaign where
  type PropertyType "Name" Campaign = Value Prelude.Text
  set newValue Campaign {..} = Campaign {name = newValue, ..}
instance Property "OutboundCallConfig" Campaign where
  type PropertyType "OutboundCallConfig" Campaign = OutboundCallConfigProperty
  set newValue Campaign {..}
    = Campaign {outboundCallConfig = newValue, ..}
instance Property "Tags" Campaign where
  type PropertyType "Tags" Campaign = [Tag]
  set newValue Campaign {..}
    = Campaign {tags = Prelude.pure newValue, ..}