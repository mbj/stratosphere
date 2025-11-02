module Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitsProperty (
        module Exports, CommunicationLimitsProperty(..),
        mkCommunicationLimitsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitProperty as Exports
import Stratosphere.ResourceProperties
data CommunicationLimitsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimits.html>
    CommunicationLimitsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimits.html#cfn-connectcampaignsv2-campaign-communicationlimits-communicationlimitlist>
                                 communicationLimitList :: (Prelude.Maybe [CommunicationLimitProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommunicationLimitsProperty :: CommunicationLimitsProperty
mkCommunicationLimitsProperty
  = CommunicationLimitsProperty
      {haddock_workaround_ = (),
       communicationLimitList = Prelude.Nothing}
instance ToResourceProperties CommunicationLimitsProperty where
  toResourceProperties CommunicationLimitsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.CommunicationLimits",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommunicationLimitList"
                              Prelude.<$> communicationLimitList])}
instance JSON.ToJSON CommunicationLimitsProperty where
  toJSON CommunicationLimitsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommunicationLimitList"
                 Prelude.<$> communicationLimitList]))
instance Property "CommunicationLimitList" CommunicationLimitsProperty where
  type PropertyType "CommunicationLimitList" CommunicationLimitsProperty = [CommunicationLimitProperty]
  set newValue CommunicationLimitsProperty {..}
    = CommunicationLimitsProperty
        {communicationLimitList = Prelude.pure newValue, ..}