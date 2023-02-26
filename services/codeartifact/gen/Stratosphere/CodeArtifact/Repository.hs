module Stratosphere.CodeArtifact.Repository (
        Repository(..), mkRepository
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Repository
  = Repository {description :: (Prelude.Maybe (Value Prelude.Text)),
                domainName :: (Value Prelude.Text),
                domainOwner :: (Prelude.Maybe (Value Prelude.Text)),
                externalConnections :: (Prelude.Maybe (ValueList Prelude.Text)),
                permissionsPolicyDocument :: (Prelude.Maybe JSON.Object),
                repositoryName :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag]),
                upstreams :: (Prelude.Maybe (ValueList Prelude.Text))}
mkRepository ::
  Value Prelude.Text -> Value Prelude.Text -> Repository
mkRepository domainName repositoryName
  = Repository
      {domainName = domainName, repositoryName = repositoryName,
       description = Prelude.Nothing, domainOwner = Prelude.Nothing,
       externalConnections = Prelude.Nothing,
       permissionsPolicyDocument = Prelude.Nothing,
       tags = Prelude.Nothing, upstreams = Prelude.Nothing}
instance ToResourceProperties Repository where
  toResourceProperties Repository {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::Repository",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DomainName" JSON..= domainName,
                            "RepositoryName" JSON..= repositoryName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DomainOwner" Prelude.<$> domainOwner,
                               (JSON..=) "ExternalConnections" Prelude.<$> externalConnections,
                               (JSON..=) "PermissionsPolicyDocument"
                                 Prelude.<$> permissionsPolicyDocument,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Upstreams" Prelude.<$> upstreams]))}
instance JSON.ToJSON Repository where
  toJSON Repository {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DomainName" JSON..= domainName,
               "RepositoryName" JSON..= repositoryName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DomainOwner" Prelude.<$> domainOwner,
                  (JSON..=) "ExternalConnections" Prelude.<$> externalConnections,
                  (JSON..=) "PermissionsPolicyDocument"
                    Prelude.<$> permissionsPolicyDocument,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Upstreams" Prelude.<$> upstreams])))
instance Property "Description" Repository where
  type PropertyType "Description" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {description = Prelude.pure newValue, ..}
instance Property "DomainName" Repository where
  type PropertyType "DomainName" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {domainName = newValue, ..}
instance Property "DomainOwner" Repository where
  type PropertyType "DomainOwner" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {domainOwner = Prelude.pure newValue, ..}
instance Property "ExternalConnections" Repository where
  type PropertyType "ExternalConnections" Repository = ValueList Prelude.Text
  set newValue Repository {..}
    = Repository {externalConnections = Prelude.pure newValue, ..}
instance Property "PermissionsPolicyDocument" Repository where
  type PropertyType "PermissionsPolicyDocument" Repository = JSON.Object
  set newValue Repository {..}
    = Repository
        {permissionsPolicyDocument = Prelude.pure newValue, ..}
instance Property "RepositoryName" Repository where
  type PropertyType "RepositoryName" Repository = Value Prelude.Text
  set newValue Repository {..}
    = Repository {repositoryName = newValue, ..}
instance Property "Tags" Repository where
  type PropertyType "Tags" Repository = [Tag]
  set newValue Repository {..}
    = Repository {tags = Prelude.pure newValue, ..}
instance Property "Upstreams" Repository where
  type PropertyType "Upstreams" Repository = ValueList Prelude.Text
  set newValue Repository {..}
    = Repository {upstreams = Prelude.pure newValue, ..}