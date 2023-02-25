module Stratosphere.Pinpoint.Campaign.CampaignHookProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CampaignHookProperty :: Prelude.Type
instance ToResourceProperties CampaignHookProperty
instance JSON.ToJSON CampaignHookProperty