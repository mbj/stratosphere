module Stratosphere.OpenSearchService.Domain.CognitoOptionsProperty (
        CognitoOptionsProperty(..), mkCognitoOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CognitoOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-cognitooptions.html>
    CognitoOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-cognitooptions.html#cfn-opensearchservice-domain-cognitooptions-enabled>
                            enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-cognitooptions.html#cfn-opensearchservice-domain-cognitooptions-identitypoolid>
                            identityPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-cognitooptions.html#cfn-opensearchservice-domain-cognitooptions-rolearn>
                            roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opensearchservice-domain-cognitooptions.html#cfn-opensearchservice-domain-cognitooptions-userpoolid>
                            userPoolId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
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