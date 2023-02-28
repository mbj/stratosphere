module Stratosphere.OpenSearchService.Domain.CognitoOptionsProperty (
        CognitoOptionsProperty(..), mkCognitoOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoOptionsProperty
  = CognitoOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            identityPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                            roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            userPoolId :: (Prelude.Maybe (Value Prelude.Text))}
mkCognitoOptionsProperty :: CognitoOptionsProperty
mkCognitoOptionsProperty
  = CognitoOptionsProperty
      {enabled = Prelude.Nothing, identityPoolId = Prelude.Nothing,
       roleArn = Prelude.Nothing, userPoolId = Prelude.Nothing}
instance ToResourceProperties CognitoOptionsProperty where
  toResourceProperties CognitoOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.CognitoOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "IdentityPoolId" Prelude.<$> identityPoolId,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "UserPoolId" Prelude.<$> userPoolId])}
instance JSON.ToJSON CognitoOptionsProperty where
  toJSON CognitoOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "IdentityPoolId" Prelude.<$> identityPoolId,
               (JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "UserPoolId" Prelude.<$> userPoolId]))
instance Property "Enabled" CognitoOptionsProperty where
  type PropertyType "Enabled" CognitoOptionsProperty = Value Prelude.Bool
  set newValue CognitoOptionsProperty {..}
    = CognitoOptionsProperty {enabled = Prelude.pure newValue, ..}
instance Property "IdentityPoolId" CognitoOptionsProperty where
  type PropertyType "IdentityPoolId" CognitoOptionsProperty = Value Prelude.Text
  set newValue CognitoOptionsProperty {..}
    = CognitoOptionsProperty
        {identityPoolId = Prelude.pure newValue, ..}
instance Property "RoleArn" CognitoOptionsProperty where
  type PropertyType "RoleArn" CognitoOptionsProperty = Value Prelude.Text
  set newValue CognitoOptionsProperty {..}
    = CognitoOptionsProperty {roleArn = Prelude.pure newValue, ..}
instance Property "UserPoolId" CognitoOptionsProperty where
  type PropertyType "UserPoolId" CognitoOptionsProperty = Value Prelude.Text
  set newValue CognitoOptionsProperty {..}
    = CognitoOptionsProperty {userPoolId = Prelude.pure newValue, ..}