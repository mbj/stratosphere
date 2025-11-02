module Stratosphere.CodeStarConnections.RepositoryLink (
        RepositoryLink(..), mkRepositoryLink
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RepositoryLink
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html>
    RepositoryLink {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html#cfn-codestarconnections-repositorylink-connectionarn>
                    connectionArn :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html#cfn-codestarconnections-repositorylink-encryptionkeyarn>
                    encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html#cfn-codestarconnections-repositorylink-ownerid>
                    ownerId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html#cfn-codestarconnections-repositorylink-repositoryname>
                    repositoryName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codestarconnections-repositorylink.html#cfn-codestarconnections-repositorylink-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryLink ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> RepositoryLink
mkRepositoryLink connectionArn ownerId repositoryName
  = RepositoryLink
      {haddock_workaround_ = (), connectionArn = connectionArn,
       ownerId = ownerId, repositoryName = repositoryName,
       encryptionKeyArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RepositoryLink where
  toResourceProperties RepositoryLink {..}
    = ResourceProperties
        {awsType = "AWS::CodeStarConnections::RepositoryLink",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConnectionArn" JSON..= connectionArn, "OwnerId" JSON..= ownerId,
                            "RepositoryName" JSON..= repositoryName]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RepositoryLink where
  toJSON RepositoryLink {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConnectionArn" JSON..= connectionArn, "OwnerId" JSON..= ownerId,
               "RepositoryName" JSON..= repositoryName]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionArn" RepositoryLink where
  type PropertyType "ConnectionArn" RepositoryLink = Value Prelude.Text
  set newValue RepositoryLink {..}
    = RepositoryLink {connectionArn = newValue, ..}
instance Property "EncryptionKeyArn" RepositoryLink where
  type PropertyType "EncryptionKeyArn" RepositoryLink = Value Prelude.Text
  set newValue RepositoryLink {..}
    = RepositoryLink {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "OwnerId" RepositoryLink where
  type PropertyType "OwnerId" RepositoryLink = Value Prelude.Text
  set newValue RepositoryLink {..}
    = RepositoryLink {ownerId = newValue, ..}
instance Property "RepositoryName" RepositoryLink where
  type PropertyType "RepositoryName" RepositoryLink = Value Prelude.Text
  set newValue RepositoryLink {..}
    = RepositoryLink {repositoryName = newValue, ..}
instance Property "Tags" RepositoryLink where
  type PropertyType "Tags" RepositoryLink = [Tag]
  set newValue RepositoryLink {..}
    = RepositoryLink {tags = Prelude.pure newValue, ..}