module Stratosphere.SecurityLake.Subscriber.SubscriberIdentityProperty (
        SubscriberIdentityProperty(..), mkSubscriberIdentityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubscriberIdentityProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-subscriberidentity.html>
    SubscriberIdentityProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-subscriberidentity.html#cfn-securitylake-subscriber-subscriberidentity-externalid>
                                externalId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-subscriber-subscriberidentity.html#cfn-securitylake-subscriber-subscriberidentity-principal>
                                principal :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubscriberIdentityProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SubscriberIdentityProperty
mkSubscriberIdentityProperty externalId principal
  = SubscriberIdentityProperty
      {haddock_workaround_ = (), externalId = externalId,
       principal = principal}
instance ToResourceProperties SubscriberIdentityProperty where
  toResourceProperties SubscriberIdentityProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::Subscriber.SubscriberIdentity",
         supportsTags = Prelude.False,
         properties = ["ExternalId" JSON..= externalId,
                       "Principal" JSON..= principal]}
instance JSON.ToJSON SubscriberIdentityProperty where
  toJSON SubscriberIdentityProperty {..}
    = JSON.object
        ["ExternalId" JSON..= externalId, "Principal" JSON..= principal]
instance Property "ExternalId" SubscriberIdentityProperty where
  type PropertyType "ExternalId" SubscriberIdentityProperty = Value Prelude.Text
  set newValue SubscriberIdentityProperty {..}
    = SubscriberIdentityProperty {externalId = newValue, ..}
instance Property "Principal" SubscriberIdentityProperty where
  type PropertyType "Principal" SubscriberIdentityProperty = Value Prelude.Text
  set newValue SubscriberIdentityProperty {..}
    = SubscriberIdentityProperty {principal = newValue, ..}