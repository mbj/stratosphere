module Stratosphere.Pinpoint.BaiduChannel (
        BaiduChannel(..), mkBaiduChannel
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BaiduChannel
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html>
    BaiduChannel {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-apikey>
                  apiKey :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-applicationid>
                  applicationId :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-enabled>
                  enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-baiduchannel.html#cfn-pinpoint-baiduchannel-secretkey>
                  secretKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBaiduChannel ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> BaiduChannel
mkBaiduChannel apiKey applicationId secretKey
  = BaiduChannel
      {haddock_workaround_ = (), apiKey = apiKey,
       applicationId = applicationId, secretKey = secretKey,
       enabled = Prelude.Nothing}
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