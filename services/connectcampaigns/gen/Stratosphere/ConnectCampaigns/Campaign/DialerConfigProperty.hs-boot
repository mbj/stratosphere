module Stratosphere.ConnectCampaigns.Campaign.DialerConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DialerConfigProperty :: Prelude.Type
instance ToResourceProperties DialerConfigProperty
instance JSON.ToJSON DialerConfigProperty