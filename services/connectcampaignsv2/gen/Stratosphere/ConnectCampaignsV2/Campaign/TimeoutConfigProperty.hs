module Stratosphere.ConnectCampaignsV2.Campaign.TimeoutConfigProperty (
        TimeoutConfigProperty(..), mkTimeoutConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeoutConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timeoutconfig.html>
    TimeoutConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-timeoutconfig.html#cfn-connectcampaignsv2-campaign-timeoutconfig-durationinseconds>
                           durationInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeoutConfigProperty :: TimeoutConfigProperty
mkTimeoutConfigProperty
  = TimeoutConfigProperty
      {haddock_workaround_ = (), durationInSeconds = Prelude.Nothing}
instance ToResourceProperties TimeoutConfigProperty where
  toResourceProperties TimeoutConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.TimeoutConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])}
instance JSON.ToJSON TimeoutConfigProperty where
  toJSON TimeoutConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))
instance Property "DurationInSeconds" TimeoutConfigProperty where
  type PropertyType "DurationInSeconds" TimeoutConfigProperty = Value Prelude.Integer
  set newValue TimeoutConfigProperty {..}
    = TimeoutConfigProperty
        {durationInSeconds = Prelude.pure newValue, ..}