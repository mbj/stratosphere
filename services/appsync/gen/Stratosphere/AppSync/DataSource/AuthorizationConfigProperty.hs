module Stratosphere.AppSync.DataSource.AuthorizationConfigProperty (
        module Exports, AuthorizationConfigProperty(..),
        mkAuthorizationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppSync.DataSource.AwsIamConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AuthorizationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html>
    AuthorizationConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-authorizationtype>
                                 authorizationType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appsync-datasource-authorizationconfig.html#cfn-appsync-datasource-authorizationconfig-awsiamconfig>
                                 awsIamConfig :: (Prelude.Maybe AwsIamConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAuthorizationConfigProperty ::
  Value Prelude.Text -> AuthorizationConfigProperty
mkAuthorizationConfigProperty authorizationType
  = AuthorizationConfigProperty
      {haddock_workaround_ = (), authorizationType = authorizationType,
       awsIamConfig = Prelude.Nothing}
instance ToResourceProperties AuthorizationConfigProperty where
  toResourceProperties AuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.AuthorizationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthorizationType" JSON..= authorizationType]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsIamConfig" Prelude.<$> awsIamConfig]))}
instance JSON.ToJSON AuthorizationConfigProperty where
  toJSON AuthorizationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthorizationType" JSON..= authorizationType]
              (Prelude.catMaybes
                 [(JSON..=) "AwsIamConfig" Prelude.<$> awsIamConfig])))
instance Property "AuthorizationType" AuthorizationConfigProperty where
  type PropertyType "AuthorizationType" AuthorizationConfigProperty = Value Prelude.Text
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty {authorizationType = newValue, ..}
instance Property "AwsIamConfig" AuthorizationConfigProperty where
  type PropertyType "AwsIamConfig" AuthorizationConfigProperty = AwsIamConfigProperty
  set newValue AuthorizationConfigProperty {..}
    = AuthorizationConfigProperty
        {awsIamConfig = Prelude.pure newValue, ..}