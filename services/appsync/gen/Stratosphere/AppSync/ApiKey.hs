module Stratosphere.AppSync.ApiKey (
        ApiKey(..), mkApiKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKey
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html>
    ApiKey {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-apiid>
            apiId :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-apikeyid>
            apiKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appsync-apikey.html#cfn-appsync-apikey-expires>
            expires :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKey :: Value Prelude.Text -> ApiKey
mkApiKey apiId
  = ApiKey
      {haddock_workaround_ = (), apiId = apiId,
       apiKeyId = Prelude.Nothing, description = Prelude.Nothing,
       expires = Prelude.Nothing}
instance ToResourceProperties ApiKey where
  toResourceProperties ApiKey {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::ApiKey", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId]
                           (Prelude.catMaybes
                              [(JSON..=) "ApiKeyId" Prelude.<$> apiKeyId,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Expires" Prelude.<$> expires]))}
instance JSON.ToJSON ApiKey where
  toJSON ApiKey {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId]
              (Prelude.catMaybes
                 [(JSON..=) "ApiKeyId" Prelude.<$> apiKeyId,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Expires" Prelude.<$> expires])))
instance Property "ApiId" ApiKey where
  type PropertyType "ApiId" ApiKey = Value Prelude.Text
  set newValue ApiKey {..} = ApiKey {apiId = newValue, ..}
instance Property "ApiKeyId" ApiKey where
  type PropertyType "ApiKeyId" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {apiKeyId = Prelude.pure newValue, ..}
instance Property "Description" ApiKey where
  type PropertyType "Description" ApiKey = Value Prelude.Text
  set newValue ApiKey {..}
    = ApiKey {description = Prelude.pure newValue, ..}
instance Property "Expires" ApiKey where
  type PropertyType "Expires" ApiKey = Value Prelude.Double
  set newValue ApiKey {..}
    = ApiKey {expires = Prelude.pure newValue, ..}