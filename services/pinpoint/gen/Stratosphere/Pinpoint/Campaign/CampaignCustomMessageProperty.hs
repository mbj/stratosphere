module Stratosphere.Pinpoint.Campaign.CampaignCustomMessageProperty (
        CampaignCustomMessageProperty(..), mkCampaignCustomMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CampaignCustomMessageProperty
  = CampaignCustomMessageProperty {data' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCampaignCustomMessageProperty :: CampaignCustomMessageProperty
mkCampaignCustomMessageProperty
  = CampaignCustomMessageProperty {data' = Prelude.Nothing}
instance ToResourceProperties CampaignCustomMessageProperty where
  toResourceProperties CampaignCustomMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::Campaign.CampaignCustomMessage",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data'])}
instance JSON.ToJSON CampaignCustomMessageProperty where
  toJSON CampaignCustomMessageProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Data" Prelude.<$> data']))
instance Property "Data" CampaignCustomMessageProperty where
  type PropertyType "Data" CampaignCustomMessageProperty = Value Prelude.Text
  set newValue CampaignCustomMessageProperty {}
    = CampaignCustomMessageProperty {data' = Prelude.pure newValue, ..}