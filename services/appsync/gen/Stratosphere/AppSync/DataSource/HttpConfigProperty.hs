module Stratosphere.AppSync.DataSource.HttpConfigProperty (
        module Exports, HttpConfigProperty(..), mkHttpConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.AuthorizationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html>
    HttpConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-authorizationconfig>
                        authorizationConfig :: (Prelude.Maybe AuthorizationConfigProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-httpconfig.html#cfn-appsync-datasource-httpconfig-endpoint>
                        endpoint :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpConfigProperty :: Value Prelude.Text -> HttpConfigProperty
mkHttpConfigProperty endpoint
  = HttpConfigProperty
      {haddock_workaround_ = (), endpoint = endpoint,
       authorizationConfig = Prelude.Nothing}
instance ToResourceProperties HttpConfigProperty where
  toResourceProperties HttpConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.HttpConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Endpoint" JSON..= endpoint]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizationConfig"
                                 Prelude.<$> authorizationConfig]))}
instance JSON.ToJSON HttpConfigProperty where
  toJSON HttpConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Endpoint" JSON..= endpoint]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizationConfig"
                    Prelude.<$> authorizationConfig])))
instance Property "AuthorizationConfig" HttpConfigProperty where
  type PropertyType "AuthorizationConfig" HttpConfigProperty = AuthorizationConfigProperty
  set newValue HttpConfigProperty {..}
    = HttpConfigProperty
        {authorizationConfig = Prelude.pure newValue, ..}
instance Property "Endpoint" HttpConfigProperty where
  type PropertyType "Endpoint" HttpConfigProperty = Value Prelude.Text
  set newValue HttpConfigProperty {..}
    = HttpConfigProperty {endpoint = newValue, ..}