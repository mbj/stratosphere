module Stratosphere.WorkSpacesWeb.IdentityProvider (
        IdentityProvider(..), mkIdentityProvider
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdentityProvider
  = IdentityProvider {identityProviderDetails :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                      identityProviderName :: (Value Prelude.Text),
                      identityProviderType :: (Value Prelude.Text),
                      portalArn :: (Prelude.Maybe (Value Prelude.Text)),
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProvider ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> Value Prelude.Text -> IdentityProvider
mkIdentityProvider
  identityProviderDetails
  identityProviderName
  identityProviderType
  = IdentityProvider
      {identityProviderDetails = identityProviderDetails,
       identityProviderName = identityProviderName,
       identityProviderType = identityProviderType,
       portalArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IdentityProvider where
  toResourceProperties IdentityProvider {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesWeb::IdentityProvider",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdentityProviderDetails" JSON..= identityProviderDetails,
                            "IdentityProviderName" JSON..= identityProviderName,
                            "IdentityProviderType" JSON..= identityProviderType]
                           (Prelude.catMaybes
                              [(JSON..=) "PortalArn" Prelude.<$> portalArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdentityProvider where
  toJSON IdentityProvider {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdentityProviderDetails" JSON..= identityProviderDetails,
               "IdentityProviderName" JSON..= identityProviderName,
               "IdentityProviderType" JSON..= identityProviderType]
              (Prelude.catMaybes
                 [(JSON..=) "PortalArn" Prelude.<$> portalArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IdentityProviderDetails" IdentityProvider where
  type PropertyType "IdentityProviderDetails" IdentityProvider = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue IdentityProvider {..}
    = IdentityProvider {identityProviderDetails = newValue, ..}
instance Property "IdentityProviderName" IdentityProvider where
  type PropertyType "IdentityProviderName" IdentityProvider = Value Prelude.Text
  set newValue IdentityProvider {..}
    = IdentityProvider {identityProviderName = newValue, ..}
instance Property "IdentityProviderType" IdentityProvider where
  type PropertyType "IdentityProviderType" IdentityProvider = Value Prelude.Text
  set newValue IdentityProvider {..}
    = IdentityProvider {identityProviderType = newValue, ..}
instance Property "PortalArn" IdentityProvider where
  type PropertyType "PortalArn" IdentityProvider = Value Prelude.Text
  set newValue IdentityProvider {..}
    = IdentityProvider {portalArn = Prelude.pure newValue, ..}
instance Property "Tags" IdentityProvider where
  type PropertyType "Tags" IdentityProvider = [Tag]
  set newValue IdentityProvider {..}
    = IdentityProvider {tags = Prelude.pure newValue, ..}