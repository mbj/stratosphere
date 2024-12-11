module Stratosphere.ConnectCampaignsV2.Campaign.CommunicationLimitProperty (
        CommunicationLimitProperty(..), mkCommunicationLimitProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CommunicationLimitProperty
  = CommunicationLimitProperty {frequency :: (Value Prelude.Integer),
                                maxCountPerRecipient :: (Value Prelude.Integer),
                                unit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCommunicationLimitProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text -> CommunicationLimitProperty
mkCommunicationLimitProperty frequency maxCountPerRecipient unit
  = CommunicationLimitProperty
      {frequency = frequency,
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