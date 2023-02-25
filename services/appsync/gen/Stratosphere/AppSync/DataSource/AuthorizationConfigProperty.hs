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
  = AuthorizationConfigProperty {authorizationType :: (Value Prelude.Text),
                                 awsIamConfig :: (Prelude.Maybe AwsIamConfigProperty)}
mkAuthorizationConfigProperty ::
  Value Prelude.Text -> AuthorizationConfigProperty
mkAuthorizationConfigProperty authorizationType
  = AuthorizationConfigProperty
      {authorizationType = authorizationType,
       awsIamConfig = Prelude.Nothing}
instance ToResourceProperties AuthorizationConfigProperty where
  toResourceProperties AuthorizationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppSync::DataSource.AuthorizationConfig",
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