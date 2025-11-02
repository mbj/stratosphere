module Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitProperty (
        CommunicationLimitProperty(..), mkCommunicationLimitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommunicationLimitProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimit.html>
    CommunicationLimitProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimit.html#cfn-connectcampaignsv2-campaign-communicationlimit-frequency>
                                frequency :: (Value Prelude.Integer),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimit.html#cfn-connectcampaignsv2-campaign-communicationlimit-maxcountperrecipient>
                                maxCountPerRecipient :: (Value Prelude.Integer),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connectcampaignsv2-campaign-communicationlimit.html#cfn-connectcampaignsv2-campaign-communicationlimit-unit>
                                unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommunicationLimitProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> CommunicationLimitProperty
mkCommunicationLimitProperty frequency maxCountPerRecipient unit
  = CommunicationLimitProperty
      {haddock_workaround_ = (), frequency = frequency,
       maxCountPerRecipient = maxCountPerRecipient, unit = unit}
instance ToResourceProperties CommunicationLimitProperty where
  toResourceProperties CommunicationLimitProperty {..}
    = ResourceProperties
        {awsType = "AWS::ConnectCampaignsV2::Campaign.CommunicationLimit",
         supportsTags = Prelude.False,
         properties = ["Frequency" JSON..= frequency,
                       "MaxCountPerRecipient" JSON..= maxCountPerRecipient,
                       "Unit" JSON..= unit]}
instance JSON.ToJSON CommunicationLimitProperty where
  toJSON CommunicationLimitProperty {..}
    = JSON.object
        ["Frequency" JSON..= frequency,
         "MaxCountPerRecipient" JSON..= maxCountPerRecipient,
         "Unit" JSON..= unit]
instance Property "Frequency" CommunicationLimitProperty where
  type PropertyType "Frequency" CommunicationLimitProperty = Value Prelude.Integer
  set newValue CommunicationLimitProperty {..}
    = CommunicationLimitProperty {frequency = newValue, ..}
instance Property "MaxCountPerRecipient" CommunicationLimitProperty where
  type PropertyType "MaxCountPerRecipient" CommunicationLimitProperty = Value Prelude.Integer
  set newValue CommunicationLimitProperty {..}
    = CommunicationLimitProperty {maxCountPerRecipient = newValue, ..}
instance Property "Unit" CommunicationLimitProperty where
  type PropertyType "Unit" CommunicationLimitProperty = Value Prelude.Text
  set newValue CommunicationLimitProperty {..}
    = CommunicationLimitProperty {unit = newValue, ..}