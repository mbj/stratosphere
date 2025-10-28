module Stratosphere.CodeGuruReviewer.RepositoryAssociation (
        RepositoryAssociation(..), mkRepositoryAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data RepositoryAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html>
    RepositoryAssociation {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-bucketname>
                           bucketName :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-connectionarn>
                           connectionArn :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-owner>
                           owner :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-tags>
                           tags :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codegurureviewer-repositoryassociation.html#cfn-codegurureviewer-repositoryassociation-type>
                           type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryAssociation ::
  Value Prelude.Text -> Value Prelude.Text -> RepositoryAssociation
mkRepositoryAssociation name type'
  = RepositoryAssociation
      {haddock_workaround_ = (), name = name, type' = type',
       bucketName = Prelude.Nothing, connectionArn = Prelude.Nothing,
       owner = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RepositoryAssociation where
  toResourceProperties RepositoryAssociation {..}
    = ResourceProperties
        {awsType = "AWS::CodeGuruReviewer::RepositoryAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BucketName" Prelude.<$> bucketName,
                               (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                               (JSON..=) "Owner" Prelude.<$> owner,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RepositoryAssociation where
  toJSON RepositoryAssociation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BucketName" Prelude.<$> bucketName,
                  (JSON..=) "ConnectionArn" Prelude.<$> connectionArn,
                  (JSON..=) "Owner" Prelude.<$> owner,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BucketName" RepositoryAssociation where
  type PropertyType "BucketName" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {bucketName = Prelude.pure newValue, ..}
instance Property "ConnectionArn" RepositoryAssociation where
  type PropertyType "ConnectionArn" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {connectionArn = Prelude.pure newValue, ..}
instance Property "Name" RepositoryAssociation where
  type PropertyType "Name" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {name = newValue, ..}
instance Property "Owner" RepositoryAssociation where
  type PropertyType "Owner" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {owner = Prelude.pure newValue, ..}
instance Property "Tags" RepositoryAssociation where
  type PropertyType "Tags" RepositoryAssociation = [Tag]
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {tags = Prelude.pure newValue, ..}
instance Property "Type" RepositoryAssociation where
  type PropertyType "Type" RepositoryAssociation = Value Prelude.Text
  set newValue RepositoryAssociation {..}
    = RepositoryAssociation {type' = newValue, ..}