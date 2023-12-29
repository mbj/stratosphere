module Stratosphere.Pinpoint.EmailChannel (
        EmailChannel(..), mkEmailChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailChannel
  = EmailChannel {applicationId :: (Value Prelude.Text),
                  configurationSet :: (Prelude.Maybe (Value Prelude.Text)),
                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  fromAddress :: (Value Prelude.Text),
                  identity :: (Value Prelude.Text),
                  roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailChannel ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> EmailChannel
mkEmailChannel applicationId fromAddress identity
  = EmailChannel
      {applicationId = applicationId, fromAddress = fromAddress,
       identity = identity, configurationSet = Prelude.Nothing,
       enabled = Prelude.Nothing, roleArn = Prelude.Nothing}
instance ToResourceProperties EmailChannel where
  toResourceProperties EmailChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::EmailChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApplicationId" JSON..= applicationId,
                            "FromAddress" JSON..= fromAddress, "Identity" JSON..= identity]
                           (Prelude.catMaybes
                              [(JSON..=) "ConfigurationSet" Prelude.<$> configurationSet,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON EmailChannel where
  toJSON EmailChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApplicationId" JSON..= applicationId,
               "FromAddress" JSON..= fromAddress, "Identity" JSON..= identity]
              (Prelude.catMaybes
                 [(JSON..=) "ConfigurationSet" Prelude.<$> configurationSet,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "ApplicationId" EmailChannel where
  type PropertyType "ApplicationId" EmailChannel = Value Prelude.Text
  set newValue EmailChannel {..}
    = EmailChannel {applicationId = newValue, ..}
instance Property "ConfigurationSet" EmailChannel where
  type PropertyType "ConfigurationSet" EmailChannel = Value Prelude.Text
  set newValue EmailChannel {..}
    = EmailChannel {configurationSet = Prelude.pure newValue, ..}
instance Property "Enabled" EmailChannel where
  type PropertyType "Enabled" EmailChannel = Value Prelude.Bool
  set newValue EmailChannel {..}
    = EmailChannel {enabled = Prelude.pure newValue, ..}
instance Property "FromAddress" EmailChannel where
  type PropertyType "FromAddress" EmailChannel = Value Prelude.Text
  set newValue EmailChannel {..}
    = EmailChannel {fromAddress = newValue, ..}
instance Property "Identity" EmailChannel where
  type PropertyType "Identity" EmailChannel = Value Prelude.Text
  set newValue EmailChannel {..}
    = EmailChannel {identity = newValue, ..}
instance Property "RoleArn" EmailChannel where
  type PropertyType "RoleArn" EmailChannel = Value Prelude.Text
  set newValue EmailChannel {..}
    = EmailChannel {roleArn = Prelude.pure newValue, ..}