module Stratosphere.Pinpoint.BaiduChannel (
        BaiduChannel(..), mkBaiduChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BaiduChannel
  = BaiduChannel {apiKey :: (Value Prelude.Text),
                  applicationId :: (Value Prelude.Text),
                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  secretKey :: (Value Prelude.Text)}
mkBaiduChannel ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> BaiduChannel
mkBaiduChannel apiKey applicationId secretKey
  = BaiduChannel
      {apiKey = apiKey, applicationId = applicationId,
       secretKey = secretKey, enabled = Prelude.Nothing}
instance ToResourceProperties BaiduChannel where
  toResourceProperties BaiduChannel {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::BaiduChannel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiKey" JSON..= apiKey, "ApplicationId" JSON..= applicationId,
                            "SecretKey" JSON..= secretKey]
                           (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled]))}
instance JSON.ToJSON BaiduChannel where
  toJSON BaiduChannel {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiKey" JSON..= apiKey, "ApplicationId" JSON..= applicationId,
               "SecretKey" JSON..= secretKey]
              (Prelude.catMaybes [(JSON..=) "Enabled" Prelude.<$> enabled])))
instance Property "ApiKey" BaiduChannel where
  type PropertyType "ApiKey" BaiduChannel = Value Prelude.Text
  set newValue BaiduChannel {..}
    = BaiduChannel {apiKey = newValue, ..}
instance Property "ApplicationId" BaiduChannel where
  type PropertyType "ApplicationId" BaiduChannel = Value Prelude.Text
  set newValue BaiduChannel {..}
    = BaiduChannel {applicationId = newValue, ..}
instance Property "Enabled" BaiduChannel where
  type PropertyType "Enabled" BaiduChannel = Value Prelude.Bool
  set newValue BaiduChannel {..}
    = BaiduChannel {enabled = Prelude.pure newValue, ..}
instance Property "SecretKey" BaiduChannel where
  type PropertyType "SecretKey" BaiduChannel = Value Prelude.Text
  set newValue BaiduChannel {..}
    = BaiduChannel {secretKey = newValue, ..}