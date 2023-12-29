module Stratosphere.Transfer.Server.IdentityProviderDetailsProperty (
        IdentityProviderDetailsProperty(..),
        mkIdentityProviderDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdentityProviderDetailsProperty
  = IdentityProviderDetailsProperty {directoryId :: (Prelude.Maybe (Value Prelude.Text)),
                                     function :: (Prelude.Maybe (Value Prelude.Text)),
                                     invocationRole :: (Prelude.Maybe (Value Prelude.Text)),
                                     sftpAuthenticationMethods :: (Prelude.Maybe (Value Prelude.Text)),
                                     url :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdentityProviderDetailsProperty ::
  IdentityProviderDetailsProperty
mkIdentityProviderDetailsProperty
  = IdentityProviderDetailsProperty
      {directoryId = Prelude.Nothing, function = Prelude.Nothing,
       invocationRole = Prelude.Nothing,
       sftpAuthenticationMethods = Prelude.Nothing, url = Prelude.Nothing}
instance ToResourceProperties IdentityProviderDetailsProperty where
  toResourceProperties IdentityProviderDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.IdentityProviderDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
                            (JSON..=) "Function" Prelude.<$> function,
                            (JSON..=) "InvocationRole" Prelude.<$> invocationRole,
                            (JSON..=) "SftpAuthenticationMethods"
                              Prelude.<$> sftpAuthenticationMethods,
                            (JSON..=) "Url" Prelude.<$> url])}
instance JSON.ToJSON IdentityProviderDetailsProperty where
  toJSON IdentityProviderDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DirectoryId" Prelude.<$> directoryId,
               (JSON..=) "Function" Prelude.<$> function,
               (JSON..=) "InvocationRole" Prelude.<$> invocationRole,
               (JSON..=) "SftpAuthenticationMethods"
                 Prelude.<$> sftpAuthenticationMethods,
               (JSON..=) "Url" Prelude.<$> url]))
instance Property "DirectoryId" IdentityProviderDetailsProperty where
  type PropertyType "DirectoryId" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {directoryId = Prelude.pure newValue, ..}
instance Property "Function" IdentityProviderDetailsProperty where
  type PropertyType "Function" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {function = Prelude.pure newValue, ..}
instance Property "InvocationRole" IdentityProviderDetailsProperty where
  type PropertyType "InvocationRole" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {invocationRole = Prelude.pure newValue, ..}
instance Property "SftpAuthenticationMethods" IdentityProviderDetailsProperty where
  type PropertyType "SftpAuthenticationMethods" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty
        {sftpAuthenticationMethods = Prelude.pure newValue, ..}
instance Property "Url" IdentityProviderDetailsProperty where
  type PropertyType "Url" IdentityProviderDetailsProperty = Value Prelude.Text
  set newValue IdentityProviderDetailsProperty {..}
    = IdentityProviderDetailsProperty {url = Prelude.pure newValue, ..}