module Stratosphere.Pinpoint.GCMChannel (
        GCMChannel(..), mkGCMChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GCMChannel
  = GCMChannel {apiKey :: (Prelude.Maybe (Value Prelude.Text)),
                applicationId :: (Value Prelude.Text),
                defaultAuthenticationMethod :: (Prelude.Maybe (Value Prelude.Text)),
                enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                serviceJson :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGCMChannel :: Value Prelude.Text -> GCMChannel
mkGCMChannel applicationId
  = GCMChannel
      {applicationId = applicationId, apiKey = Prelude.Nothing,
       defaultAuthenticationMethod = Prelude.Nothing,
       enabled = Prelude.Nothing, serviceJson = Prelude.Nothing}
instance ToResourceProperties GCMChannel where
  toResourceProperties GCMChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::GCMChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiKey" Prelude.<$> apiKey,
                               (JSON..=) "DefaultAuthenticationMethod"
                                 Prelude.<$> defaultAuthenticationMethod,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "ServiceJson" Prelude.<$> serviceJson]))}
instance JSON.ToJSON GCMChannel where
  toJSON GCMChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes
                 [(JSON..=) "ApiKey" Prelude.<$> apiKey,
                  (JSON..=) "DefaultAuthenticationMethod"
                    Prelude.<$> defaultAuthenticationMethod,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "ServiceJson" Prelude.<$> serviceJson])))
instance Property "ApiKey" GCMChannel where
  type PropertyType "ApiKey" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..}
    = GCMChannel {apiKey = Prelude.pure newValue, ..}
instance Property "ApplicationId" GCMChannel where
  type PropertyType "ApplicationId" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..}
    = GCMChannel {applicationId = newValue, ..}
instance Property "DefaultAuthenticationMethod" GCMChannel where
  type PropertyType "DefaultAuthenticationMethod" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..}
    = GCMChannel
        {defaultAuthenticationMethod = Prelude.pure newValue, ..}
instance Property "Enabled" GCMChannel where
  type PropertyType "Enabled" GCMChannel = Value Prelude.Bool
  set newValue GCMChannel {..}
    = GCMChannel {enabled = Prelude.pure newValue, ..}
instance Property "ServiceJson" GCMChannel where
  type PropertyType "ServiceJson" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..}
    = GCMChannel {serviceJson = Prelude.pure newValue, ..}