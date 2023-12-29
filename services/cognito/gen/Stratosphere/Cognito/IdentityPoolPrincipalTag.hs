module Stratosphere.Cognito.IdentityPoolPrincipalTag (
        IdentityPoolPrincipalTag(..), mkIdentityPoolPrincipalTag
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityPoolPrincipalTag
  = IdentityPoolPrincipalTag {identityPoolId :: (Value Prelude.Text),
                              identityProviderName :: (Value Prelude.Text),
                              principalTags :: (Prelude.Maybe JSON.Object),
                              useDefaults :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityPoolPrincipalTag ::
  Value Prelude.Text
  -> Value Prelude.Text -> IdentityPoolPrincipalTag
mkIdentityPoolPrincipalTag identityPoolId identityProviderName
  = IdentityPoolPrincipalTag
      {identityPoolId = identityPoolId,
       identityProviderName = identityProviderName,
       principalTags = Prelude.Nothing, useDefaults = Prelude.Nothing}
instance ToResourceProperties IdentityPoolPrincipalTag where
  toResourceProperties IdentityPoolPrincipalTag {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::IdentityPoolPrincipalTag",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdentityPoolId" JSON..= identityPoolId,
                            "IdentityProviderName" JSON..= identityProviderName]
                           (Prelude.catMaybes
                              [(JSON..=) "PrincipalTags" Prelude.<$> principalTags,
                               (JSON..=) "UseDefaults" Prelude.<$> useDefaults]))}
instance JSON.ToJSON IdentityPoolPrincipalTag where
  toJSON IdentityPoolPrincipalTag {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdentityPoolId" JSON..= identityPoolId,
               "IdentityProviderName" JSON..= identityProviderName]
              (Prelude.catMaybes
                 [(JSON..=) "PrincipalTags" Prelude.<$> principalTags,
                  (JSON..=) "UseDefaults" Prelude.<$> useDefaults])))
instance Property "IdentityPoolId" IdentityPoolPrincipalTag where
  type PropertyType "IdentityPoolId" IdentityPoolPrincipalTag = Value Prelude.Text
  set newValue IdentityPoolPrincipalTag {..}
    = IdentityPoolPrincipalTag {identityPoolId = newValue, ..}
instance Property "IdentityProviderName" IdentityPoolPrincipalTag where
  type PropertyType "IdentityProviderName" IdentityPoolPrincipalTag = Value Prelude.Text
  set newValue IdentityPoolPrincipalTag {..}
    = IdentityPoolPrincipalTag {identityProviderName = newValue, ..}
instance Property "PrincipalTags" IdentityPoolPrincipalTag where
  type PropertyType "PrincipalTags" IdentityPoolPrincipalTag = JSON.Object
  set newValue IdentityPoolPrincipalTag {..}
    = IdentityPoolPrincipalTag
        {principalTags = Prelude.pure newValue, ..}
instance Property "UseDefaults" IdentityPoolPrincipalTag where
  type PropertyType "UseDefaults" IdentityPoolPrincipalTag = Value Prelude.Bool
  set newValue IdentityPoolPrincipalTag {..}
    = IdentityPoolPrincipalTag
        {useDefaults = Prelude.pure newValue, ..}