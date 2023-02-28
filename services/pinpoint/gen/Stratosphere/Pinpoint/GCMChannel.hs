module Stratosphere.Pinpoint.GCMChannel (
        GCMChannel(..), mkGCMChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GCMChannel
  = GCMChannel {apiKey :: (Value Prelude.Text),
                applicationId :: (Value Prelude.Text),
                enabled :: (Prelude.Maybe (Value Prelude.Bool))}
mkGCMChannel ::
  Value Prelude.Text -> Value Prelude.Text -> GCMChannel
mkGCMChannel apiKey applicationId
  = GCMChannel
      {apiKey = apiKey, applicationId = applicationId,
       enabled = Prelude.Nothing}
instance ToResourceProperties GCMChannel where
  toResourceProperties GCMChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::GCMChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiKey" JSON..= apiKey, "ApplicationId" JSON..= applicationId]
                           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))}
instance JSON.ToJSON GCMChannel where
  toJSON GCMChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiKey" JSON..= apiKey, "ApplicationId" JSON..= applicationId]
              (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])))
instance Property "ApiKey" GCMChannel where
  type PropertyType "ApiKey" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..} = GCMChannel {apiKey = newValue, ..}
instance Property "ApplicationId" GCMChannel where
  type PropertyType "ApplicationId" GCMChannel = Value Prelude.Text
  set newValue GCMChannel {..}
    = GCMChannel {applicationId = newValue, ..}
instance Property "Enabled" GCMChannel where
  type PropertyType "Enabled" GCMChannel = Value Prelude.Bool
  set newValue GCMChannel {..}
    = GCMChannel {enabled = Prelude.pure newValue, ..}