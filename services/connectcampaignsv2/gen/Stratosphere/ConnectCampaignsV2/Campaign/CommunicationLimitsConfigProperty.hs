module Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitsConfigProperty (
        module Exports, CommunicationLimitsConfigProperty(..),
        mkCommunicationLimitsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommunicationLimitsConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimitsconfig.html>
    CommunicationLimitsConfigProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimitsconfig.html#cfn-connectcampaignsv2-campaign-communicationlimitsconfig-allchannelssubtypes>
                                       allChannelsSubtypes :: (Prelude.Maybe CommunicationLimitsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimitsconfig.html#cfn-connectcampaignsv2-campaign-communicationlimitsconfig-instancelimitshandling>
                                       instanceLimitsHandling :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommunicationLimitsConfigProperty ::
  CommunicationLimitsConfigProperty
mkCommunicationLimitsConfigProperty
  = CommunicationLimitsConfigProperty
      {haddock_workaround_ = (), allChannelsSubtypes = Prelude.Nothing,
       instanceLimitsHandling = Prelude.Nothing}
instance ToResourceProperties CommunicationLimitsConfigProperty where
  toResourceProperties CommunicationLimitsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.CommunicationLimitsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllChannelsSubtypes" Prelude.<$> allChannelsSubtypes,
                            (JSON..=) "InstanceLimitsHandling"
                              Prelude.<$> instanceLimitsHandling])}
instance JSON.ToJSON CommunicationLimitsConfigProperty where
  toJSON CommunicationLimitsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllChannelsSubtypes" Prelude.<$> allChannelsSubtypes,
               (JSON..=) "InstanceLimitsHandling"
                 Prelude.<$> instanceLimitsHandling]))
instance Property "AllChannelsSubtypes" CommunicationLimitsConfigProperty where
  type PropertyType "AllChannelsSubtypes" CommunicationLimitsConfigProperty = CommunicationLimitsProperty
  set newValue CommunicationLimitsConfigProperty {..}
    = CommunicationLimitsConfigProperty
        {allChannelsSubtypes = Prelude.pure newValue, ..}
instance Property "InstanceLimitsHandling" CommunicationLimitsConfigProperty where
  type PropertyType "InstanceLimitsHandling" CommunicationLimitsConfigProperty = Value Prelude.Text
  set newValue CommunicationLimitsConfigProperty {..}
    = CommunicationLimitsConfigProperty
        {instanceLimitsHandling = Prelude.pure newValue, ..}