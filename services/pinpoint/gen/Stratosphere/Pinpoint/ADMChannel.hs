module Stratosphere.Pinpoint.ADMChannel (
        ADMChannel(..), mkADMChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ADMChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html>
    ADMChannel {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-applicationid>
                applicationId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientid>
                clientId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-clientsecret>
                clientSecret :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-admchannel.html#cfn-pinpoint-admchannel-enabled>
                enabled :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkADMChannel ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ADMChannel
mkADMChannel applicationId clientId clientSecret
  = ADMChannel
      {haddock_workaround_ = (), applicationId = applicationId,
       clientId = clientId, clientSecret = clientSecret,
       enabled = Prelude.Nothing}
instance ToResourceProperties ADMChannel where
  toResourceProperties ADMChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::ADMChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))}
instance JSON.ToJSON ADMChannel where
  toJSON ADMChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])))
instance Property "ApplicationId" ADMChannel where
  type PropertyType "ApplicationId" ADMChannel = Value Prelude.Text
  set newValue ADMChannel {..}
    = ADMChannel {applicationId = newValue, ..}
instance Property "ClientId" ADMChannel where
  type PropertyType "ClientId" ADMChannel = Value Prelude.Text
  set newValue ADMChannel {..} = ADMChannel {clientId = newValue, ..}
instance Property "ClientSecret" ADMChannel where
  type PropertyType "ClientSecret" ADMChannel = Value Prelude.Text
  set newValue ADMChannel {..}
    = ADMChannel {clientSecret = newValue, ..}
instance Property "Enabled" ADMChannel where
  type PropertyType "Enabled" ADMChannel = Value Prelude.Bool
  set newValue ADMChannel {..}
    = ADMChannel {enabled = Prelude.pure newValue, ..}