module Stratosphere.Cognito.UserPoolDomain (
        module Exports, UserPoolDomain(..), mkUserPoolDomain
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.UserPoolDomain.CustomDomainConfigTypeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolDomain
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html>
    UserPoolDomain {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-customdomainconfig>
                    customDomainConfig :: (Prelude.Maybe CustomDomainConfigTypeProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-domain>
                    domain :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-managedloginversion>
                    managedLoginVersion :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpooldomain.html#cfn-cognito-userpooldomain-userpoolid>
                    userPoolId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolDomain ::
  Value Prelude.Text -> Value Prelude.Text -> UserPoolDomain
mkUserPoolDomain domain userPoolId
  = UserPoolDomain
      {haddock_workaround_ = (), domain = domain,
       userPoolId = userPoolId, customDomainConfig = Prelude.Nothing,
       managedLoginVersion = Prelude.Nothing}
instance ToResourceProperties UserPoolDomain where
  toResourceProperties UserPoolDomain {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolDomain",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Domain" JSON..= domain, "UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomDomainConfig" Prelude.<$> customDomainConfig,
                               (JSON..=) "ManagedLoginVersion" Prelude.<$> managedLoginVersion]))}
instance JSON.ToJSON UserPoolDomain where
  toJSON UserPoolDomain {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Domain" JSON..= domain, "UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "CustomDomainConfig" Prelude.<$> customDomainConfig,
                  (JSON..=) "ManagedLoginVersion" Prelude.<$> managedLoginVersion])))
instance Property "CustomDomainConfig" UserPoolDomain where
  type PropertyType "CustomDomainConfig" UserPoolDomain = CustomDomainConfigTypeProperty
  set newValue UserPoolDomain {..}
    = UserPoolDomain {customDomainConfig = Prelude.pure newValue, ..}
instance Property "Domain" UserPoolDomain where
  type PropertyType "Domain" UserPoolDomain = Value Prelude.Text
  set newValue UserPoolDomain {..}
    = UserPoolDomain {domain = newValue, ..}
instance Property "ManagedLoginVersion" UserPoolDomain where
  type PropertyType "ManagedLoginVersion" UserPoolDomain = Value Prelude.Integer
  set newValue UserPoolDomain {..}
    = UserPoolDomain {managedLoginVersion = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolDomain where
  type PropertyType "UserPoolId" UserPoolDomain = Value Prelude.Text
  set newValue UserPoolDomain {..}
    = UserPoolDomain {userPoolId = newValue, ..}