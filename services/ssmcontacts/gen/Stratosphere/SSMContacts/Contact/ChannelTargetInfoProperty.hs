module Stratosphere.SSMContacts.Contact.ChannelTargetInfoProperty (
        ChannelTargetInfoProperty(..), mkChannelTargetInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelTargetInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-channeltargetinfo.html>
    ChannelTargetInfoProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-channeltargetinfo.html#cfn-ssmcontacts-contact-channeltargetinfo-channelid>
                               channelId :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ssmcontacts-contact-channeltargetinfo.html#cfn-ssmcontacts-contact-channeltargetinfo-retryintervalinminutes>
                               retryIntervalInMinutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelTargetInfoProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> ChannelTargetInfoProperty
mkChannelTargetInfoProperty channelId retryIntervalInMinutes
  = ChannelTargetInfoProperty
      {haddock_workaround_ = (), channelId = channelId,
       retryIntervalInMinutes = retryIntervalInMinutes}
instance ToResourceProperties ChannelTargetInfoProperty where
  toResourceProperties ChannelTargetInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSMContacts::Contact.ChannelTargetInfo",
         supportsTags = Prelude.False,
         properties = ["ChannelId" JSON..= channelId,
                       "RetryIntervalInMinutes" JSON..= retryIntervalInMinutes]}
instance JSON.ToJSON ChannelTargetInfoProperty where
  toJSON ChannelTargetInfoProperty {..}
    = JSON.object
        ["ChannelId" JSON..= channelId,
         "RetryIntervalInMinutes" JSON..= retryIntervalInMinutes]
instance Property "ChannelId" ChannelTargetInfoProperty where
  type PropertyType "ChannelId" ChannelTargetInfoProperty = Value Prelude.Text
  set newValue ChannelTargetInfoProperty {..}
    = ChannelTargetInfoProperty {channelId = newValue, ..}
instance Property "RetryIntervalInMinutes" ChannelTargetInfoProperty where
  type PropertyType "RetryIntervalInMinutes" ChannelTargetInfoProperty = Value Prelude.Integer
  set newValue ChannelTargetInfoProperty {..}
    = ChannelTargetInfoProperty {retryIntervalInMinutes = newValue, ..}